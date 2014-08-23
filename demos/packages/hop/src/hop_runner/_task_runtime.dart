part of hop.runner;

class _TaskRuntime extends TaskRuntime {
  final String name;
  final ArgResults argResults;
  final HopConfig _parent;
  final Level printAtLevel;

  bool _disposed = false;

  _TaskRuntime(this.name, this.argResults, this._parent,
      {this.printAtLevel: Level.INFO});

  bool get isDisposed => _disposed;

  void addLog(Level level, String message, {List<String> source: const []}) {
    assert(source != null);
    _requireNotDisposed();
    source = [name]..addAll(source);
    _parent.addLog(level, message, source: source);
  }

  void dispose() {
    _requireNotDisposed();
    _disposed = true;
  }

  void _requireNotDisposed() {
    if (_disposed) throw new DisposedError();
  }
}
