// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library async.delegate.stream_subscription;

import 'dart:async';

/// Simple delegating wrapper around a [StreamSubscription].
///
/// Subclasses can override individual methods.
class DelegatingStreamSubscription<T> implements StreamSubscription<T> {
  final StreamSubscription _source;

  /// Create delegating subscription forwarding calls to [sourceSubscription].
  DelegatingStreamSubscription(StreamSubscription sourceSubscription)
      : _source = sourceSubscription;

  void onData(void handleData(T data)) {
    _source.onData(handleData);
  }

  void onError(Function handleError) {
    _source.onError(handleError);
  }

  void onDone(void handleDone()) {
    _source.onDone(handleDone);
  }

  void pause([Future resumeFuture]) {
    _source.pause(resumeFuture);
  }

  void resume() {
    _source.resume();
  }

  Future cancel() => _source.cancel();

  Future asFuture([futureValue]) => _source.asFuture(futureValue);

  bool get isPaused => _source.isPaused;
}
