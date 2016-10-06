part of github.test.helper;

GitHub createMockGitHub() {
  return new GitHub(client: httpClient);
}

/// A [Mock] class that keeps track of named arguments for method calls.
/// (The normal [Mock] unfortunately only tracks positional parameters.)
///
/// TODO: Remove this when [Issue 21133](https://code.google.com/p/dart/issues/detail?id=21133)
/// is resolved.
class MockWithNamedArgs extends Mock {
  /// The named arguments of the last method invocation.
  Map<Symbol, dynamic> _lastNamedArgs;

  MockWithNamedArgs() {
    // Replace the default log with our own enhanced log.
    log = new LogEntryListNamedArgs(() => _lastNamedArgs);
  }

  @override
  dynamic noSuchMethod(Invocation invocation) {
    _lastNamedArgs = invocation.namedArguments;
    return super.noSuchMethod(invocation);
  }
}

/// A [LogEntry] that keeps track of named arguments for method calls.
class LogEntryNamedArgs extends LogEntry {
  /// The named arguments.
  final Map<Symbol, dynamic> namedArgs;

  LogEntryNamedArgs(LogEntry logEntry, this.namedArgs)
      : super(logEntry.mockName, logEntry.methodName, logEntry.args,
            logEntry.action);
}

/// A [LogEntryList] that keeps track of named arguments for method calls.
/// All [add]ed [LogEntry]s of this List will be of type [LogEntryNamedArgs].
class LogEntryListNamedArgs extends LogEntryList {
  final Function getLastNamedArgs;

  LogEntryListNamedArgs(this.getLastNamedArgs);

  @override
  add(LogEntry entry) {
    logs.add(new LogEntryNamedArgs(entry, getLastNamedArgs()));
  }
}
