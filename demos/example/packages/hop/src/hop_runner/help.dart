part of hop.runner;

const String _HOP_CMD_NAME = 'hop';

class _HelpArgs {
  final TaskRegistry registry;
  ArgParser parser;
  _Printer printer = print;

  _HelpArgs(this.registry);
}

typedef _Printer(dynamic value);

Task _getHelpTask(_HelpArgs helpArgs) {
  return new Task((TaskContext ctx) {
    final args = ctx.arguments;

    if (args.command != null) {
      _printHelpForTask(helpArgs.printer, helpArgs.registry, args.command.name,
          helpArgs.parser);
    } else {
      _printHelp(helpArgs.printer, helpArgs.registry, helpArgs.parser);

      if (!args.rest.isEmpty) {
        ctx.fail('Not sure how to give help for: ${args.rest}');
      }
    }
  },
  description: 'Print help information about available tasks',
  argParser: _helpParserConfig(helpArgs.registry.tasks.keys),
  extendedArgs: [new TaskArgument('task-name')]);
}

ArgParser _helpParserConfig(Iterable<String> taskNames) {
  var parser = new ArgParser();

  for (var taskName in taskNames) {
    parser.addCommand(taskName);
  }

  return parser;
}

void _printHelpForTask(_Printer printer, TaskRegistry config, String taskName, ArgParser hopArgParser) {
  final task = config.tasks[taskName];
  assert(task != null);

  final usage = task.getUsage();

  printer(_getUsage(showOptions: !usage.isEmpty, taskName: taskName,
      extendedArgsUsage: task.getExtendedArgsUsage()));
  printer('');
  if (!task.description.isEmpty) {
    printer(_indent(task.description));
    printer('');
  }

  if (!usage.isEmpty) {
    printer(_getTitle('${taskName} options'));
    printer(_indent(usage));
    printer('');
  }

  _printHopArgsHelp(printer, hopArgParser);
}

void _printHelp(_Printer printer, TaskRegistry registry, ArgParser parser) {

  printer(_getUsage());
  printer('');
  printer(_getTitle('Tasks'));
  _printTaskTable(printer, registry);

  printer('');
  _printHopArgsHelp(printer, parser);

  final helpName = registry._helpTaskName;
  if (helpName != null) {
    printer("See '$_HOP_CMD_NAME $helpName <task>' for more information on a specific command.");
  }
}

String _getUsage({bool showOptions: true, String taskName: '<task>', String extendedArgsUsage: '[--] [<task-args>]'}) {
  final optionsString = (taskName == '<task>') ? 'task' : taskName;

  final taskOptions = showOptions ? '[<$optionsString-options>] ' : '';

  return 'usage: $_HOP_CMD_NAME [<hop-options>] $taskName $taskOptions$extendedArgsUsage'.trim();
}

void _printHopArgsHelp(_Printer printer, ArgParser hopArgParser) {
  printer(_getTitle('Hop options'));
  printer(_indent(hopArgParser.getUsage()));
  printer('');
}

String _indent(String input) {
  return Util.splitLines(input)
      .map((String line) => '  ' + line)
      .map(_trimTrailingWhitespace)
      .join(('\n'));
}

// DARTBUG: https://code.google.com/p/dart/issues/detail?id=5589
String _trimTrailingWhitespace(String str) {
  return str.replaceFirst(_trailingWhitespaceRegExp, "");
}

final _trailingWhitespaceRegExp = new RegExp(r"\s+$");

ShellString _getTitle(String input) {
  assert(input != null);
  assert(input.trim() == input);
  assert(!input.endsWith(':'));
  return new ShellString.withAlt(input.toUpperCase(), AnsiColor.BOLD, '$input:');
}

void _printTaskTable(_Printer printer, TaskRegistry config) {
  config._requireFrozen();
  final columns = [
                   new ColumnDefinition('name', (name) => '  ' + name),
                   new ColumnDefinition('description', (name) {
                     final task = config.tasks[name];
                     return task.description;
                   })
                   ];
  final rows = Console.getTable(config.tasks.keys, columns);
  for (final r in rows) {
    printer('  ' + r);
  }
}
