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
  
  DateTime createdAt;
  DateTime updatedAt;
  String repoName;
  
  Hook(this.github);
  
  static Hook fromJSON(GitHub github, repoName, input) {
    var hook = new Hook(github);
    hook.events = input['events'];
    hook.url = input['config']['url'];
    hook.active = input['active'];
    hook.name = input['name'];
    hook.id = input['id'];
    hook.repoName = repoName;
    hook.updatedAt = parse_date(input['updated_at']);
    hook.createdAt = parse_date(input['created_at']);
    hook.contentType = input['config']['content_type'];
    return hook;
  }
  
  Future<bool> ping() {
    return github.request("POST", "/repos/${repoName}/hooks/${id}/pings").then((response) => response.statusCode == 204);
  }
  
  Future<bool> testPush() {
    return github.request("POST", "/repos/${repoName}/hooks/${id}/tests").then((response) => response.statusCode == 204);
  }
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