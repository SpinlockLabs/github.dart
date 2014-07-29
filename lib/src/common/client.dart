part of github.common;

class GitHub {
  final Authentication auth;
  final String endpoint;
  final Fetcher fetcher;

  GitHub(this.fetcher, {Authentication auth, this.endpoint: "https://api.github.com"}) : this.auth = auth == null ? new Authentication.anonymous() : auth {
    fetcher.github = this;
    _init();
  }
  
  Future<User> user(String name) {
    return fetcher.fetchJSON("/users/${name}", User);
  }

  Future<List<User>> users(List<String> names) {
    var group = new FutureGroup<User>();
    names.forEach((name) {
      group.add(user(name));
    });
    return group.future;
  }
  
  Future<Repository> repository(String owner, String name) {
    return fetcher.fetchJSON("/repos/${owner}/${name}", Repository);
  }
  
  void _init() {
    void register(Type type, jsonx.ConvertFunction func) {
      jsonx.jsonToObjects[type] = func; 
    }
    
    register(Repository, Repository.fromJSON);
    register(RepositoryOwner, RepositoryOwner.fromJSON);
  }
}
