part of hop.core;

/// For explanations of exit codes see <http://tldp.org/LDP/abs/html/exitcodes.html>
class RunResult {

  /// Ran successfully
  ///
  /// Code 0
  static final RunResult SUCCESS = const RunResult._internal(0, 'SUCCESS');

  /// Hop was called with bad arguments.
  ///
  /// Code 64
  ///
  /// See `EX_USAGE` in <http://www.retro11.de/ouxr/211bsd/usr/include/sysexits.h.html>
  static final RunResult BAD_USAGE = const RunResult._internal(64, 'BAD USAGE');

  /// Task was was started and failed gracefully
  ///
  /// Code 80
  static final RunResult FAIL = const RunResult._internal(80, 'FAIL');

  // TODO: for V1!! Check with naming on Error/Exception -- I think they need
  // to be flipped?
  /// Task was was started, but threw an exception
  ///
  /// Code 81
  static final RunResult EXCEPTION = const RunResult._internal(81, 'EXCEPTION');

  // NOTE: this is not used...yet. Should bubble up when context is used after
  // a task has finished...see TODO on _TaskContext
  /// Task misbehaved. Returned null, used [TaskContext] incorrectly, etc.
  ///
  /// Code 82
  static final RunResult ERROR = const RunResult._internal(82, 'ERROR');

  final int exitCode;
  final String name;

  const RunResult._internal(this.exitCode, this.name);

  bool get success => exitCode == SUCCESS.exitCode;

  String toString() => 'RunResult $name ($exitCode)';
}
