library hop.shared;

import 'package:args/args.dart';
import 'package:bot/bot.dart';
import 'package:completion/completion.dart' as completion;
import 'package:logging/logging.dart';

const _RESERVED_TASKS = const [completion.COMPLETION_COMMAND_NAME];
final RegExp _validNameRegExp = new RegExp(r'^[a-z]([a-z0-9_\-]*[a-z0-9])?$');

class TaskFailError extends Error {
  final String message;

  TaskFailError(this.message);

  String toString() => "TaskFailError: $message";
}

class TaskUsageException implements Exception {
  final String message;
  final Object sourceError;
  final StackTrace sourceStack;

  TaskUsageException(this.message, [Object this.sourceError,
                                    StackTrace this.sourceStack]) {
    assert(message != null);
  }

  String toString() => 'TaskUsageException: $message';
}

abstract class TaskRuntime {
  void addLog(Level level, String message, {List<String> source});
  bool get isDisposed;
  ArgResults get argResults;

  /// If `null`, calls to [print] will not be logged and will be behave
  /// normally.
  Level get printAtLevel;
}

void validateTaskName(String name) {
  requireArgumentNotNullOrEmpty(name, 'name');
  requireArgumentContainsPattern(_validNameRegExp, name, 'name');
  requireArgument(!_RESERVED_TASKS.contains(name), 'task',
      'The provided task has a reserved name');
}

// TODO: move this to bot?
int lastIndexWhere(Iterable source, bool predicate(dynamic element)) {

  var foundIndex = -1;
  var currentIndex = 0;
  for (var e in source) {
    if (predicate(e)) {
      foundIndex = currentIndex;
    }
    currentIndex++;
  }
  return foundIndex;
}

class DisposedError extends StateError {
  DisposedError(): super('Invalid operation on disposed object');
}
