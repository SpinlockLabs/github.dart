// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library async.delegate.stream_consumer;

import 'dart:async';

/// Simple delegating wrapper around a [StreamConsumer].
///
/// Subclasses can override individual methods, or use this to expose only the
/// [StreamConsumer] methods of a subclass.
class DelegatingStreamConsumer<T> implements StreamConsumer<T> {
  final StreamConsumer _consumer;

  /// Create a delegating consumer forwarding calls to [consumer].
  DelegatingStreamConsumer(StreamConsumer consumer)
      : _consumer = consumer;

  Future addStream(Stream<T> stream) => _consumer.addStream(stream);

  Future close() => _consumer.close();
}
