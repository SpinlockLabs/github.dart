part of github.common;

/// Model class for an event.
@JsonSerializable(createToJson: false)
class Event {
  @JsonKey()
  Repository repository;

  @JsonKey()
  Actor actor;

  @JsonKey()
  Organization org;

  @JsonKey(name: "created_at")
  DateTime createdAt;

  @JsonKey()
  String id;

  @JsonKey()
  String type;

  @JsonKey(ignore: true)
  Map<String, dynamic> json;

  @JsonKey()
  Map<String, dynamic> payload;

  Event();

  static Event fromJson(Map<String, dynamic> input) {
    return _$EventFromJson(input)..json = input;
  }
}

@JsonSerializable()
class Actor {
  int id;
  String login;
  @JsonKey(name: 'display_login')
  String displayLogin;
  String url;
  @JsonKey(name: 'avatar_url')
  String avatarUrl;
  Actor();
  factory Actor.fromJson(Map<String, dynamic> input) {
    return _$ActorFromJson(input);
  }
}

/// Model class for a repository subscription.
class RepositorySubscription {
  bool subscribed;
  bool ignored;
  String reason;

  @JsonKey(name: "created_at")
  DateTime createdAt;

  RepositorySubscription();

  static RepositorySubscription fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return RepositorySubscription()
      ..subscribed = input['subscribed']
      ..ignored = input['ignored']
      ..reason = input['reason']
      ..createdAt = parseDateTime(input['created_at']);
  }
}
