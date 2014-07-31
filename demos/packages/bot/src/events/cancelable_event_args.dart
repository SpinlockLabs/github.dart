part of bot.events;

/// **DEPRECATED**
///
/// This model was never generalized enough to expose it in a low-level library.
@deprecated
class CancelableEventArgs extends EventArgs {
  bool _canceled = false;

  bool get isCanceled => _canceled;

  void cancel() {
    _canceled = true;
  }
}
