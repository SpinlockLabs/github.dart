part of github.common;

/// Model class for a new merge to be created.
@immutable
class CreateMerge {
  final String base;
  final String head;

  @JsonKey(name: "commit_message")
  final String commitMessage;

  const CreateMerge({
    @required this.base,
    @required this.head,
    @required this.commitMessage,
  });

  String toJSON() {
    final map = <String, dynamic>{};
    putValue("base", base, map);
    putValue("head", head, map);
    putValue("commit_message", commitMessage, map);
    return jsonEncode(map);
  }
}
