part of github.common;

class Repository {
  final GitHub github;
    
  String name;
  int id;
  String fullName;
  RepositoryOwner owner;
  bool private;
  bool fork;
  String url;
  String description;
  CloneUrls cloneUrls;
  String homepage;
  int size;
  int stargazersCount;
  int watchersCount;
  String language;
  bool hasIssues;
  bool hasWiki;
  bool hasDownloads;
  int forksCount;
  int openIssuesCount;
  String defaultBranch;
  int subscribersCount;
  int networkCount;
  DateTime createdAt;
  DateTime pushedAt;
  Map<String, dynamic> json;
  
  Repository(this.github);
  
  static Repository fromJSON(GitHub github, input) {
    var repo = new Repository(github);
    repo.name = input['name'];
    repo.id = input['id'];
    repo.fullName = input['full_name'];
    repo.fork = input['fork'];
    repo.url = input['html_url'];
    repo.description = input['description'];
    repo.cloneUrls = new CloneUrls();
    repo.cloneUrls.git = input['git_url'];
    repo.cloneUrls.ssh = input['ssh_url'];
    repo.cloneUrls.https = input['clone_url'];
    repo.cloneUrls.svn = input['svn_url'];
    repo.homepage = input['homepage'];
    repo.size = input['size'];
    repo.stargazersCount = input['stargazers_count'];
    repo.watchersCount = input['watchers_count'];
    repo.language = input['language'];
    repo.hasIssues = input['has_issues'];
    repo.hasDownloads = input['has_downloads'];
    repo.hasWiki = input['has_wiki'];
    repo.defaultBranch = input['default_branch'];
    repo.openIssuesCount = input['open_issues_count'];
    repo.networkCount = input['network_count'];
    repo.subscribersCount = input['subscribers_count'];
    repo.forksCount = input['forks_count'];
    var createdAt = input['created_at'];
    var pushedAt = input['pushed_at'];
    repo.createdAt = createdAt != null ? DateTime.parse(createdAt) : null;
    repo.pushedAt = pushedAt != null ? DateTime.parse(pushedAt) : null;
    repo.json = input;
    repo.owner = RepositoryOwner.fromJSON(input['owner']);
    return repo;
  }
}

class CloneUrls {
  String git;
  String ssh;
  String https;
  String svn;
}

class RepositoryOwner {
  String login;
  int id;
  String avatar_url;
  String url;

  static RepositoryOwner fromJSON(input) {
    var owner = new RepositoryOwner();
    owner
        ..login = input['login']
        ..id = input['id']
        ..avatar_url = input['avatar_url']
        ..url = input['html_url'];
    return owner;
  }
}

class RepositorySlug {
  final String owner;
  final String name;
  
  RepositorySlug(this.owner, this.name);
}
