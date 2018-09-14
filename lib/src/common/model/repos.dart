part of github.common;

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class GitHubComparison {
  final String url;
  final String status;
  final int aheadBy;
  final int behindBy;
  final int totalCommits;

  GitHubComparison(
      this.url, this.status, this.aheadBy, this.behindBy, this.totalCommits);

  factory GitHubComparison.fromJson(Map<String, dynamic> json) =>
      _$GitHubComparisonFromJson(json);

  String toString() {
    switch (status) {
      case 'identical':
        return "GitHubComparison: identical";
      case 'behind':
        return "GitHubComparison: behind ($behindBy)";
      case 'diverged':
        return "GitHubComparison: diverged";
      case 'ahead':
        return "GitHubComparison: ahead ($aheadBy)";
      default:
        return "Huh??? - $status";
    }
  }
}

/// Model class for a repository.
class Repository {
  /// Repository Name
  String name;

  /// Repository ID
  int id;

  /// Full Repository Name
  @JsonKey(name: "full_name")
  String fullName;

  /// Repository Owner
  UserInformation owner;

  /// If the Repository is Private
  @JsonKey(name: "private")
  bool isPrivate;

  /// If the Repository is a fork
  @JsonKey(name: "fork")
  bool isFork;

  /// Url to the GitHub Repository Page
  @JsonKey(name: "html_url")
  String htmlUrl;

  /// Repository Description
  String description;

  /// Repository Clone Urls
  @JsonKey(name: "clone_urls")
  CloneUrls cloneUrls;

  /// Url to the Repository Homepage
  String homepage;

  /// Repository Size
  int size;

  /// Repository Stars
  @JsonKey(name: "stargazers_count")
  int stargazersCount;

  /// Repository Watchers
  @JsonKey(name: "watchers_count")
  int watchersCount;

  /// Repository Language
  String language;

  /// If the Repository has Issues Enabled
  @JsonKey(name: "has_issues")
  bool hasIssues;

  /// If the Repository has the Wiki Enabled
  @JsonKey(name: "has_wiki")
  bool hasWiki;

  /// If the Repository has any Downloads
  @JsonKey(name: "has_downloads")
  bool hasDownloads;

  /// Number of Forks
  @JsonKey(name: "forks_count")
  int forksCount;

  /// Number of Open Issues
  @JsonKey(name: "open_issues_count")
  int openIssuesCount;

  /// Repository Default Branch
  String defaultBranch;

  /// Number of Subscribers
  @JsonKey(name: "subscribers_count")
  int subscribersCount;

  /// Number of users in the network
  @JsonKey(name: "network_count")
  int networkCount;

  /// The time the repository was created at
  @JsonKey(name: "created_at")
  DateTime createdAt;

  /// The last time the repository was pushed at
  @JsonKey(name: "pushed_at")
  DateTime pushedAt;

  static Repository fromJSON(Map<String, dynamic> input,
      [Repository instance]) {
    if (input == null) return null;

    if (instance == null) instance = new Repository();

    return instance
      ..name = input['name']
      ..id = input['id']
      ..fullName = input['full_name']
      ..isFork = input['fork']
      ..htmlUrl = input['html_url']
      ..description = input['description']
      ..cloneUrls = CloneUrls.fromJSON(input)
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
      ..isPrivate = input['private']
      ..owner =
          UserInformation.fromJSON(input['owner'] as Map<String, dynamic>);
  }

  /// Gets the Repository Slug (Full Name).
  RepositorySlug slug() => new RepositorySlug(owner.login, name);

  @override
  String toString() => 'Repository: ${owner.login}/$name';
}

/// Repository Clone Urls
class CloneUrls {
  /// Git Protocol
  ///
  /// git://github.com/user/repo.git
  String git;

  /// SSH Protocol
  ///
  /// git@github.com:user/repo.git
  String ssh;

  /// HTTPS Protocol
  ///
  /// https://github.com/user/repo.git
  String https;

  /// Subversion Protocol
  ///
  /// https://github.com/user/repo
  String svn;

  static CloneUrls fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new CloneUrls()
      ..git = input['git_url']
      ..ssh = input['ssh_url']
      ..https = input['clone_url']
      ..svn = input['svn_url'];
  }
}

@JsonSerializable(createToJson: false)
class Tag {
  final String name;
  final CommitInfo commit;
  @JsonKey(name: 'zipball_url')
  final String zipUrl;
  @JsonKey(name: 'tarball_url')
  final String tarUrl;

  Tag(this.name, this.commit, this.zipUrl, this.tarUrl);

  factory Tag.fromJson(Map<String, dynamic> input) =>
      input == null ? null : _$TagFromJson(input);

  @override
  String toString() => 'Tag: $name';
}

@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class CommitData {
  final String sha;
  final GitCommit commit;
  final String url;
  final String htmlUrl;
  final String commentsUrl;

  final CommitDataUser author, committer;
  final List<Map<String, dynamic>> parents;

  CommitData(this.sha, this.commit, this.url, this.htmlUrl, this.commentsUrl,
      this.author, this.committer, this.parents);

  factory CommitData.fromJson(Map<String, dynamic> json) =>
      _$CommitDataFromJson(json);
}

@JsonSerializable(createToJson: false)
class CommitDataUser {
  final String login, type;

  final int id;

  CommitDataUser(this.login, this.id, this.type);

  factory CommitDataUser.fromJson(Map<String, dynamic> json) =>
      _$CommitDataUserFromJson(json);
}

@JsonSerializable(createToJson: false)
class CommitInfo {
  final String sha;
  final GitTree tree;

  CommitInfo(this.sha, this.tree);

  factory CommitInfo.fromJson(Map<String, dynamic> json) =>
      _$CommitInfoFromJson(json);
}

/// User Information
@JsonSerializable(createToJson: false, fieldRename: FieldRename.snake)
class UserInformation {
  /// Owner Username
  final String login;

  /// Owner ID
  final int id;

  /// Avatar Url
  final String avatarUrl;

  /// Url to the user's GitHub Profile
  final String htmlUrl;

  UserInformation(this.login, this.id, this.avatarUrl, this.htmlUrl);

  factory UserInformation.fromJson(Map<String, dynamic> json) =>
      _$UserInformationFromJson(json);

  static UserInformation fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new UserInformation.fromJson(input);
  }
}

/// A Repository Slug
class RepositorySlug {
  /// Repository Owner
  final String owner;

  /// Repository Name
  final String name;

  RepositorySlug(this.owner, this.name);

  /// Creates a Repository Slug from a full name.
  factory RepositorySlug.full(String f) {
    var split = f.split("/");
    var o = split[0];
    var n = (split..removeAt(0)).join("/");
    return new RepositorySlug(o, n);
  }

  /// The Full Name of the Repository
  ///
  /// Example: owner/name
  String get fullName => "$owner/$name";

  @override
  bool operator ==(Object obj) =>
      obj is RepositorySlug && obj.fullName == fullName;

  @override
  int get hashCode => fullName.hashCode;

  @override
  String toString() => "$owner/$name";
}

/// Model class for a new repository to be created.
class CreateRepository {
  /// Repository Name
  final String name;

  /// Repository Description
  String description;

  /// Repository Homepage
  String homepage;

  /// If the repository should be private or not.
  bool private = false;

  /// If the repository should have issues enabled.
  @JsonKey(name: "has_issues")
  bool hasIssues = true;

  /// If the repository should have the wiki enabled.
  @JsonKey(name: "has_wiki")
  bool hasWiki = true;

  /// If the repository should have downloads enabled.
  @JsonKey(name: "has_downloads")
  bool hasDownloads = true;

  /// The Team ID (Only for Creating a Repository for an Organization)
  @OnlyWhen("Creating a repository for an organization")
  @JsonKey(name: "team_id")
  int teamID;

  /// If GitHub should auto initialize the repository.
  @JsonKey(name: "auto_init")
  bool autoInit = false;

  /// .gitignore template (only when [autoInit] is true)
  @OnlyWhen("autoInit is true")
  String gitignoreTemplate;

  /// License template (only when [autoInit] is true)
  @OnlyWhen("autoInit is true")
  String licenseTemplate;

  CreateRepository(this.name);

  String toJSON() {
    return jsonEncode({
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

/// Model class for a branch.
@JsonSerializable(createToJson: false)
class Branch {
  /// The name of the branch.
  final String name;

  /// Commit Information
  final CommitData commit;

  Branch(this.name, this.commit);

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);

  static Branch fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return new Branch.fromJson(input);
  }
}

/// A Breakdown of the Languages a repository uses.
class LanguageBreakdown {
  final Map<String, int> _data;

  LanguageBreakdown(Map<String, int> data) : _data = data;

  /// The Primary Language
  String get primary {
    var list = mapToList(_data);
    list.sort((a, b) {
      return a.value.compareTo(b.value);
    });
    return list.first.key;
  }

  /// Names of Languages Used
  List<String> get names => _data.keys.toList()..sort();

  /// Actual Information
  ///
  /// This is a Map of the Language Name to the Number of Bytes of that language in the repository.
  Map<String, int> get info => _data;

  /// Creates a list of lists with a tuple of the language name and the bytes.
  List<List<dynamic>> toList() {
    var out = <List<dynamic>>[];
    for (var key in info.keys) {
      out.add([key, info[key]]);
    }
    return out;
  }

  @override
  String toString() {
    var buffer = new StringBuffer();
    _data.forEach((key, value) {
      buffer.writeln("$key: $value");
    });
    return buffer.toString();
  }
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LicenseDetails {
  final String name;
  final String path;
  final String sha;
  final int size;
  final Uri url;

  final Uri htmlUrl;
  final Uri gitUrl;
  final Uri downloadUrl;

  final String type;
  final String content;
  final String encoding;

  @JsonKey(name: '_links')
  final Links links;

  final LicenseKind license;

  LicenseDetails(
      {this.name,
      this.path,
      this.sha,
      this.size,
      this.url,
      this.htmlUrl,
      this.gitUrl,
      this.downloadUrl,
      this.type,
      this.content,
      this.encoding,
      this.links,
      this.license});

  factory LicenseDetails.fromJson(Map<String, dynamic> json) =>
      _$LicenseDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseDetailsToJson(this);
}

@JsonSerializable(fieldRename: FieldRename.snake)
class LicenseKind {
  final String key;
  final String name;
  final String spdxId;
  final Uri url;
  final String nodeId;

  LicenseKind({this.key, this.name, this.spdxId, this.url, this.nodeId});

  factory LicenseKind.fromJson(Map<String, dynamic> json) =>
      _$LicenseKindFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseKindToJson(this);
}
