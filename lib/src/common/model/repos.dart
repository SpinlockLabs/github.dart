import 'package:github/src/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repos.g.dart';

@JsonSerializable()
class GitHubComparison {
  GitHubComparison(this.url, this.status, this.aheadBy, this.behindBy,
      this.totalCommits, this.files, this.commits);

  String? url;
  String? status;
  int? aheadBy;
  int? behindBy;
  int? totalCommits;
  List<CommitFile>? files;
  List<RepositoryCommit>? commits;

  factory GitHubComparison.fromJson(Map<String, dynamic> json) =>
      _$GitHubComparisonFromJson(json);
  Map<String, dynamic> toJson() => _$GitHubComparisonToJson(this);

  @override
  String toString() {
    switch (status) {
      case 'identical':
        return 'GitHubComparison: identical';
      case 'behind':
        return 'GitHubComparison: behind ($behindBy)';
      case 'diverged':
        return 'GitHubComparison: diverged';
      case 'ahead':
        return 'GitHubComparison: ahead ($aheadBy)';
      default:
        return 'Huh??? - $status';
    }
  }
}

/// Model class for a repository.
@JsonSerializable()
class Repository {
  Repository({
    this.name = '',
    this.id = 0,
    this.fullName = '',
    this.owner,
    this.htmlUrl = '',
    this.description = '',
    this.cloneUrl = '',
    this.gitUrl = '',
    this.sshUrl = '',
    this.svnUrl = '',
    this.defaultBranch = '',
    this.createdAt,
    this.isPrivate = false,
    this.isFork = false,
    this.stargazersCount = 0,
    this.watchersCount = 0,
    this.language = '',
    this.hasWiki = false,
    this.hasDownloads = false,
    this.forksCount = 0,
    this.openIssuesCount = 0,
    this.subscribersCount = 0,
    this.networkCount = 0,
    this.hasIssues = false,
    this.size = 0,
    this.archived = false,
    this.disabled = false,
    this.homepage = '',
    this.updatedAt,
    this.pushedAt,
    this.license,
    this.hasPages = false,
    this.permissions,

    // Properties from the Timeline API
    this.allowAutoMerge,
    this.allowForking,
    this.allowMergeCommit,
    this.allowRebaseMerge,
    this.allowSquashMerge,
    this.allowUpdateBranch,
    this.anonymousAccessEnabled,
    this.archiveUrl,
    this.assigneesUrl,
    this.blobsUrl,
    this.branchesUrl,
    this.collaboratorsUrl,
    this.commentsUrl,
    this.commitsUrl,
    this.compareUrl,
    this.contentsUrl,
    this.contributorsUrl,
    this.deleteBranchOnMerge,
    this.deploymentsUrl,
    this.downloadsUrl,
    this.eventsUrl,
    this.forks,
    this.forksUrl,
    this.gitCommitsUrl,
    this.gitRefsUrl,
    this.gitTagsUrl,
    this.hasDiscussions,
    this.hasProjects,
    this.hooksUrl,
    this.isTemplate,
    this.issueCommentUrl,
    this.issueEventsUrl,
    this.issuesUrl,
    this.keysUrl,
    this.labelsUrl,
    this.languagesUrl,
    this.masterBranch,
    this.mergeCommitMessage,
    this.mergeCommitTitle,
    this.mergesUrl,
    this.milestonesUrl,
    this.mirrorUrl,
    this.nodeId,
    this.notificationsUrl,
    this.openIssues,
    this.organization,
    this.pullsUrl,
    this.releasesUrl,
    this.squashMergeCommitMessage,
    this.squashMergeCommitTitle,
    this.stargazersUrl,
    this.starredAt,
    this.statusesUrl,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.tagsUrl,
    this.teamsUrl,
    this.tempCloneToken,
    this.templateRepository,
    this.topics,
    this.treesUrl,
    this.url,
    this.visibility,
    this.watchers,
    this.webCommitSignoffRequired,
  });

  /// Repository Name
  String name;

  /// Repository ID
  int id;

  /// Full Repository Name
  String fullName;

  /// Repository Owner
  @JsonKey(defaultValue: null)
  UserInformation? owner;

  /// If the Repository is Private
  @JsonKey(name: 'private')
  bool isPrivate;

  /// If the Repository is a fork
  @JsonKey(name: 'fork')
  bool isFork;

  /// Url to the GitHub Repository Page
  String htmlUrl;

  /// Repository Description
  String description;

  // https clone URL
  String cloneUrl;

  String sshUrl;

  String svnUrl;

  String gitUrl;

  /// Url to the Repository Homepage
  String homepage;

  /// Repository Size
  //
  /// The size of the repository. Size is calculated hourly. When a repository is
  /// initially created, the size is 0.
  int size;

  /// Repository Stars
  int stargazersCount;

  /// Repository Watchers
  int watchersCount;

  /// Repository Language
  String language;

  /// If the Repository has Issues Enabled
  bool hasIssues;

  /// If the Repository has the Wiki Enabled
  bool hasWiki;

  /// If the Repository has any Downloads
  bool hasDownloads;

  /// If the Repository has any Github Pages
  bool hasPages;

  /// Number of Forks
  int forksCount;

  /// Number of Open Issues
  int openIssuesCount;

  /// Repository Default Branch
  String defaultBranch;

  /// Number of Subscribers
  int subscribersCount;

  /// Number of users in the network
  int networkCount;

  /// The time the repository was created at
  DateTime? createdAt;

  /// The last time the repository was pushed at
  DateTime? pushedAt;

  DateTime? updatedAt;

  LicenseKind? license;

  bool archived;

  bool disabled;

  RepositoryPermissions? permissions;

  // The following properties were added to support the Timeline API.

  /// Whether to allow Auto-merge to be used on pull requests.
  bool? allowAutoMerge;

  /// Whether to allow forking this repo
  bool? allowForking;

  /// Whether to allow merge commits for pull requests.
  bool? allowMergeCommit;

  /// Whether to allow rebase merges for pull requests.
  bool? allowRebaseMerge;

  /// Whether to allow squash merges for pull requests.
  bool? allowSquashMerge;

  /// Whether or not a pull request head branch that is behind its base branch can
  /// always be updated even if it is not required to be up to date before merging.
  bool? allowUpdateBranch;

  /// Whether anonymous git access is enabled for this repository
  bool? anonymousAccessEnabled;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/{archive_format}{/ref}`
  String? archiveUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/assignees{/user}`
  String? assigneesUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/git/blobs{/sha}`
  String? blobsUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/branches{/branch}`
  String? branchesUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/collaborators{/collaborator}`
  String? collaboratorsUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/comments{/number}`
  String? commentsUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/commits{/sha}`
  String? commitsUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/compare/{base}...{head}`
  String? compareUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/contents/{+path}`
  String? contentsUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/contributors`
  String? contributorsUrl;

  /// Whether to delete head branches when pull requests are merged
  bool? deleteBranchOnMerge;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/deployments`
  String? deploymentsUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/downloads`
  String? downloadsUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/events`
  String? eventsUrl;

  int? forks;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/forks`
  String? forksUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/git/commits{/sha}`
  String? gitCommitsUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/git/refs{/sha}`
  String? gitRefsUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/git/tags{/sha}`
  String? gitTagsUrl;

  /// Whether discussions are enabled.
  bool? hasDiscussions;

  /// Whether projects are enabled.
  bool? hasProjects;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/hooks`
  String? hooksUrl;

  /// Whether this repository acts as a template that can be used to generate new
  /// repositories.
  bool? isTemplate;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/issues/comments{/number}`
  String? issueCommentUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/issues/events{/number}`
  String? issueEventsUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/issues{/number}`
  String? issuesUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/keys{/key_id}`
  String? keysUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/labels{/name}`
  String? labelsUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/languages`
  String? languagesUrl;

  String? masterBranch;

  /// The default value for a merge commit message.
  ///
  /// - `PR_TITLE` - default to the pull request's title.
  /// - `PR_BODY` - default to the pull request's body.
  /// - `BLANK` - default to a blank commit message.
  String? mergeCommitMessage;

  /// The default value for a merge commit title.
  ///
  /// - `PR_TITLE` - default to the pull request's title.
  /// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g.,
  /// Merge pull request #123 from branch-name).
  String? mergeCommitTitle;

  /// Format: uri
  ///
  /// Example: `http://api.github.com/repos/octocat/Hello-World/merges`
  String? mergesUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/milestones{/number}`
  String? milestonesUrl;

  /// Format: uri
  ///
  /// Example: `git:git.example.com/octocat/Hello-World`
  String? mirrorUrl;

  /// Example: `MDEwOlJlcG9zaXRvcnkxMjk2MjY5`
  String? nodeId;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/notifications{?since,all,participating}`
  String? notificationsUrl;

  int? openIssues;

  User? organization;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/pulls{/number}`
  String? pullsUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/releases{/id}`
  String? releasesUrl;

  /// The default value for a squash merge commit message:
  ///
  /// - `PR_BODY` - default to the pull request's body.
  /// - `COMMIT_MESSAGES` - default to the branch's commit messages.
  /// - `BLANK` - default to a blank commit message.
  String? squashMergeCommitMessage;

  /// The default value for a squash merge commit title:
  ///
  /// - `PR_TITLE` - default to the pull request's title.
  /// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit)
  ///   or the pull request's title (when more than one commit).
  String? squashMergeCommitTitle;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/stargazers`
  String? stargazersUrl;

  DateTime? starredAt;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/statuses/{sha}`
  String? statusesUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/subscribers`
  String? subscribersUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/subscription`
  String? subscriptionUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/tags`
  String? tagsUrl;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/teams`
  String? teamsUrl;

  String? tempCloneToken;

  TemplateRepository? templateRepository;

  List<String>? topics;

  /// Example: `http://api.github.com/repos/octocat/Hello-World/git/trees{/sha}`
  String? treesUrl;

  /// Example: `https://api.github.com/repos/octocat/Hello-World`
  String? url;

  /// The repository visibility: public, private, or internal.
  String? visibility;

  int? watchers;

  /// Whether to require contributors to sign off on web-based commits
  bool? webCommitSignoffRequired;

  factory Repository.fromJson(Map<String, dynamic> input) =>
      _$RepositoryFromJson(input);
  Map<String, dynamic> toJson() => _$RepositoryToJson(this);

  /// Gets the Repository Slug (Full Name).
  RepositorySlug slug() => RepositorySlug(owner?.login ?? '', name);

  @override
  String toString() => 'Repository: $owner/$name';
}

/// Model class for repository permissions.
@JsonSerializable()
class RepositoryPermissions {
  RepositoryPermissions(
      {this.admin = false, this.push = false, this.pull = false});

  /// Administrative Access
  bool admin;

  /// Push Access
  bool push;

  /// Pull Access
  bool pull;

  factory RepositoryPermissions.fromJson(Map<String, dynamic> json) =>
      _$RepositoryPermissionsFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryPermissionsToJson(this);
}

@JsonSerializable()
class Tag {
  Tag(this.name, this.commit, this.zipUrl, this.tarUrl);

  String name;
  CommitInfo commit;
  @JsonKey(name: 'zipball_url')
  String zipUrl;
  @JsonKey(name: 'tarball_url')
  String tarUrl;

  factory Tag.fromJson(Map<String, dynamic> input) => _$TagFromJson(input);
  Map<String, dynamic> toJson() => _$TagToJson(this);

  @override
  String toString() => 'Tag: $name';
}

@JsonSerializable()
class CommitData {
  CommitData(this.sha, this.commit, this.url, this.htmlUrl, this.commentsUrl,
      this.author, this.committer, this.parents);

  String? sha;
  GitCommit? commit;
  String? url;
  String? htmlUrl;
  String? commentsUrl;

  CommitDataUser? author, committer;
  List<Map<String, dynamic>>? parents;

  factory CommitData.fromJson(Map<String, dynamic> input) =>
      _$CommitDataFromJson(input);
  Map<String, dynamic> toJson() => _$CommitDataToJson(this);
}

@JsonSerializable()
class CommitDataUser {
  CommitDataUser(this.login, this.id, this.type);

  String? login, type;

  int? id;

  factory CommitDataUser.fromJson(Map<String, dynamic> input) =>
      _$CommitDataUserFromJson(input);
  Map<String, dynamic> toJson() => _$CommitDataUserToJson(this);
}

@JsonSerializable()
class CommitInfo {
  CommitInfo(this.sha, this.tree);

  String? sha;
  GitTree? tree;

  factory CommitInfo.fromJson(Map<String, dynamic> input) =>
      _$CommitInfoFromJson(input);
  Map<String, dynamic> toJson() => _$CommitInfoToJson(this);
}

/// User Information
@JsonSerializable()
class UserInformation {
  UserInformation(this.login, this.id, this.avatarUrl, this.htmlUrl);

  /// Owner Username
  String login;

  /// Owner ID
  int id;

  /// Avatar Url
  String avatarUrl;

  /// Url to the user's GitHub Profile
  String htmlUrl;

  factory UserInformation.fromJson(Map<String, dynamic> input) =>
      _$UserInformationFromJson(input);
  Map<String, dynamic> toJson() => _$UserInformationToJson(this);
}

/// A Repository Slug
@JsonSerializable()
class RepositorySlug {
  RepositorySlug(this.owner, this.name);

  /// Repository Owner
  String owner;

  /// Repository Name
  String name;

  /// Creates a Repository Slug from a full name.
  factory RepositorySlug.full(String f) {
    final split = f.split('/');
    final o = split[0];
    final n = (split..removeAt(0)).join('/');
    return RepositorySlug(o, n);
  }

  /// The Full Name of the Repository
  ///
  /// Example: owner/name
  String get fullName => '$owner/$name';

  @override
  bool operator ==(Object other) =>
      other is RepositorySlug && other.fullName == fullName;

  @override
  int get hashCode => fullName.hashCode;

  @override
  String toString() => '$owner/$name';

  factory RepositorySlug.fromJson(Map<String, dynamic> json) =>
      _$RepositorySlugFromJson(json);
  Map<String, dynamic> toJson() => _$RepositorySlugToJson(this);
}

/// Model class for a new repository to be created.
@JsonSerializable()
class CreateRepository {
  CreateRepository(this.name,
      {this.description,
      this.homepage,
      this.private,
      this.hasIssues,
      this.hasDownloads,
      this.teamId,
      this.autoInit,
      this.gitignoreTemplate,
      this.licenseTemplate,
      this.hasWiki});

  /// Repository Name
  String? name;

  /// Repository Description
  String? description;

  /// Repository Homepage
  String? homepage;

  /// If the repository should be private or not.
  bool? private = false;

  /// If the repository should have issues enabled.
  bool? hasIssues = true;

  /// If the repository should have the wiki enabled.
  bool? hasWiki = true;

  /// If the repository should have downloads enabled.
  bool? hasDownloads = true;

  /// The Team ID (Only for Creating a Repository for an Organization)
  @OnlyWhen('Creating a repository for an organization')
  int? teamId;

  /// If GitHub should auto initialize the repository.
  bool? autoInit = false;

  /// .gitignore template (only when [autoInit] is true)
  @OnlyWhen('autoInit is true')
  String? gitignoreTemplate;

  /// License template (only when [autoInit] is true)
  @OnlyWhen('autoInit is true')
  String? licenseTemplate;

  factory CreateRepository.fromJson(Map<String, dynamic> input) =>
      _$CreateRepositoryFromJson(input);
  Map<String, dynamic> toJson() => _$CreateRepositoryToJson(this);
}

/// Model class for a new repository to be created using a template.
@JsonSerializable()
class CreateRepositoryFromTemplate {
  CreateRepositoryFromTemplate(
    this.name, {
    this.owner,
    this.description,
    this.includeAllBranches,
    this.private,
  });

  /// Repository Name
  final String name;

  /// Owner Name
  final String? owner;

  /// Repository Description
  String? description;

  /// Include the directory structure and files from all branches in the
  /// template repository, and not just the default branch. Default: false.
  @JsonKey(name: 'include_all_branches')
  bool? includeAllBranches = false;

  /// If the repository should be private or not.
  bool? private = false;

  factory CreateRepositoryFromTemplate.fromJson(Map<String, dynamic> input) =>
      _$CreateRepositoryFromTemplateFromJson(input);
  Map<String, dynamic> toJson() => _$CreateRepositoryFromTemplateToJson(this);
}

/// Model class for a branch.
@JsonSerializable()
class Branch {
  Branch(this.name, this.commit);

  /// The name of the branch.
  String? name;

  /// Commit Information
  CommitData? commit;

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
  Map<String, dynamic> toJson() => _$BranchToJson(this);
}

/// A Breakdown of the Languages a repository uses.
class LanguageBreakdown {
  LanguageBreakdown(Map<String, int> data) : _data = data;

  final Map<String, int> _data;

  /// The Primary Language
  String get primary {
    final list = mapToList(_data);
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
    final out = <List<dynamic>>[];
    for (final key in info.keys) {
      out.add([key, info[key]]);
    }
    return out;
  }

  @override
  String toString() {
    final buffer = StringBuffer();
    _data.forEach((key, value) {
      buffer.writeln('$key: $value');
    });
    return buffer.toString();
  }
}

@JsonSerializable()
class LicenseDetails {
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

  String? name;
  String? path;
  String? sha;
  int? size;
  Uri? url;

  Uri? htmlUrl;
  Uri? gitUrl;
  Uri? downloadUrl;

  String? type;
  String? content;
  String? encoding;

  @JsonKey(name: '_links')
  Links? links;

  LicenseKind? license;

  factory LicenseDetails.fromJson(Map<String, dynamic> json) =>
      _$LicenseDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseDetailsToJson(this);
}

@JsonSerializable()
class LicenseKind {
  LicenseKind({this.key, this.name, this.spdxId, this.url, this.nodeId});

  String? key;
  String? name;
  String? spdxId;
  Uri? url;
  String? nodeId;

  factory LicenseKind.fromJson(Map<String, dynamic> json) =>
      _$LicenseKindFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseKindToJson(this);
}
