/// **DEPRECATED**
///
/// This model was never generalized enough to expose it in a low-level library.
@deprecated
library bot.disposable;

import 'annotations.dart';

/// **DEPRECATED**
///
/// This model was never generalized enough to expose it in a low-level library.
@deprecated
abstract class Disposable {
  void dispose();
  bool get isDisposed;
}

/// **DEPRECATED**
///
/// This model was never generalized enough to expose it in a low-level library.
@deprecated
class DisposedError extends StateError {
  DisposedError(): super('Invalid operation on disposed object');
}

/// **DEPRECATED**
///
/// This model was never generalized enough to expose it in a low-level library.
@deprecated
class DisposableImpl implements Disposable {
  bool _disposed = false;

  void dispose() {
    validateNotDisposed();
    // Set disposed_ to true first, in case during the chain of disposal this
    // gets disposed recursively.
    this._disposed = true;
    this.disposeInternal();
  }

  void validateNotDisposed() {
    if (_disposed) {
      throw new DisposedError();
    }
  }

  bool get isDisposed => _disposed;

  @protected
  /**
   * Do not call this method directly. Call [dispose] instead.
   * Subclasses should override this method to implement [Disposable] behavior.
   */
  void disposeInternal() {}
}
