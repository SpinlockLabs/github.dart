part of hop.core;

class TaskArgument {
  final String name;
  final bool required;
  final bool multiple;

  TaskArgument(this.name, {this.required: false, this.multiple: false}) {
    requireArgumentNotNull(required, 'required');
    requireArgumentNotNull(multiple, 'multiple');
    validateTaskName(name);
  }

  /// Validates that the provided [argrs] are valid.
  ///
  ///
  /// If not, throws.
  ///
  /// If yes, returns an unmodifiable clone of [args].
  static List<TaskArgument> validateArgs(Iterable<TaskArgument> args) {
    requireArgumentNotNull(args, 'args');

    var list = new UnmodifiableListView(args.toList(growable: false));

    bool finishRequired = false;

    $(list).forEachWithIndex((arg, i) {
      final argName = 'args[$i]';
      requireArgumentNotNull(arg, argName);

      if (finishRequired && arg.required) {
        throw new DetailedArgumentError(argName,
            'required arguments must all be at the beginning');
      }

      if (!arg.required) {
        finishRequired = true;
      }

      if (arg.multiple && i != (list.length - 1)) {
        throw new DetailedArgumentError(argName,
            'only the last argument can be multiple');
      }

      for (final other in list.take(i)) {
        requireArgument(arg.name != other.name, argName,
            'name ${arg.name} has already been defined');
      }
    });

    return list;
  }
}
