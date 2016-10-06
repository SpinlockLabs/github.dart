part of github.common;

/// Model class for a repository hook.
class Hook {
  /// Events to Subscribe to
  List<String> events;

  /// Content Type
  @ApiName("config/content_type")
  String contentType;

  /// If the hook is active
  bool active;

  /// Hook ID
  int id;

  /// Hook Name
  String name;

  /// The time the hook was created
  @ApiName("created_at")
  DateTime createdAt;

  /// The last time the hook was updated
  @ApiName("updated_at")
  DateTime updatedAt;

  /// The Repository Name
  String repoName;

  Map<String, dynamic> config;

  static Hook fromJSON(String repoName, Map<String, dynamic> input) {
    if (input == null) return null;

    return new Hook()
      ..events = input['events'] as List<String>
      ..active = input['active']
      ..name = input['name']
      ..id = input['id']
      ..repoName = repoName
      ..updatedAt = parseDateTime(input['updated_at'])
      ..createdAt = parseDateTime(input['created_at'])
      ..config = input['config'] as Map<String, dynamic>;
  }
}

/// Model class for a new hook to be created.
class CreateHook {
  /// Hook Name
  final String name;

  /// Hook Configuration
  final Map<String, dynamic> config;

  /// Events to Subscribe to
  final List<String> events;

  /// If the Hook should be active.
  final bool active;

  CreateHook(this.name, this.config,
      {this.events: const ["push"], this.active: true});

  String toJSON() {
    return JSON.encode(
        {"name": name, "config": config, "events": events, "active": active});
  }
}
