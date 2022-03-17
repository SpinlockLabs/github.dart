import 'package:github/src/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repos.g.dart';

@JsonSerializable()
class GitHubComparison {
  final String? url;
  final String? status;
  final int? aheadBy;
  final int? behindBy;
  final int? totalCommits;
  final List<CommitFile>? files;

  GitHubComparison(
    this.url,
    this.status,
    this.aheadBy,
    this.behindBy,
    this.totalCommits,
    this.files,
  );

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
  });

  /// Repository Name
  final String name;

  /// Repository ID
  final int id;

  /// Full Repository Name
  final String fullName;

  /// Repository Owner
  @JsonKey(defaultValue: null)
  final UserInformation? owner;

  /// If the Repository is Private
  @JsonKey(name: 'private')
  final bool isPrivate;

  /// If the Repository is a fork
  @JsonKey(name: 'fork')
  final bool isFork;

  /// Url to the GitHub Repository Page
  final String htmlUrl;

  /// Repository Description
  final String description;

  // https clone URL
  final String cloneUrl;

  final String sshUrl;

  final String svnUrl;

  final String gitUrl;

  /// Url to the Repository Homepage
  final String homepage;

  /// Repository Size
  final int size;

  /// Repository Stars
  final int stargazersCount;

  /// Repository Watchers
  final int watchersCount;

  /// Repository Language
  final String language;

  /// If the Repository has Issues Enabled
  final bool hasIssues;

  /// If the Repository has the Wiki Enabled
  final bool hasWiki;

  /// If the Repository has any Downloads
  final bool hasDownloads;

  /// If the Repository has any Github Pages
  final bool hasPages;

  /// Number of Forks
  final int forksCount;

  /// Number of Open Issues
  final int openIssuesCount;

  /// Repository Default Branch
  final String defaultBranch;

  /// Number of Subscribers
  final int subscribersCount;

  /// Number of users in the network
  final int networkCount;

  /// The time the repository was created at
  final DateTime? createdAt;

  /// The last time the repository was pushed at
  final DateTime? pushedAt;

  final DateTime? updatedAt;

  final LicenseKind? license;

  final bool archived;

  final bool disabled;

  RepositoryPermissions? permissions;

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
  RepositoryPermissions({
    this.admin = false,
    this.push = false,
    this.pull = false,
  });

  /// Administrative Access
  final bool admin;

  /// Push Access
  final bool push;

  /// Pull Access
  final bool pull;

  factory RepositoryPermissions.fromJson(Map<String, dynamic> json) =>
      _$RepositoryPermissionsFromJson(json);

  Map<String, dynamic> toJson() => _$RepositoryPermissionsToJson(this);
}

@JsonSerializable()
class Tag {
  final String name;
  final CommitInfo commit;
  @JsonKey(name: 'zipball_url')
  final String zipUrl;
  @JsonKey(name: 'tarball_url')
  final String tarUrl;

  Tag(this.name, this.commit, this.zipUrl, this.tarUrl);

  factory Tag.fromJson(Map<String, dynamic> input) => _$TagFromJson(input);
  Map<String, dynamic> toJson() => _$TagToJson(this);

  @override
  String toString() => 'Tag: $name';
}

@JsonSerializable()
class CommitData {
  final String? sha;
  final GitCommit? commit;
  final String? url;
  final String? htmlUrl;
  final String? commentsUrl;

  final CommitDataUser? author, committer;
  final List<Map<String, dynamic>>? parents;

  CommitData(
    this.sha,
    this.commit,
    this.url,
    this.htmlUrl,
    this.commentsUrl,
    this.author,
    this.committer,
    this.parents,
  );

  factory CommitData.fromJson(Map<String, dynamic> input) =>
      _$CommitDataFromJson(input);
  Map<String, dynamic> toJson() => _$CommitDataToJson(this);
}

@JsonSerializable()
class CommitDataUser {
  final String? login, type;

  final int? id;

  CommitDataUser(this.login, this.id, this.type);

  factory CommitDataUser.fromJson(Map<String, dynamic> input) =>
      _$CommitDataUserFromJson(input);
  Map<String, dynamic> toJson() => _$CommitDataUserToJson(this);
}

@JsonSerializable()
class CommitInfo {
  final String? sha;
  final GitTree? tree;

  CommitInfo(this.sha, this.tree);

  factory CommitInfo.fromJson(Map<String, dynamic> input) =>
      _$CommitInfoFromJson(input);
  Map<String, dynamic> toJson() => _$CommitInfoToJson(this);
}

/// User Information
@JsonSerializable()
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

  factory UserInformation.fromJson(Map<String, dynamic> input) =>
      _$UserInformationFromJson(input);
  Map<String, dynamic> toJson() => _$UserInformationToJson(this);
}

/// A Repository Slug
@JsonSerializable()
class RepositorySlug {
  /// Repository Owner
  String owner;

  /// Repository Name
  String name;

  RepositorySlug(this.owner, this.name);

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
  CreateRepository(
    this.name, {
    this.description,
    this.homepage,
    this.private,
    this.hasIssues,
    this.hasDownloads,
    this.teamId,
    this.autoInit,
    this.gitignoreTemplate,
    this.licenseTemplate,
    this.hasWiki,
  });

  /// Repository Name
  final String? name;

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

/// Model class for a branch.
@JsonSerializable()
class Branch {
  /// The name of the branch.
  final String? name;

  /// Commit Information
  final CommitData? commit;

  Branch(this.name, this.commit);

  factory Branch.fromJson(Map<String, dynamic> json) => _$BranchFromJson(json);
  Map<String, dynamic> toJson() => _$BranchToJson(this);
}

/// A Breakdown of the Languages a repository uses.
class LanguageBreakdown {
  final Map<String, int> _data;

  LanguageBreakdown(Map<String, int> data) : _data = data;

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
  final String? name;
  final String? path;
  final String? sha;
  final int? size;
  final Uri? url;

  final Uri? htmlUrl;
  final Uri? gitUrl;
  final Uri? downloadUrl;

  final String? type;
  final String? content;
  final String? encoding;

  @JsonKey(name: '_links')
  final Links? links;

  final LicenseKind? license;

  LicenseDetails({
    this.name,
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
    this.license,
  });

  factory LicenseDetails.fromJson(Map<String, dynamic> json) =>
      _$LicenseDetailsFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseDetailsToJson(this);
}

@JsonSerializable()
class LicenseKind {
  final String? key;
  final String? name;
  final String? spdxId;
  final Uri? url;
  final String? nodeId;

  LicenseKind({this.key, this.name, this.spdxId, this.url, this.nodeId});

  factory LicenseKind.fromJson(Map<String, dynamic> json) =>
      _$LicenseKindFromJson(json);

  Map<String, dynamic> toJson() => _$LicenseKindToJson(this);
}
