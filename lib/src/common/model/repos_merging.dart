part of github.common;

/// Model class for a new merge to be created.
class CreateMerge {
  final String base;
  final String head;

  @JsonKey(name: "commit_message")
  String commitMessage;

  CreateMerge(this.base, this.head);

  String toJSON() {
    final map = <String, dynamic>{};
    putValue("base", base, map);
    putValue("head", head, map);
    putValue("commit_message", commitMessage, map);
    return jsonEncode(map);
  }
}
