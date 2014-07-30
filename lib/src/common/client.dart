part of github.common;

class GitHub {
  final Authentication auth;
  final String endpoint;
  final Fetcher fetcher;

  GitHub(this.fetcher, {Authentication auth, this.endpoint: "https://api.github.com"}) : this.auth = auth == null ? new Authentication.anonymous() : auth {
    fetcher.github = this;
  }
  
  Future<User> user(String name) {
    return fetcher.fetchJSON("/users/${name}", User.fromJSON);
  }

  Future<List<User>> users(List<String> names) {
    var group = new FutureGroup<User>();
    names.forEach((name) {
      group.add(user(name));
    });
    return group.future;
  }
  
  Future<Repository> repository(String owner, String name) {
    return fetcher.fetchJSON("/repos/${owner}/${name}", Repository.fromJSON);
  }
  
  Future<List<Repository>> repositories(List<RepositorySlug> slugs) {
    var group = new FutureGroup<Repository>();
    slugs.forEach((repo) {
      group.add(repository(repo.owner, repo.name));
    });
    return group.future;
  }
  
  Future<List<Repository>> userRepositories(String user) {
    return fetcher.fetchJSON("/users/${user}/repos?per_page=5000").then((List json) {
      return new List.from(json.map((it) => Repository.fromJSON(it)));
    });
  }
}
