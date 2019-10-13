part of github.common;

/// Model class for a repository hook.
@immutable
class Hook {
  /// Events to Subscribe to
  final List<String> events;

  /// Content Type
  @JsonKey(name: "config/content_type")
  final String contentType;

  /// If the hook is active
  final bool active;

  /// Hook ID
  final int id;

  /// Hook Name
  final String name;

  /// The time the hook was created
  @JsonKey(name: "created_at")
  final DateTime createdAt;

  /// The last time the hook was updated
  @JsonKey(name: "updated_at")
  final DateTime updatedAt;

  /// The Repository Name
  final String repoName;

  final Map<String, dynamic> config;

  const Hook._({
    @required this.events,
    @required this.active,
    @required this.name,
    @required this.id,
    @required this.repoName,
    @required this.updatedAt,
    @required this.createdAt,
    @required this.config,
    @required this.contentType,
  });

  factory Hook.fromJSON(String repoName, Map<String, dynamic> input) {
    if (input == null) return null;

    return Hook._(
      contentType: null,
      events: input['events']?.cast<String>(),
      active: input['active'],
      name: input['name'],
      id: input['id'],
      repoName: repoName,
      updatedAt: parseDateTime(input['updated_at']),
      createdAt: parseDateTime(input['created_at']),
      config: input['config'] as Map<String, dynamic>,
    );
  }
}

/// Model class for a new hook to be created.
@immutable
class CreateHook {
  /// Hook Name
  final String name;

  /// Hook Configuration
  final Map<String, dynamic> config;

  /// Events to Subscribe to
  final List<String> events;

  /// If the Hook should be active.
  final bool active;

  const CreateHook(
    this.name,
    this.config, {
    this.events = const ["push"],
    this.active = true,
  });

  String toJSON() {
    return jsonEncode(
        {"name": name, "config": config, "events": events, "active": active});
  }
}
