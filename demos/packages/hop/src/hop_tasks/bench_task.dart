library hop_tasks.bench;

import 'dart:async';
import 'dart:io' hide Console;

import 'package:args/args.dart';
import 'package:bot/bot.dart';
import 'package:hop/hop_core.dart';
import 'package:hop/src/hop_tasks/process.dart';
import 'package:hop/src/stats.dart';

// TODO: options for handling failed processes?
// TODO: move some of the stat-related code to NumebrEnumerable?
// TODO: print out all of the summary values
// TODO: tests?

const _DEFAULT_RUN_COUNT = 20;
const _COMMAND_ARG = 'command';
const String _RUN_COUNT_ARE_NAME = 'run-count';

/// Creates a benchmarking task.
///
/// This task will run a command a number of times (the default is 20) and
/// print statistics about the execution time of the command.
///
/// If the Hop task "bench" is this task, running:
///     dart tool/hop_runner.dart bench ls
///
/// Will print:
///     bench: Min       0:00:00.002491
///            Max       0:00:00.010142
///            Media     0:00:00.002720
///            Mean      0:00:00.003241
///            StdDev    0:00:00.001687
///            StdDev%   52.05938%
///            StdErr    0:00:00.000377
///            StdErr%   11.64083%
Task createBenchTask() => new Task((TaskContext ctx) {
  var parseResult = ctx.arguments;

  var count = int.parse(parseResult[_RUN_COUNT_ARE_NAME],
      onError: (s) => _DEFAULT_RUN_COUNT);

  List<String> commandParams = ctx.extendedArgs[_COMMAND_ARG];

  String processName = commandParams.first;
  var args = commandParams.sublist(1);

  return _runMany(ctx, count, processName, args).then((list) {
    var values = list.map((brr) => brr.executionDurationMilliseconds);
    var stats = new Stats(values);
    print(stats.toString());
  });
},
    argParser: _benchParserConfig(),
    description: 'Run a benchmark against the provided task',
    extendedArgs: [
  new TaskArgument('command', required: true, multiple: true)
]);

ArgParser _benchParserConfig() => new ArgParser()
  ..addOption(_RUN_COUNT_ARE_NAME,
      abbr: 'r',
      defaultsTo: _DEFAULT_RUN_COUNT.toString(),
      help: 'Specify the number times the specified command should be run');

Future<List<_BenchRunResult>> _runMany(
    TaskContext ctx, int count, String processName, List<String> args) {
  assert(count > 1);
  var countStrLength = count.toString().length;

  var range = new Iterable.generate(count, (i) => i);
  var results = new List<_BenchRunResult>();

  return Future.forEach(range, (i) {
    return _runOnce(i + 1, processName, args).then((result) {
      var paddedNumber =
          Util.padLeft(result.runNumber.toString(), countStrLength);
      ctx.fine("Test $paddedNumber of $count - ${result.executionDuration}");
      results.add(result);
    });
  }).then((_) {
    return results;
  });
}

Future<_BenchRunResult> _runOnce(
    int runNumber, String processName, List<String> args) {
  var watch = new Stopwatch()..start();

  int postStartMicros;

  return Process.start(processName, args).then((process) {
    postStartMicros = watch.elapsedMicroseconds;
    return pipeProcess(process);
  }).then((int exitCode) {
    return new _BenchRunResult(
        runNumber, exitCode == 0, postStartMicros, watch.elapsedMicroseconds);
  });
}

class _BenchRunResult {
  final int runNumber;
  final int postStartMicroseconds;
  final int postEndMicroseconds;
  final bool completed;

  _BenchRunResult(this.runNumber, this.completed, this.postStartMicroseconds,
      this.postEndMicroseconds);

  int get executionDurationMilliseconds =>
      postEndMicroseconds - postStartMicroseconds;

  Duration get executionDuration =>
      new Duration(microseconds: executionDurationMilliseconds);

  @override
  String toString() => '''
$runNumber
$executionDurationMilliseconds
$completed''';
}
