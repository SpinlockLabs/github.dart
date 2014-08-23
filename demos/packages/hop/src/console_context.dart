library hop.console_context;

import 'dart:io' as io;
import 'package:args/args.dart';
import 'package:completion/completion.dart';
import 'package:logging/logging.dart';
import 'package:hop/hop_core.dart';
import 'package:hop/src/shared.dart';
import 'hop_runner.dart';

// TODO: deprecate this class, expose a top-level method

class ConsoleContext extends TaskRuntime {
  final ArgResults argResults;

  ConsoleContext._(this.argResults);

  @override
  void addLog(Level logLevel, String message, {List<String> source}) {
    if (logLevel >= Level.FINE) {
      print(message);
    }
  }

  Level get printAtLevel => null;

  bool get isDisposed => false;

  static void runTaskAsProcess(List<String> mainArgs, Task task) {
    assert(task != null);

    var parser = task.argParser;

    ArgResults args;
    try {
      args = tryArgsCompletion(mainArgs, parser);
    } on FormatException catch (ex, stack) {
      print('There was a problem parsing the provided arguments.');
      print(ex.message);
      print(parser.getUsage());
      io.exit(RunResult.BAD_USAGE.exitCode);
    }
    final ctx = new ConsoleContext._(args);

    Runner.runTask(ctx, task)
      .then((RunResult rr) {
        io.exit(rr.exitCode);
      });
  }
}
