part of github.browser;

class HttpResponse {
  final int statusCode;
  final String body;
  final Map<String, String> headers;
  
  HttpResponse(this.statusCode, this.body, this.headers);
}

class GitHub {
  final Authentication auth;
  final String endpoint;
  
  GitHub({Authentication auth, this.endpoint: "https://api.github.com"}) :
    this.auth = auth == null ? new Authentication.anonymous() : auth;
  
  Future<HttpResponse> get(String path) {
    var headers = {};
    
    if (auth.token != null) {
      headers['Authorization'] = "token ${auth.token}";
    }
    
    var request = new HttpRequest();
    
    request.open("GET", "${endpoint}${path}");
    
    var completer = new Completer();
    
    request.onReadyStateChange.listen((event) {
      if (request.readyState == HttpRequest.DONE) {
        completer.complete(new HttpResponse(request.status, request.responseText, request.responseHeaders));
      }
    });
    
    request.send();
    
    return completer.future;
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