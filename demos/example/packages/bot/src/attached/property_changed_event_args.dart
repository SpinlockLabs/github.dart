part of bot.attached;

class PropertyChangedEventArgs<T> extends EventArgs {
  final Property property;
  final T newValue;
  final bool cleared;

  PropertyChangedEventArgs(this.property, this.newValue)
      : cleared = false;

  PropertyChangedEventArgs.valueCleared(this.property)
      : cleared = true,
        newValue = null;
}
