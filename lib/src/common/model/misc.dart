part of github.common;

/// Model class for a Gitignore Template.
@immutable
class GitignoreTemplate {
  /// Template Name
  final String name;

  /// Template Source
  final String source;

  const GitignoreTemplate._({
    @required this.name,
    @required this.source,
  });

  factory GitignoreTemplate.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return GitignoreTemplate._(
      name: input['name'],
      source: input['source'],
    );
  }
}

/// Model class for GitHub Rate Limit Information.
@immutable
class RateLimit {
  /// Maximum number of requests
  final int limit;

  /// Remaining number of requests
  final int remaining;

  /// Time when the limit expires
  final DateTime resets;

  const RateLimit(this.limit, this.remaining, this.resets);

  factory RateLimit.fromHeaders(Map<String, String> headers) {
    final limit = int.parse(headers['x-ratelimit-limit']);
    final remaining = int.parse(headers['x-ratelimit-remaining']);
    final resets = DateTime.fromMillisecondsSinceEpoch(
        int.parse(headers['x-ratelimit-reset']) * 1000);
    return RateLimit(limit, remaining, resets);
  }
}

/// Model class for the GitHub api status.
@immutable
class APIStatus {
  final String status;

  @JsonKey(name: "last_updated")
  final DateTime lastUpdatedAt;

  @JsonKey(name: "created_on")
  final DateTime createdOn;

  @JsonKey(name: "body")
  final String message;

  const APIStatus._({
    @required this.createdOn,
    @required this.lastUpdatedAt,
    @required this.message,
    @required this.status,
  });

  factory APIStatus.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return APIStatus._(
      status: input['status'],
      message: input['body'],
      lastUpdatedAt: parseDateTime(input['last_updated']),
      createdOn: parseDateTime(input['created_on']),
    );
  }
}
