part of github.common;

/// Model class for a new fork to be created.
@immutable
class CreateFork {
  final String organization;

  const CreateFork([this.organization]);

  String toJSON() {
    final map = <String, dynamic>{};
    putValue("organization", organization, map);
    return jsonEncode(map);
  }
}
