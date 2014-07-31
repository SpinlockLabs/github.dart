part of github.client;

class Organization {
  GitHub github;
  String login;
  int id;
  
  @ApiName("html_url")
  String url;
  
  @ApiName("avatar_url")
  String avatarUrl;
  
  String name;
  String company;
  String blog;
  String location;
  String email;
  
  @ApiName("public_repos")
  int publicReposCount;
  
  @ApiName("public_gists")
  int publicGistsCount;
  
  @ApiName("followers")
  int followersCount;
  
  @ApiName("following")
  int followingCount;
  
  @ApiName("created_at")
  DateTime createdAt;
  
  @ApiName("updated_at")
  DateTime updatedAt;
  
  Map<String, dynamic> json;
  
  Organization(this.github);
  
  static Organization fromJSON(GitHub github, input) {
    var org = new Organization(github);
    org.login = input['login'];
    org.id = input['id'];
    org.url = input['html_url'];
    org.avatarUrl = input['avatar_url'];
    org.name = input['name'];
    org.company = input['company'];
    org.createdAt = parse_date(input['created_at']);
    org.updatedAt = parse_date(input['updated_at']);
    org.publicGistsCount = input['public_gists'];
    org.publicReposCount = input['public_repos'];
    org.followersCount = input['followers'];
    org.followingCount = input['following'];
    org.email = input['email'];
    org.blog = input['blog'];
    org.location = input['location'];
    org.json = input;
    return org;
  }
  
  Future<List<Team>> get teams => github.teams(login);
  
  Future<TeamRepository> createRepository(CreateRepositoryRequest request) {
    return github.postJSON("/orgs/${login}/repos", body: request.toJSON(), convert: TeamRepository.fromJSON);
  }
  
  Future<List<Issue>> get issues => github.getJSON("/orgs/${login}/issues").then((json) {
    return json.map((it) => Issue.fromJSON(github, it));
  });
}

class Team {
  final GitHub github;
  
  String name;
  int id;
  String permission;
  
  @ApiName("members_count")
  int membersCount;
  
  @ApiName("repos_count")
  int reposCount;
  
  Organization organization;
  
  Team(this.github);
  
  Map<String, dynamic> json;
  
  static Team fromJSON(GitHub github, input) {
    var team = new Team(github);
    
    team.name = input['name'];
    team.id = input['id'];
    team.membersCount = input['members_count'];
    team.reposCount = input['repos_count'];
    team.organization = Organization.fromJSON(github, input['organization']);
    team.json = input;
    return team;
  }
  
  Future<List<TeamMember>> get members => github.teamMembers(id);
}

class TeamMember {
  final GitHub github;
  
  String login;
  int id;
  
  @ApiName("avatar_url")
  String avatarUrl;
  
  String type;
  
  @ApiName("site_admin")
  bool siteAdmin;
  
  @ApiName("html_url")
  String url;
  
  Map<String, dynamic> json;
  
  TeamMember(this.github);
  
  static TeamMember fromJSON(GitHub github, input) {
    var member = new TeamMember(github);
    member.login = input['login'];
    member.id = input['id'];
    member.avatarUrl = input['avatar_url'];
    member.type = input['type'];
    member.siteAdmin = input['site_admin'];
    member.url = input['html_url'];
    return member;
  }
  
  Future<User> asUser() => github.user(login);
}

class TeamRepository extends Repository {
  TeamRepositoryPermissions permissions;
  
  TeamRepository(GitHub github) : super(github);
  
  static TeamRepository fromJSON(GitHub github, input) {
    var repo = new TeamRepository(github);
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
    repo.createdAt = parse_date(input['created_at']);
    repo.pushedAt = parse_date(input['pushed_at']);
    repo.json = input;
    repo.owner = RepositoryOwner.fromJSON(input['owner']);
    repo.private = input['private'];
    repo.permissions = TeamRepositoryPermissions.fromJSON(github, input['permissions']);
    return repo;
  }
}

class TeamRepositoryPermissions {
  final GitHub github;
  
  bool admin;
  bool push;
  bool pull;
  
  TeamRepositoryPermissions(this.github);
  
  static TeamRepositoryPermissions fromJSON(GitHub github, input) {
    var perms = new TeamRepositoryPermissions(github);
    perms.admin = input['admin'];
    perms.push = input['push'];
    perms.pull = input['pull'];
    return perms;
  }
}