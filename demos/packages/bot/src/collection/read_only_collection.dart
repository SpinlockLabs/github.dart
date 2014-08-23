part of bot.collection;

/// **DEPRECATED**
///
/// This model was never generalized enough to expose it in a low-level library.
@deprecated
class ReadOnlyCollection<T> extends Sequence<T> {
  final List<T> _items;

  /**
   * Wraps [source]. Changes to [source] will be reflected.
   **/
  ReadOnlyCollection.wrap(List<T> source)
      : _items = source;

  const ReadOnlyCollection.empty()
      : _items = const [];

  /**
   * Copies all of the elements from [source] into a new collection.
   * Add or removing items in source will not change the contents of the
   * new collection.
   *
   * _Note: this is not a **deep** copy._
   **/
  ReadOnlyCollection(Iterable<T> source)
      : _items = new List<T>.from(source, growable: false);

  /**
   * Returns the number of elements in this collection.
   */
  @override
  int get length => _items.length;

  /**
   * Returns the element at the given [index] in the list or throws
   * an [RangeError] if [index] is out of bounds.
   */
  @override
  T operator [](int index) => _items[index];
}
