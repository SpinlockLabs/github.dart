/// The main Hop library.
///
/// Should be imported into a 'tool/hop_runner.dart' file.
library hop;

import 'dart:async';
import 'dart:io' as io;

import 'package:bot/bot.dart';
import 'package:logging/logging.dart';
import 'package:path/path.dart' as path;

import 'hop_core.dart';
export 'hop_core.dart';

import 'src/hop_runner.dart';

final _sharedConfig = new TaskRegistry();

/// Runs Hop infrastructure after all tasks have been registered.
///
/// [runHop] calls [io.exit] which terminates the application.
///
/// If [paranoid] is `true`, [runHop] will verify the running script is
/// `tool/hop_runner.dart` relative to the working directory. If not, an
/// error is thrown.
///
/// [helpTaskName] defines the name of the help task. If [helpTaskName]
/// conflicts with an already defined task, an error is thrown. Setting this
/// to `null` will disable help.
void runHop(List<String> args, {
    bool paranoid: true,
    String helpTaskName: 'help',
    Level printAtLogLevel: Level.INFO
  }) {
  if (paranoid) {
    _paranoidHopCheck();
  }
  Runner.runShell(args, _sharedConfig, helpTaskName, printAtLogLevel)
    .then((RunResult rr) {
      io.exit(rr.exitCode);
    });
}

/// Adds a [Task] to Hop.
///
/// [name] specifies the [String] used to identify the task.
///
/// [task] can be either an instance of [Task] or a [Function].
///
/// If [task] is a [Function], it must take one argument: [TaskContext]. If a
/// [Future] is returned from the [task] function, the runner will wait for the
/// [Future] to complete.
///
/// If [description] is provided and [task] is a [Task], then [task] will be
/// cloned and [description] will override the default description.
Task addTask(String name, dynamic task, {String description,
  List<String> dependencies}) =>
      _sharedConfig.addTask(name, task, description: description,
          dependencies: dependencies);

/// Creates a [Task] which runs multiple tasks.
///
/// [name] specifies the [String] used to identify the task.
///
/// [existingTaskNames] is an [Iterable] specifying the existing tasks to be run
/// when this task is run.
///
/// [description] provides information when help is displayed for the task.
Task addChainedTask(String name, Iterable<String> existingTaskNames, {
  String description}) => _sharedConfig.addChainedTask(name, existingTaskNames,
      description: description);

void _paranoidHopCheck() {
  var currentDir = path.current;

  var expectedPubspecFile = path.join(currentDir, 'pubspec.yaml');

  require(io.FileSystemEntity.isFileSync(expectedPubspecFile),
      'pubspec.yaml is not in the working directory "$currentDir". '
      'Hop expects to run from a project root directory. '
      'When running from the Editor, change the working directory in '
      'Run -> Manage Launches.'
      );

  var runningScript = io.Platform.script.toFilePath();

  final expectedPath = path.join(currentDir, 'tool', 'hop_runner.dart');

  require(runningScript == expectedPath, 'Running script should be at '
      '"$expectedPath", but it was at "$runningScript"');
}
