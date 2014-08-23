part of github.client;

/**
 * A Repository Hook
 */
class Hook {
  final GitHub github;
  
  /**
   * Events to Subscribe to
   */
  List<String> events;
  
  /**
   * Url for the Hook
   */
  @ApiName("config/url")
  String url;
  
  /**
   * Content Type
   */
  @ApiName("config/content_type")
  String contentType;
  
  /**
   * If the hook is active
   */
  bool active;
  
  /**
   * Hook ID
   */
  int id;
  
  /**
   * Hook Name
   */
  String name;
  
  /**
   * The time the hook was created
   */
  @ApiName("created_at")
  DateTime createdAt;
  
  /**
   * The last time the hook was updated
   */
  @ApiName("updated_at")
  DateTime updatedAt;
  
  /**
   * The Repository Name
   */
  String repoName;
  
  Hook(this.github);
  
  static Hook fromJSON(GitHub github, repoName, input) {
    return new Hook(github)
      ..events = input['events']
      ..url = input['config']['url']
      ..active = input['active']
      ..name = input['name']
      ..id = input['id']
      ..repoName = repoName
      ..updatedAt = parseDateTime(input['updated_at'])
      ..createdAt = parseDateTime(input['created_at'])
      ..contentType = input['config']['content_type'];
  }
  
  /**
   * Pings the Hook
   */
  Future<bool> ping() =>
      github.request("POST", "/repos/${repoName}/hooks/${id}/pings").then((response) => response.statusCode == 204);
  
  /**
   * Tests a Push
   */
  Future<bool> testPush() =>
      github.request("POST", "/repos/${repoName}/hooks/${id}/tests").then((response) => response.statusCode == 204);
}

/**
 * Creates a Hook
 */
class CreateHookRequest {
  /**
   * Hook Name
   */
  final String name;
  
  /**
   * Hook Configuration
   */
  final Map<String, dynamic> config;
  
  /**
   * Events to Subscribe to
   */
  final List<String> events;
  
  /**
   * If the Hook should be active.
   */
  final bool active;
  
  CreateHookRequest(this.name, this.config, {this.events: const ["push"], this.active: true});
  
  String toJSON() {
    return JSON.encode({
      "name": name,
      "config": config,
      "events": events,
      "active": active
    });
  }
}