part of bot.math;

@deprecated
class Box<T extends num> extends math.Rectangle<T> {

  const Box(T left, T top, T width, T height): super(left, top, width, height);

  factory Box.fromCoordSize(Coordinate topLeft, Size size) {
    return new Box(topLeft.x, topLeft.y, size.width, size.height);
  }

  Coordinate get topLeft => new Coordinate(left, top);

  Size get size => new Size(width, height);

  bool get isValid => topLeft.isValid && size.isValid;

  // TODO: test!!
  Coordinate constrain(Coordinate value) {
    requireArgumentNotNull(value, 'value');
    requireArgument(value.isValid, 'value');
    assert(isValid);

    final x = math.min(right, math.max(left, value.x));
    final y = math.min(bottom, math.max(top, value.y));

    return new Coordinate(x, y);
  }

  List<Coordinate> getCorners() {
    return [
      new Coordinate(left, top),
      new Coordinate(left + width, top),
      new Coordinate(left + width, top + height),
      new Coordinate(left, top + height)
    ];
  }
}
