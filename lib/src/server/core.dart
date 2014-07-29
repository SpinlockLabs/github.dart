part of github.client;

class GitHub {
  final Authentication auth;
  final String endpoint;
  
  GitHub({Authentication auth, this.endpoint: "https://api.github.com"}) :
    this.auth = auth == null ? new Authentication.anonymous() : auth;
  
  Future<http.Response> get(String path) {
    var headers = {};
    
    if (auth.token != null) {
      headers['Authorization'] = "token ${auth.token}";
    }
    
    return http.get("${endpoint}${path}", headers: headers);
  }
  
  Future<dynamic> fetchJSON(String path, Type objType) {
    return get(path).then((response) {
      if (response.statusCode != 200) {
        return null;
      }
      
      var content = response.body;
      
      return jsonx.decode(content, type: objType);
    });
  }
  
  Future<User> user(String name) {
    return fetchJSON("/users/${name}", User);
  }
  
  Future<List<User>> users(List<String> names) {
    var group = new FutureGroup<User>();
    names.forEach((name) {
      group.add(user(name));
    });
    return group.future;
  }
}