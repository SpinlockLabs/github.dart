part of bot.attached;

class AttachedEvent<T> extends Attachable {

  AttachedEvent(String name)
      : super(name);

  async.Stream getStream(AttachableObject obj) {
    return obj._getStream(this);
  }

  bool hasSubscribers(AttachableObject obj) {
    return obj._hasSubscribers(this);
  }

  void fireEvent(AttachableObject obj, T args) => obj._fireEvent(this, args);
}
