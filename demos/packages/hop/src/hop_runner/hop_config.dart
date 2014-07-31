part of hop.runner;

abstract class _ContextLogger {
  /// [value] must be either [String] or [ShellString].
  void contextPrint(dynamic value);

  void hopEventListen(HopEvent event);
}

class HopConfig implements _ContextLogger {
  static final _childNameChainExpando =
      new Expando<List<String>>('child names');

  final TaskRegistry taskRegistry;
  final ArgParser parser;
  final ArgResults argResults;
  final _ContextLogger _printer;
  final StreamController<HopEvent> _eventController =
      new StreamController<HopEvent>.broadcast(sync: true);

  /// This constructor exists for testing Hop.
  ///
  /// If you're using it in another context, you might be doing something wrong.
  ///
  /// [printer] needs to handle values of type [String] and [ShellString], other
  /// values should cause an [ArgumentError];
  factory HopConfig(TaskRegistry registry, List<String> args) {

    requireArgumentNotNull(registry, 'registry');
    requireArgumentNotNull(args, 'args');

    registry._freeze();

    final parser = _getParser(registry, Level.INFO);
    final argResults = parser.parse(args);

    return new HopConfig._internal(registry, parser, argResults);
  }

  HopConfig._internal(this.taskRegistry, this.parser, ArgResults args,
      [this._printer]) :
    this.argResults = args {
    taskRegistry._freeze();
    assert(args != null);
    assert(parser != null);
  }

  Stream<HopEvent> get onEvent => _eventController.stream;

  void contextPrint(dynamic value) {
    if (_printer != null) _printer.contextPrint(value);

    if (_eventController.hasListener) {
      String val = (value is ShellString) ? value.format(false) : value;
      _eventController.add(new HopEvent.print(val));
    }
  }

  void hopEventListen(HopEvent event) {
    if (_printer != null) _printer.hopEventListen(event);

    if (_eventController.hasListener) _eventController.add(event);
  }

  void addLog(Level logLevel, String message, {List<String> source}) {
    hopEventListen(new HopEvent(logLevel, message, source: source));
  }
}
