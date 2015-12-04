// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library async.delegate.sink;

/// Simple delegating wrapper around a [Sink].
///
/// Subclasses can override individual methods, or use this to expose only the
/// [Sink] methods of a subclass.
class DelegatingSink<T> implements Sink<T> {
  final Sink _sink;

  /// Create a delegating sink forwarding calls to [sink].
  DelegatingSink(Sink sink)
      : _sink = sink;

  void add(T data) {
    _sink.add(data);
  }

  void close() {
    _sink.close();
  }
}
