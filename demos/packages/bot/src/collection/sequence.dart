part of bot.collection;

// TODO: look into new List mixin. Might have to give up this fight. :-/

/// **DEPRECATED**
///
/// This model was never generalized enough to expose it in a low-level library.
@deprecated
abstract class Sequence<E> extends Enumerable<E> {
  const Sequence();

  E operator [](int index);

  int indexOf(E value, [int start = 0]) {
    for (int i = start; i < length; i++) {
      if (this[i] == value) return i;
    }
    return -1;
  }

  int lastIndexOf(E value, [int start]) {
    if (start == null) start = length - 1;
    for (int i = start; i >= 0; i--) {
      if (this[i] == value) return i;
    }
    return -1;
  }

  @override
  E elementAt(int index) => this[index];

  @override
  Iterator<E> get iterator => new _SequenceIterator(this);

  // TODO: ponder making the type Iterable and be smarter about length, etc.
  bool itemsEqual(Sequence other) {
    requireArgumentNotNull(other, 'other');
    if (other.length != this.length) {
      return false;
    }
    for (int i = 0; i < length; i++) {
      if (other[i] != this[i]) {
        return false;
      }
    }
    return true;
  }

  /**
   * Returns an object wraps [this] and implements [List].
   *
   * All mutation operations on the returned object throw [UnsupportedError].
   *
   * Does __not__ return a copy of the current values. Changes to [this] will
   * be reflected in the returned object.
   */
  List<E> asList() => new _SequenceList(this);
}

class _SequenceList<E> extends Sequence<E> with ListMixin<E>
  implements List<E> {

  final Sequence _source;

  _SequenceList(this._source);

  @override
  E operator [](int index) => _source[index];

  @override
  int get length => _source.length;

  @override
  List<E> sublist(int start, [int end]) {
    if (end == null) end = this.length;
    if (start < 0 || start > this.length) {
      throw new RangeError.range(start, 0, this.length);
    }
    if (end < start || end > this.length) {
      throw new RangeError.range(end, start, this.length);
    }
    int newLength = end - start;
    List<E> result = new List<E>(newLength);
    for (int i = 0; i < newLength; i++) {
      result[i] = this[start + i];
    }
    return result;
  }
  @override
  void operator []=(int index, E value) {
    throw new UnsupportedError("Cannot modify an unmodifiable list");
  }

  @override
  void set length(int newLength) {
    throw new
        UnsupportedError("Cannot change the length of an unmodifiable list");
  }

}

@deprecated
class _SequenceIterator<E> implements Iterator<E> {
  final Sequence<E> _list;
  final int _length;
  int _position;
  E _current;

  _SequenceIterator(Sequence<E> list)
      : _list = list, _position = -1, _length = list.length;

  bool moveNext() {
    if (_list.length != _length) {
      throw new ConcurrentModificationError(_list);
    }
    int nextPosition = _position + 1;
    if (nextPosition < _length) {
      _position = nextPosition;
      _current = _list[nextPosition];
      return true;
    }
    _current = null;
    return false;
  }

  E get current => _current;
}

