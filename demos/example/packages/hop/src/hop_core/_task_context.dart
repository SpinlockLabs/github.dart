part of hop.core;

// TODO: test dispose case - should bubble up an RunResult.ERROR
class _TaskContext extends _LoggerChild with TaskLogger implements TaskContext {
  final ArgResults arguments;
  final Map<String, dynamic> extendedArgs;

  _TaskContext(TaskRuntime parent, this.arguments, this.extendedArgs) :
    super(parent, const []) {
    assert(arguments != null);
    assert(extendedArgs != null);
  }

  /// Terminates the current [Task] with a failure, explained by [message].
  void fail(String message) {
    throw new TaskFailError(message);
  }
}

class _LoggerChild extends TaskLogger {
  final TaskRuntime _parent;
  final List<String> _name;

  bool _disposed = false;

  _LoggerChild(this._parent, this._name) {
    assert(_name != null);
    assert(_parent != null);
  }

  bool get isDisposed => _parent.isDisposed || _disposed;

  @override
  void dispose() {
    _requireNotDisposed();
    _disposed = true;
  }

  void log(Level level, String message) {
    _requireNotDisposed();
    _parent.addLog(level, message, source: _name);
  }

  @override
  TaskLogger getSubLogger(String name) {
    _requireNotDisposed();
    return new _LoggerChild(this._parent, _namePlusOne(_name, name));
  }

  /// Throws [DisposedError] if the instance has already been disposed.
  void _requireNotDisposed() {
    if (isDisposed) {
      throw new DisposedError();
    }
  }
}

List<String> _namePlusOne(List<String> source, String oneMore) =>
    $(source).concat([oneMore]).toList(growable: false);
