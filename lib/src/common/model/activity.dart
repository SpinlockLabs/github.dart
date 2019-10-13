part of github.common;

/// Model class for an event.
@immutable
class Event {
  final Repository repo;

  final User actor;

  final Organization org;

  @JsonKey(name: "created_at")
  final DateTime createdAt;

  final String id;

  final String type;

  final Map<String, dynamic> json;

  final Map<String, dynamic> payload;

  const Event._({
    @required this.actor,
    @required this.createdAt,
    @required this.id,
    @required this.json,
    @required this.org,
    @required this.payload,
    @required this.repo,
    @required this.type,
  });

  factory Event.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return Event._(
      json: input,
      type: input['type'],
      repo: Repository.fromJSON(input['repo'] as Map<String, dynamic>),
      org: Organization.fromJSON(input['org'] as Map<String, dynamic>),
      createdAt: parseDateTime(input['created_at']),
      id: input['id'],
      actor: User.fromJson(input['actor'] as Map<String, dynamic>),
      payload: input['payload'] as Map<String, dynamic>,
    );
  }
}

/// Model class for a repository subscription.
@immutable
class RepositorySubscription {
  final bool subscribed;
  final bool ignored;
  final String reason;

  @JsonKey(name: "created_at")
  final DateTime createdAt;

  @deprecated
  const RepositorySubscription()
      : subscribed = null,
        createdAt = null,
        ignored = null,
        reason = null;

  const RepositorySubscription._({
    @required this.createdAt,
    @required this.ignored,
    @required this.reason,
    @required this.subscribed,
  });

  factory RepositorySubscription.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return RepositorySubscription._(
      subscribed: input['subscribed'],
      ignored: input['ignored'],
      reason: input['reason'],
      createdAt: parseDateTime(input['created_at']),
    );
  }
}
