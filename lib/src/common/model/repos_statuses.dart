part of github.common;

/// Model class for the combined status of a repository.
class CombinedRepositoryStatus {
  String state;
  String sha;
  int totalCount;
  List<RepositoryStatus> statuses;
  Repository repository;

  CombinedRepositoryStatus();

  static CombinedRepositoryStatus fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new CombinedRepositoryStatus()
      ..state = input["state"]
      ..sha = input["sha"]
      ..totalCount = input["total_count"]
      ..statuses = (input["statuses"] as List<Map<String, dynamic>>)
          .map((it) => RepositoryStatus.fromJSON(it))
          .toList()
      ..repository =
          Repository.fromJSON(input["repository"] as Map<String, dynamic>);
  }
}

/// Model class for the status of a repository at a particular reference.
class RepositoryStatus {
  DateTime createdAt;
  DateTime updatedAt;
  String state;
  String targetUrl;
  String description;
  String context;

  static RepositoryStatus fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new RepositoryStatus()
      ..createdAt = parseDateTime(input['created_at'])
      ..updatedAt = parseDateTime(input['updated_at'])
      ..state = input['state']
      ..targetUrl = input['target_url']
      ..description = input['description']
      ..context = input['context'];
  }
}

/// Model class for a new repository status to be created.
class CreateStatus {
  final String state;

  @ApiName("target_url")
  String targetUrl;

  String description;
  String context;

  CreateStatus(this.state);

  String toJSON() {
    var map = <String, dynamic>{};
    putValue("state", state, map);
    putValue("target_url", targetUrl, map);
    putValue("description", description, map);
    putValue("context", context, map);
    return JSON.encode(map);
  }
}
