part of github.common;

class RepositorySubscription {
  final GitHub github;

  bool subscribed;
  bool ignored;
  String reason;

  @ApiName("created_at")
  DateTime createdAt;

  RepositorySubscription(this.github);

  static RepositorySubscription fromJSON(GitHub github, input) {
    if (input == null) return null;

    return new RepositorySubscription(github)
        ..subscribed = input['subscribed']
        ..ignored = input['ignored']
        ..reason = input['reason']
        ..createdAt = parseDateTime(input['created_at']);
  }
}
