library hop_tasks.process;

import 'dart:async';
import 'dart:io';
import 'package:bot/bot.dart';
import 'package:hop/hop_core.dart';

/// Creates a task which runs the specified [command] in the shell.
///
/// [command] is the shell command that this task runs. A command that works
/// with one shell may not work with another shell.
///
/// [args] is a list of arguments to pass to [command].
///
/// [description] is the description of the task. This is displayed next to the
/// task's name in the help.
Task createProcessTask(String command, {List<String> args: null, String description}) {
  return new Task((ctx) => startProcess(ctx, command, args), description: description);
}

// TODO: document that start does an 'interactive' process
//       stderr and stdout are piped to context, etc
//       This aligns with io.Process.start
Future startProcess(TaskLogger logger, String command,
    [List<String> args = null]) {

  requireArgumentNotNull(logger, 'ctx');
  requireArgumentNotNull(command, 'command');
  if (args == null) {
    args = [];
  }

  logger.fine("Starting process:");
  logger.fine("$command ${args.join(' ')}");
  return Process.start(command, args)
      .then((process) {
        return pipeProcess(process,
            stdOutWriter: logger.info,
            stdErrWriter: logger.severe);
      })
      .then((int exitCode) {
        if(exitCode != 0) {
          throw new ProcessException(command, args, '', exitCode);
        }
      });
}

Future<int> pipeProcess(Process process, {Action1<String>
    stdOutWriter, Action1<String> stdErrWriter}) {

  var futures = [process.exitCode];

  futures.add(process.stdout.forEach((data) => _stdListen(data, stdOutWriter)));

  futures.add(process.stderr.forEach((data) => _stdListen(data, stdErrWriter)));

  return Future.wait(futures).then((List values) {
    assert(values.length == futures.length);
    assert(values[0] != null);
    return values[0] as int;
  });
}

void _stdListen(List<int> data, void writer(String input)) {
  if (writer != null) {
    final str = SYSTEM_ENCODING.decode(data).trim();
    writer(str);
  }
}
