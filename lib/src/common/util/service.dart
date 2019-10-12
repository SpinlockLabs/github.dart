part of github.common;

/// Superclass for all services.
abstract class Service {
  final GitHub _github;

  const Service(this._github);
}
