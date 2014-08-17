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
    return new Organization(github)
        ..login = input['login']
        ..id = input['id']
        ..url = input['html_url']
        ..avatarUrl = input['avatar_url']
        ..name = input['name']
        ..company = input['company']
        ..createdAt = parse_date(input['created_at'])
        ..updatedAt = parse_date(input['updated_at'])
        ..publicGistsCount = input['public_gists']
        ..publicReposCount = input['public_repos']
        ..followersCount = input['followers']
        ..followingCount = input['following']
        ..email = input['email']
        ..blog = input['blog']
        ..location = input['location']
        ..json = input;
  }

  Future<List<Team>> get teams => github.teams(login);

  Future<TeamRepository> createRepository(CreateRepositoryRequest request) {
    return github.postJSON("/orgs/${login}/repos", body: request.toJSON(), convert: TeamRepository.fromJSON);
  }

  Future<List<Issue>> get issues => github.getJSON("/orgs/${login}/issues").then((json) {
    return copyOf(json.map((it) => Issue.fromJSON(github, it)));
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
    return new Team(github)
        ..name = input['name']
        ..id = input['id']
        ..membersCount = input['members_count']
        ..reposCount = input['repos_count']
        ..organization = Organization.fromJSON(github, input['organization'])
        ..json = input;
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
    return new TeamRepository(github)
        ..name = input['name']
        ..id = input['id']
        ..fullName = input['full_name']
        ..fork = input['fork']
        ..url = input['html_url']
        ..description = input['description']
        ..cloneUrls = new CloneUrls()
        ..cloneUrls.git = input['git_url']
        ..cloneUrls.ssh = input['ssh_url']
        ..cloneUrls.https = input['clone_url']
        ..cloneUrls.svn = input['svn_url']
        ..homepage = input['homepage']
        ..size = input['size']
        ..stargazersCount = input['stargazers_count']
        ..watchersCount = input['watchers_count']
        ..language = input['language']
        ..hasIssues = input['has_issues']
        ..hasDownloads = input['has_downloads']
        ..hasWiki = input['has_wiki']
        ..defaultBranch = input['default_branch']
        ..openIssuesCount = input['open_issues_count']
        ..networkCount = input['network_count']
        ..subscribersCount = input['subscribers_count']
        ..forksCount = input['forks_count']
        ..createdAt = parse_date(input['created_at'])
        ..pushedAt = parse_date(input['pushed_at'])
        ..json = input
        ..owner = RepositoryOwner.fromJSON(input['owner'])
        ..private = input['private']
        ..permissions = TeamRepositoryPermissions.fromJSON(github, input['permissions']);
  }
}

class TeamRepositoryPermissions {
  final GitHub github;

  bool admin;
  bool push;
  bool pull;

  TeamRepositoryPermissions(this.github);

  static TeamRepositoryPermissions fromJSON(GitHub github, input) {
    return new TeamRepositoryPermissions(github)
        ..admin = input['admin']
        ..push = input['push']
        ..pull = input['pull'];
  }
}
