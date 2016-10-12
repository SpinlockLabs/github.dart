part of github.common;

/// Model class for an event.
class Event {
  Repository repo;

  User actor;

  Organization org;

  @ApiName("created_at")
  DateTime createdAt;

  String id;

  String type;

  Map<String, dynamic> json;

  Map<String, dynamic> payload;

  static Event fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    var event = new Event();

    event.json = input;

    event.type = input['type'];

    event
      ..repo = Repository.fromJSON(input['repo'] as Map<String, dynamic>)
      ..org = Organization.fromJSON(input['org'] as Map<String, dynamic>)
      ..createdAt = parseDateTime(input['created_at'])
      ..id = input['id']
      ..actor = User.fromJSON(input['actor'] as Map<String, dynamic>)
      ..payload = input['payload'] as Map<String, dynamic>;

    return event;
  }
}

/// Model class for a repository subscription.
class RepositorySubscription {
  bool subscribed;
  bool ignored;
  String reason;

  @ApiName("created_at")
  DateTime createdAt;

  RepositorySubscription();

  static RepositorySubscription fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new RepositorySubscription()
      ..subscribed = input['subscribed']
      ..ignored = input['ignored']
      ..reason = input['reason']
      ..createdAt = parseDateTime(input['created_at']);
  }
}
