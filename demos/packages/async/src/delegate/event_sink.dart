// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library async.delegate.event_sink;

import 'dart:async';

/// Simple delegating wrapper around an [EventSink].
///
/// Subclasses can override individual methods, or use this to expose only the
/// [EventSink] methods of a subclass.
class DelegatingEventSink<T> implements EventSink<T> {
  final EventSink _sink;

  /// Create a delegating sink forwarding calls to [sink].
  DelegatingEventSink(EventSink sink) : _sink = sink;

  void add(T data) {
    _sink.add(data);
  }

  void addError(error, [StackTrace stackTrace]) {
    _sink.addError(error, stackTrace);
  }

  void close() {
    _sink.close();
  }
}
