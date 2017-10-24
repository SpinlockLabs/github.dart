part of github.common;

/// Model class for a new fork to be created.
class CreateFork {
  final String organization;

  CreateFork([this.organization]);

  String toJSON() {
    var map = <String, dynamic>{};
    putValue("organization", organization, map);
    return JSON.encode(map);
  }
}
