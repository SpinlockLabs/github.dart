part of github.client;

class Hook {
  final GitHub github;
  
  List<String> events;
  
  @ApiName("config/url")
  String url;
  
  @ApiName("config/content_type")
  String contentType;
  
  bool active;
  int id;
  String name;
  
  @ApiName("created_at")
  DateTime createdAt;
  
  @ApiName("updated_at")
  DateTime updatedAt;
  
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
      ..updatedAt = parse_date(input['updated_at'])
      ..createdAt = parse_date(input['created_at'])
      ..contentType = input['config']['content_type'];
  }
  
  Future<bool> ping() =>
      github.request("POST", "/repos/${repoName}/hooks/${id}/pings").then((response) => response.statusCode == 204);
  
  Future<bool> testPush() =>
      github.request("POST", "/repos/${repoName}/hooks/${id}/tests").then((response) => response.statusCode == 204);
}

class CreateHookRequest {
  final String name;
  final Map<String, dynamic> config;
  final List<String> events;
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