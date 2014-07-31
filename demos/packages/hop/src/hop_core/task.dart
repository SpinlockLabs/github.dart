part of hop.core;

typedef dynamic _TaskDefinition(TaskContext ctx);

class _TaskWithParser extends Task {
  final ArgParser argParser;

  _TaskWithParser(dynamic taskDefinition(TaskContext ctx), String description,
    List<TaskArgument> extendedArgs, this.argParser) :
      super._impl(taskDefinition, description, extendedArgs);

  Task clone({String description}) {
    if (description == null) description = this.description;

    return new Task(_exec, description: description, argParser: argParser,
        extendedArgs: _extendedArgs);
  }
}

abstract class Task {
  final String description;
  final _TaskDefinition _exec;
  final List<TaskArgument> _extendedArgs;

  ArgParser get argParser;

  factory Task(dynamic taskDefinition(TaskContext ctx), {String description,
    List<TaskArgument> extendedArgs, ArgParser argParser}) {

    return new _TaskWithParser(taskDefinition, description, extendedArgs,
        argParser);
  }

  Task._impl(dynamic taskDefinition(TaskContext ctx), String description,
    List<TaskArgument> extendedArgs) :
      this._exec = taskDefinition,
      this.description = (description == null) ? '' : description,
      this._extendedArgs = (extendedArgs == null) ? const [] :
        TaskArgument.validateArgs(extendedArgs) {
    requireArgumentNotNull(_exec, '_exec');
  }

  String getUsage() {
    return argParser.getUsage();
  }

  String getExtendedArgsUsage() =>
    _extendedArgs.map((TaskArgument arg) {
      var value = '<${arg.name}>';
      if(arg.multiple) {
        value = value + '...';
      }
      if(!arg.required) {
        value = '[$value]';
      }
      return value;
    }).join(' ');

  Future run(TaskRuntime runtime) {
    requireArgumentNotNull(runtime, 'runtime');

    Map<String, dynamic> extendedArgs;
    try {
      extendedArgs = this.parseExtendedArgs(runtime.argResults.rest);
    } on FormatException catch (obj, stack) {
      var usage = new TaskUsageException(obj.message, obj, stack);
      return new Future.error(usage, stack);
    }
    var context = new _TaskContext(runtime, runtime.argResults, extendedArgs);

    return new Future.sync(() {
      return runZoned(() => _exec(context),
          zoneSpecification: _getZoneSpec(runtime));
    });
  }

  /// Returns a clone of this [Task].
  ///
  /// Specify [description] to override the current description of the task.
  Task clone({String description});

  /// Returned map is in argument order.
  ///
  /// Returned map is unmodifiable.
  Map<String, dynamic> parseExtendedArgs(List<String> argResultsRest) {
    requireArgumentNotNull(argResultsRest, 'argResultRest');
    requireArgument(argResultsRest.every((e) => e != null), 'argResultRest',
        'Every item must be non-null.');

    var actual = argResultsRest.length;

    if(_extendedArgs.isNotEmpty) {
      if (!_extendedArgs.last.multiple &&
        argResultsRest.length > _extendedArgs.length) {
        var expected = _extendedArgs.length;
        throw new FormatException(
            'Expected $expected argument(s); received $actual');
      } else {
        var lastRequiredIndex = lastIndexWhere(_extendedArgs, (arg) =>
            arg.required);
        if (argResultsRest.length <= lastRequiredIndex) {
          var expected = lastRequiredIndex + 1;
          throw new FormatException(
              'Expected $expected argument(s); received $actual');
        }
      }
    }

    // Note: explicitly using LinkedHashMap so output key order corresponds
    //       with extended arg order
    var map = new LinkedHashMap<String, dynamic>();

    for (var i = 0; i < _extendedArgs.length; i++) {
      var arg = _extendedArgs[i];

      var result = null;


      if (arg.multiple) {
        assert(i == _extendedArgs.length - 1); // better be the last arg
        result = argResultsRest.skip(i).toList(growable: false);
      } else {
        if (i >= argResultsRest.length) {
          assert(!arg.required); // should have already been covered above
          result = null;
        } else {
          result = argResultsRest[i];
        }
      }
      map[arg.name] = result;
    }

    return new UnmodifiableMapView(map);
  }

  @override
  String toString() => "Task: $description";
}

ZoneSpecification _getZoneSpec(TaskRuntime runtime) {
  if (runtime.printAtLevel == null) return null;

  return new ZoneSpecification(print: (a, b, c, String line) {
    runtime.addLog(runtime.printAtLevel, line);
  });
}
