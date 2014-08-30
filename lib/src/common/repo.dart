part of github.common;

/**
 * The Repository Model
 */
class Repository extends GitHubObject with GitHubUrlProvider implements ProvidesJSON<Map<String, dynamic>> {
  final GitHub github;

  /**
   * Repository Name
   */
  String name;
  
  /**
   * Repository ID
   */
  int id;

  /**
   * Full Repository Name
   */
  @ApiName("full_name")
  String fullName;
  
  /**
   * Repository Owner
   */
  RepositoryOwner owner;
  
  /**
   * If the Repository is Private
   */
  bool private;
  
  /**
   * If the Repository is a fork
   */
  @ApiName("fork")
  bool isFork;
  
  /**
   * Url to the GitHub Repository Page
   */
  @ApiName("html_url")
  String url;
  
  /**
   * Repository Description
   */
  String description;
  
  /**
   * Repository Clone Urls
   */
  @ApiName("clone_urls")
  CloneUrls cloneUrls;
  
  /**
   * Url to the Repository Homepage
   */
  String homepage;
  
  /**
   * Repository Size
   */
  int size;

  /**
   * Repository Stars
   */
  @ApiName("stargazers_count")
  int stargazersCount;

  /**
   * Repository Watchers
   */
  @ApiName("watchers_count")
  int watchersCount;

  /**
   * Repository Language
   */
  String language;

  /**
   * If the Repository has Issues Enabled
   */
  @ApiName("has_issues")
  bool hasIssues;

  /**
   * If the Repository has the Wiki Enabled
   */
  @ApiName("has_wiki")
  bool hasWiki;

  /**
   * If the Repository has any Downloads
   */
  @ApiName("has_downloads")
  bool hasDownloads;

  /**
   * Number of Forks
   */
  @ApiName("forks_count")
  int forksCount;

  /**
   * Number of Open Issues
   */
  @ApiName("open_issues_count")
  int openIssuesCount;

  /**
   * Repository Default Branch
   */
  String defaultBranch;

  /**
   * Number of Subscribers
   */
  @ApiName("subscribers_count")
  int subscribersCount;

  /**
   * Number of users in the network
   */
  @ApiName("network_count")
  int networkCount;

  /**
   * The time the repository was created at
   */
  @ApiName("created_at")
  DateTime createdAt;

  /**
   * The last time the repository was pushed at
   */
  @ApiName("pushed_at")
  DateTime pushedAt;

  Map<String, dynamic> json;

  Repository(this.github);

  static Repository fromJSON(GitHub github, input, [Repository instance]) {
    if (input == null) return null;
    if (instance == null) instance = new Repository(github);
    return instance
        ..name = input['name']
        ..id = input['id']
        ..fullName = input['full_name']
        ..isFork = input['fork']
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
        ..createdAt = parseDateTime(input['created_at'])
        ..pushedAt = parseDateTime(input['pushed_at'])
        ..private = input['private']
        ..json = input
        ..owner = RepositoryOwner.fromJSON(input['owner']);
  }

  /**
   * Gets the Repository Slug (Full Name)
   */
  RepositorySlug slug() => new RepositorySlug(owner.login, name);

  /**
   * Gets the Repository Issues
   * 
   * [limit] is the number of issues to get
   */
  Stream<Issue> issues() => github.issues(slug());

  /**
   * Gets the Repository Commits
   */
  Stream<Commit> commits() => github.commits(slug());

  /**
   * Gets Repository Contributor Statistics
   */
  Future<List<ContributorStatistics>> contributorStatistics({int limit: 30}) {
    var completer = new Completer<List<ContributorStatistics>>();
    var path = "/repos/${fullName}/stats/contributors";
    var handle;
    handle = (GitHub gh, json) {
      if (json is Map) {
        new Future.delayed(new Duration(milliseconds: 200), () {
          github.getJSON(path, statusCode: 200, convert: handle, params: {
            "per_page": limit
          });
        });
        return null;
      } else {
        completer.complete(json.map((it) => ContributorStatistics.fromJSON(github, it)));
      }
    };
    github.getJSON(path, convert: handle, params: {
      "per_page": limit
    });
    return completer.future;
  }

  /**
   * Gets the Repository Forks
   */
  Stream<Repository> forks() => github.forks(slug());

  /**
   * Gets the Repository Pull Requests
   */
  Stream<PullRequestInformation> pullRequests({String state: "open"}) {
    return new PaginationHelper(github).objects("GET", "/repos/${fullName}/pulls", PullRequestInformation.fromJSON, params: {"state": state});
  }

  /**
   * Gets the GitHub Pages Information for this Repository
   */
  Future<RepositoryPages> pages() {
    return github.getJSON("/repos/${fullName}/pages", statusCode: 200, convert: RepositoryPages.fromJSON);
  }
  
  Stream<User> collaborators() {
    return new PaginationHelper(github).objects("GET", "/repos/${fullName}/collaborators", User.fromJSON);
  }

  /**
   * Gets the Repository Hooks
   */
  Stream<Hook> hooks({int limit: 30}) {
    return new PaginationHelper(github).objects("GET", "/repos/${fullName}/hooks", (gh, input) => Hook.fromJSON(gh, fullName, input));
  }
  
  Future<Repository> fork([CreateFork request]) {
    if (request == null) request = new CreateFork();
    return github.postJSON("/repos/${fullName}/forks", body: request.toJSON(), convert: Repository.fromJSON);
  }

  /**
   * Gets the Repository Releases
   */
  Stream<Release> releases() => github.releases(slug());

  /**
   * Gets a Repository Release by [id].
   */
  Future<Release> release(int id) => github.release(slug(), id);

  /**
   * Gets a hook by [id].
   */
  Future<Hook> hook(int id) =>
    github.getJSON("/repos/${fullName}/hooks/${id}", convert: (g, i) => Hook.fromJSON(g, fullName, i));

  /**
   * Creates a Repository Hook based on the [request].
   */
  Future<Hook> createHook(CreateHookRequest request) {
    return github.postJSON("/repos/${fullName}/hooks", convert: (g, i) => Hook.fromJSON(g, fullName, i), body: request.toJSON());
  }

  /**
   * Creates a Release based on the [request].
   */
  Future<Hook> createRelease(CreateReleaseRequest request) {
    return github.postJSON("/repos/${fullName}/releases", convert: Release.fromJSON, body: request.toJSON());
  }

  /**
   * Creates a Pull Request based on the given [request].
   */
  Future<PullRequestInformation> createPullRequest(CreateReleaseRequest request) {
    return github.postJSON("/repos/${fullName}/pulls", convert: PullRequestInformation.fromJSON, body: request.toJSON());
  }
  
  Future<Commit> merge(CreateMerge request) {
    return github.postJSON("/repos/${fullName}/merges", body: request.toJSON(), convert: Commit.fromJSON, statusCode: 201);
  }
}

/**
 * Repository Clone Urls
 */
class CloneUrls {
  /**
   * Git Protocol
   * 
   * git://github.com/user/repo.git
   */
  String git;
  
  /**
   * SSH Protocol
   * 
   * git@github.com:user/repo.git
   */
  String ssh;
  
  /**
   * HTTPS Protocol
   * 
   * https://github.com/user/repo.git
   */
  String https;
  
  /**
   * Subversion Protocol
   * 
   * https://github.com/user/repo
   */
  String svn;
}

/**
 * Repository Owner Information
 */
class RepositoryOwner {
  /**
   * Owner Username
   */
  String login;
  
  /**
   * Owner ID
   */
  int id;

  /**
   * Avatar Url
   */
  @ApiName("avatar_url")
  String avatarUrl;

  /**
   * Url to the user's GitHub Profile
   */
  @ApiName("html_url")
  String url;

  static RepositoryOwner fromJSON(input) {
    if (input == null) return null;
    var owner = new RepositoryOwner();
    owner
        ..login = input['login']
        ..id = input['id']
        ..avatarUrl = input['avatar_url']
        ..url = input['html_url'];
    return owner;
  }
}

/**
 * A Repository Slug
 */
class RepositorySlug {
  /**
   * Repository Owner
   */
  final String owner;
  
  /**
   * Repository Name
   */
  final String name;

  RepositorySlug(this.owner, this.name);

  /**
   * The Full Name of the Repository
   * 
   * Example: owner/name
   */
  String get fullName => "${owner}/${name}";

  bool operator ==(Object obj) => obj is RepositorySlug && obj.fullName == fullName;
}

/**
 * A Request to make a new repository.
 */
class CreateRepositoryRequest {
  /**
   * Repository Name
   */
  final String name;
  
  /**
   * Repository Description
   */
  String description;
  
  /**
   * Repository Homepage
   */
  String homepage;
  
  /**
   * If the repository should be private or not.
   */
  bool private = false;

  /**
   * If the repository should have issues enabled.
   */
  @ApiName("has_issues")
  bool hasIssues = true;

  /**
   * If the repository should have the wiki enabled.
   */
  @ApiName("has_wiki")
  bool hasWiki = true;

  /**
   * If the repository should have downloads enabled.
   */
  @ApiName("has_downloads")
  bool hasDownloads = true;

  /**
   * The Team ID (Only for Creating a Repository for an Organization)
   */
  @OnlyWhen("Creating a repository for an organization")
  @ApiName("team_id")
  int teamID;

  /**
   * If GitHub should auto initialize the repository.
   */
  @ApiName("auto_init")
  bool autoInit = false;

  /**
   * .gitignore template (only when [autoInit] is true)
   */
  @OnlyWhen("autoInit is true")
  String gitignoreTemplate;

  /**
   * License template (only when [autoInit] is true)
   */
  @OnlyWhen("autoInit is true")
  String licenseTemplate;

  CreateRepositoryRequest(this.name);

  String toJSON() {
    return JSON.encode({
      "name": name,
      "description": description,
      "homepage": homepage,
      "private": private,
      "has_issues": hasIssues,
      "has_wiki": hasWiki,
      "has_downloads": hasDownloads,
      "team_id": teamID,
      "auto_init": autoInit,
      "gitignore_template": gitignoreTemplate,
      "license_template": licenseTemplate
    });
  }
}

/**
 * A Breakdown of the Languages a repository uses
 */
class LanguageBreakdown {
  final Map<String, int> _data;
  
  LanguageBreakdown(Map<String, int> data) : _data = data;
  
  /**
   * The Primary Language
   */
  String get primary {
    var list = mapToList(_data);
    list.sort((a, b) {
      return a.value.compareTo(b.value);
    });
    return list.first.key;
  }
  
  /**
   * Names of Languages Used
   */
  List<String> get names => _data.keys.toList()..sort();
  
  /**
   * Actual Information
   * 
   * This is a Map of the Language Name to the Number of Bytes of that language in the repository.
   */
  Map<String, int> get info => _data;
  
  /**
   * Creates a list of lists with a tuple of the language name and the bytes.
   */
  List<List<dynamic>> toList() {
    var out = [];
    for (var key in info.keys) {
      out.add([key, info[key]]);
    }
    return out;
  }
  
  @override
  String toString() {
    var buffer = new StringBuffer();
    _data.forEach((key, value) {
      buffer.writeln("${key}: ${value}");
    });
    return buffer.toString();
  }
}

class CreateFork {
  final String organization;
  
  CreateFork([this.organization]);
  
  String toJSON() {
    var map = {};
    putValue("organization", organization, map);
    return JSON.encode(map);
  }
}

class CreateMerge {
  final String base;
  final String head;
  
  @ApiName("commit_message")
  String commitMessage;
  
  CreateMerge(this.base, this.head);
  
  String toJSON() {
    var map = {};
    putValue("base", base, map);
    putValue("head", head, map);
    putValue("commit_message", commitMessage, map);
    return JSON.encode(map);
  }
}