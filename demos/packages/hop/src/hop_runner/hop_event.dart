part of hop.runner;

class HopEvent {
  final Level level;
  final String message;
  final List<String> logger;

  bool get isPrint => logger.isEmpty;

  const HopEvent.print(this.message)
      : this.level = Level.INFO,
        this.logger = const [];

  HopEvent(this.level, this.message, {List<String> source}) :
    this.logger = source == null ?
        const [] : new UnmodifiableListView(source.toList(growable: false)) {
    requireArgumentNotNull(message, 'message');
    assert(!logger.isEmpty);
    assert(logger.every((s) => s != null && !s.isEmpty));
  }

  String toString() => isPrint ?
      message : '$level\t${logger.join(':')}\t$message';

  bool operator==(Object other) => other is HopEvent &&
      level == other.level && message == other.message &&
      const ListEquality<String>().equals(logger, other.logger);

  // NOTE: intentionally omitted 'logger' -> too much cost, keep it simple
  int get hashCode => Util.getHashCode([level, message]);
}
