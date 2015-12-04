// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library async.delegate.stream_sink;

import 'dart:async';

/// Simple delegating wrapper around a [StreamSink].
///
/// Subclasses can override individual methods, or use this to expose only the
/// [StreamSink] methods of a subclass.
class DelegatingStreamSink<T> implements StreamSink<T> {
  final StreamSink _sink;

  Future get done => _sink.done;

  /// Create delegating sink forwarding calls to [sink].
  DelegatingStreamSink(StreamSink sink)
      : _sink = sink;

  void add(T data) {
    _sink.add(data);
  }

  void addError(error, [StackTrace stackTrace]) {
    _sink.addError(error, stackTrace);
  }

  Future addStream(Stream<T> stream) => _sink.addStream(stream);

  Future close() => _sink.close();
}
