part of bot.attached;

class Property<T> extends Attachable {
  static const Object Undefined = const _UndefinedValue();

  final T defaultValue;

  Property(String name, [T this.defaultValue = null])
      : super(name);

  T get(AttachableObject obj, [Func1<AttachableObject, T> ifAbsent = null]) {
    var coreValue = getCore(obj, ifAbsent);
    if (!identical(coreValue, Undefined)) {
      return coreValue;
    } else {
      return defaultValue;
    }
  }

  Object getCore(AttachableObject obj, [Func1<AttachableObject, T> ifAbsent = null]) {
    return obj._getValueOrUndefined(this, obj, ifAbsent);
  }

  void set(AttachableObject obj, T value) {
    assert(!identical(value, Undefined));
    obj._set(this, value);
  }

  void clear(AttachableObject obj) => obj._remove(this);

  bool isSet(AttachableObject obj) => obj._isSet(this);

  async.Stream getStream(AttachableObject obj) {
    return obj._getStream(this);
  }

  String toString() => "Property '$name'";
}

class _UndefinedValue {
  const _UndefinedValue();
  // TODO: toString?
}
