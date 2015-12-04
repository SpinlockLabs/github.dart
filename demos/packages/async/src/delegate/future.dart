// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library async.delegate.future;

import 'dart:async';

/// A wrapper that forwards calls to a [Future].
class DelegatingFuture<T> implements Future<T> {
  /// The wrapped [Future].
  final Future _future;

  DelegatingFuture(this._future);

  Stream<T> asStream() => _future.asStream();

  Future catchError(Function onError, {bool test(error)}) =>
    _future.catchError(onError, test: test);

  Future then(onValue(T value), {Function onError}) =>
    _future.then(onValue, onError: onError);

  Future<T> whenComplete(action()) => _future.whenComplete(action);

  Future timeout(Duration timeLimit, {void onTimeout()}) =>
    _future.timeout(timeLimit, onTimeout: onTimeout);
}
