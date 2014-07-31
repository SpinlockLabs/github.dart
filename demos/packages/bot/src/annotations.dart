/// **DEPRECATED**
///
/// This model was never generalized enough to expose it in a low-level library.
@deprecated
library bot.protected;

/**
 * **DEPRECATED**
 *
 * This model was never generalized enough to expose it in a low-level library.
 *
 * An annotation used to mark a field, getter, setter, or method, as one that
 * should only be accessed by subclasses.
 * DARTBUG http://code.google.com/p/dart/issues/detail?id=6119
 */
const protected = const _Protected();

class _Protected {
  const _Protected();
}
