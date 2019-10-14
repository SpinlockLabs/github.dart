part of github.common;

/// Model class for the combined status of a repository.
@immutable
class CombinedRepositoryStatus {
  final String state;
  final String sha;
  final int totalCount;
  final List<RepositoryStatus> statuses;
  final Repository repository;

  const CombinedRepositoryStatus._({
    @required this.state,
    @required this.sha,
    @required this.totalCount,
    @required this.statuses,
    @required this.repository,
  });

  factory CombinedRepositoryStatus.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return CombinedRepositoryStatus._(
      state: input["state"],
      sha: input["sha"],
      totalCount: input["total_count"],
      statuses: (input["statuses"] as List<Map<String, dynamic>>)
          .map((it) => RepositoryStatus.fromJSON(it))
          .toList(),
      repository:
          Repository.fromJSON(input["repository"] as Map<String, dynamic>),
    );
  }
}

/// Model class for the status of a repository at a particular reference.
@immutable
class RepositoryStatus {
  final DateTime createdAt;
  final DateTime updatedAt;
  final String state;
  final String targetUrl;
  final String description;
  final String context;

  const RepositoryStatus._({
    @required this.createdAt,
    @required this.updatedAt,
    @required this.state,
    @required this.targetUrl,
    @required this.description,
    @required this.context,
  });

  factory RepositoryStatus.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return RepositoryStatus._(
      createdAt: parseDateTime(input['created_at']),
      updatedAt: parseDateTime(input['updated_at']),
      state: input['state'],
      targetUrl: input['target_url'],
      description: input['description'],
      context: input['context'],
    );
  }
}

/// Model class for a new repository status to be created.
class CreateStatus {
  final String state;

  @JsonKey(name: "target_url")
  String targetUrl;

  String description;
  String context;

  CreateStatus({
    @required this.state,
    @required this.description,
    @required this.context,
    @required this.targetUrl,
  });

  @deprecated
  CreateStatus(this.state);

  String toJSON() {
    final map = <String, dynamic>{};
    putValue("state", state, map);
    putValue("target_url", targetUrl, map);
    putValue("description", description, map);
    putValue("context", context, map);
    return jsonEncode(map);
  }
}
