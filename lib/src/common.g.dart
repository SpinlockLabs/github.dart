// GENERATED CODE - DO NOT MODIFY BY HAND

part of github.common;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Event _$EventFromJson(Map<String, dynamic> json) {
  return Event()
    ..repository = json['repository'] == null
        ? null
        : Repository.fromJson(json['repository'] as Map<String, dynamic>)
    ..actor = json['actor'] == null
        ? null
        : Actor.fromJson(json['actor'] as Map<String, dynamic>)
    ..org = json['org'] == null
        ? null
        : Organization.fromJson(json['org'] as Map<String, dynamic>)
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..id = json['id'] as String
    ..type = json['type'] as String
    ..payload = json['payload'] as Map<String, dynamic>;
}

Actor _$ActorFromJson(Map<String, dynamic> json) {
  return Actor()
    ..id = json['id'] as int
    ..login = json['login'] as String
    ..displayLogin = json['display_login'] as String
    ..url = json['url'] as String
    ..avatarUrl = json['avatar_url'] as String;
}

Map<String, dynamic> _$ActorToJson(Actor instance) => <String, dynamic>{
      'id': instance.id,
      'login': instance.login,
      'display_login': instance.displayLogin,
      'url': instance.url,
      'avatar_url': instance.avatarUrl,
    };

Map<String, dynamic> _$CreateGitBlobToJson(CreateGitBlob instance) =>
    <String, dynamic>{
      'content': instance.content,
      'encoding': instance.encoding,
    };

GitCommit _$GitCommitFromJson(Map<String, dynamic> json) {
  return GitCommit()
    ..sha = json['sha'] as String
    ..url = json['url'] as String
    ..author = json['author'] == null
        ? null
        : GitCommitUser.fromJson(json['author'] as Map<String, dynamic>)
    ..committer = json['committer'] == null
        ? null
        : GitCommitUser.fromJson(json['committer'] as Map<String, dynamic>)
    ..message = json['message'] as String
    ..tree = json['tree'] == null
        ? null
        : GitTree.fromJson(json['tree'] as Map<String, dynamic>)
    ..parents = (json['parents'] as List)
        ?.map((e) =>
            e == null ? null : GitCommit.fromJson(e as Map<String, dynamic>))
        ?.toList()
    ..commentCount = json['comment_count'] as int;
}

Map<String, dynamic> _$CreateGitCommitToJson(CreateGitCommit instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('message', instance.message);
  writeNotNull('tree', instance.tree);
  writeNotNull('parents', instance.parents);
  writeNotNull('committer', instance.committer);
  writeNotNull('author', instance.author);
  return val;
}

GitCommitUser _$GitCommitUserFromJson(Map<String, dynamic> json) {
  return GitCommitUser(
    json['name'] as String,
    json['email'] as String,
    json['date'] == null ? null : DateTime.parse(json['date'] as String),
  );
}

Map<String, dynamic> _$GitCommitUserToJson(GitCommitUser instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('name', instance.name);
  writeNotNull('email', instance.email);
  writeNotNull('date', dateToGitHubIso8601(instance.date));
  return val;
}

GitTree _$GitTreeFromJson(Map<String, dynamic> json) {
  return GitTree(
    json['sha'] as String,
    json['url'] as String,
    json['truncated'] as bool,
    (json['tree'] as List)
        ?.map((e) =>
            e == null ? null : GitTreeEntry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

GitTreeEntry _$GitTreeEntryFromJson(Map<String, dynamic> json) {
  return GitTreeEntry(
    json['path'] as String,
    json['mode'] as String,
    json['type'] as String,
    json['size'] as int,
    json['sha'] as String,
    json['url'] as String,
  );
}

GitReference _$GitReferenceFromJson(Map<String, dynamic> json) {
  return GitReference()
    ..ref = json['ref'] as String
    ..url = json['url'] as String
    ..object = json['object'] == null
        ? null
        : GitObject.fromJson(json['object'] as Map<String, dynamic>);
}

GitTag _$GitTagFromJson(Map<String, dynamic> json) {
  return GitTag()
    ..tag = json['tag'] as String
    ..sha = json['sha'] as String
    ..url = json['url'] as String
    ..message = json['message'] as String
    ..tagger = json['tagger'] == null
        ? null
        : GitCommitUser.fromJson(json['tagger'] as Map<String, dynamic>)
    ..object = json['object'] == null
        ? null
        : GitObject.fromJson(json['object'] as Map<String, dynamic>);
}

GitObject _$GitObjectFromJson(Map<String, dynamic> json) {
  return GitObject(
    json['type'] as String,
    json['sha'] as String,
    json['url'] as String,
  );
}

Organization _$OrganizationFromJson(Map<String, dynamic> json) {
  return Organization()
    ..login = json['login'] as String
    ..id = json['id'] as int
    ..htmlUrl = json['html_url'] as String
    ..avatarUrl = json['avatar_url'] as String
    ..name = json['name'] as String
    ..company = json['company'] as String
    ..blog = json['blog'] as String
    ..location = json['location'] as String
    ..email = json['email'] as String
    ..publicReposCount = json['public_repos'] as int
    ..publicGistsCount = json['public_gists'] as int
    ..followersCount = json['followers'] as int
    ..followingCount = json['following'] as int
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..updatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String);
}

TeamRepository _$TeamRepositoryFromJson(Map<String, dynamic> json) {
  return TeamRepository()
    ..name = json['name'] as String
    ..id = json['id'] as int
    ..fullName = json['full_name'] as String
    ..owner = json['owner'] == null
        ? null
        : UserInformation.fromJson(json['owner'] as Map<String, dynamic>)
    ..isPrivate = json['private'] as bool
    ..isFork = json['fork'] as bool
    ..htmlUrl = json['html_url'] as String
    ..description = json['description'] as String
    ..cloneUrls = json['clone_urls'] == null
        ? null
        : CloneUrls.fromJson(json['clone_urls'] as Map<String, dynamic>)
    ..homepage = json['homepage'] as String
    ..size = json['size'] as int
    ..stargazersCount = json['stargazers_count'] as int
    ..watchersCount = json['watchers_count'] as int
    ..language = json['language'] as String
    ..hasIssues = json['has_issues'] as bool
    ..hasWiki = json['has_wiki'] as bool
    ..hasDownloads = json['has_downloads'] as bool
    ..forksCount = json['forks_count'] as int
    ..openIssuesCount = json['open_issues_count'] as int
    ..defaultBranch = json['default_branch'] as String
    ..subscribersCount = json['subscribers_count'] as int
    ..networkCount = json['network_count'] as int
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..pushedAt = json['pushed_at'] == null
        ? null
        : DateTime.parse(json['pushed_at'] as String)
    ..updatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String)
    ..license = json['license'] == null
        ? null
        : LicenseKind.fromJson(json['license'] as Map<String, dynamic>)
    ..permissions = json['permissions'] == null
        ? null
        : TeamRepositoryPermissions.fromJson(
            json['permissions'] as Map<String, dynamic>);
}

TeamRepositoryPermissions _$TeamRepositoryPermissionsFromJson(
    Map<String, dynamic> json) {
  return TeamRepositoryPermissions(
    json['admin'] as bool,
    json['push'] as bool,
    json['pull'] as bool,
  );
}

GitHubComparison _$GitHubComparisonFromJson(Map<String, dynamic> json) {
  return GitHubComparison(
    json['url'] as String,
    json['status'] as String,
    json['ahead_by'] as int,
    json['behind_by'] as int,
    json['total_commits'] as int,
  );
}

Repository _$RepositoryFromJson(Map<String, dynamic> json) {
  return Repository()
    ..name = json['name'] as String
    ..id = json['id'] as int
    ..fullName = json['full_name'] as String
    ..owner = json['owner'] == null
        ? null
        : UserInformation.fromJson(json['owner'] as Map<String, dynamic>)
    ..isPrivate = json['private'] as bool
    ..isFork = json['fork'] as bool
    ..htmlUrl = json['html_url'] as String
    ..description = json['description'] as String
    ..cloneUrls = json['clone_urls'] == null
        ? null
        : CloneUrls.fromJson(json['clone_urls'] as Map<String, dynamic>)
    ..homepage = json['homepage'] as String
    ..size = json['size'] as int
    ..stargazersCount = json['stargazers_count'] as int
    ..watchersCount = json['watchers_count'] as int
    ..language = json['language'] as String
    ..hasIssues = json['has_issues'] as bool
    ..hasWiki = json['has_wiki'] as bool
    ..hasDownloads = json['has_downloads'] as bool
    ..forksCount = json['forks_count'] as int
    ..openIssuesCount = json['open_issues_count'] as int
    ..defaultBranch = json['default_branch'] as String
    ..subscribersCount = json['subscribers_count'] as int
    ..networkCount = json['network_count'] as int
    ..createdAt = json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String)
    ..pushedAt = json['pushed_at'] == null
        ? null
        : DateTime.parse(json['pushed_at'] as String)
    ..updatedAt = json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String)
    ..license = json['license'] == null
        ? null
        : LicenseKind.fromJson(json['license'] as Map<String, dynamic>);
}

CloneUrls _$CloneUrlsFromJson(Map<String, dynamic> json) {
  return CloneUrls(
    json['git'] as String,
    json['ssh'] as String,
    json['https'] as String,
    json['svn'] as String,
  );
}

Tag _$TagFromJson(Map<String, dynamic> json) {
  return Tag(
    json['name'] as String,
    json['commit'] == null
        ? null
        : CommitInfo.fromJson(json['commit'] as Map<String, dynamic>),
    json['zipball_url'] as String,
    json['tarball_url'] as String,
  );
}

CommitData _$CommitDataFromJson(Map<String, dynamic> json) {
  return CommitData(
    json['sha'] as String,
    json['commit'] == null
        ? null
        : GitCommit.fromJson(json['commit'] as Map<String, dynamic>),
    json['url'] as String,
    json['html_url'] as String,
    json['comments_url'] as String,
    json['author'] == null
        ? null
        : CommitDataUser.fromJson(json['author'] as Map<String, dynamic>),
    json['committer'] == null
        ? null
        : CommitDataUser.fromJson(json['committer'] as Map<String, dynamic>),
    (json['parents'] as List)?.map((e) => e as Map<String, dynamic>)?.toList(),
  );
}

CommitDataUser _$CommitDataUserFromJson(Map<String, dynamic> json) {
  return CommitDataUser(
    json['login'] as String,
    json['id'] as int,
    json['type'] as String,
  );
}

CommitInfo _$CommitInfoFromJson(Map<String, dynamic> json) {
  return CommitInfo(
    json['sha'] as String,
    json['tree'] == null
        ? null
        : GitTree.fromJson(json['tree'] as Map<String, dynamic>),
  );
}

UserInformation _$UserInformationFromJson(Map<String, dynamic> json) {
  return UserInformation(
    json['login'] as String,
    json['id'] as int,
    json['avatar_url'] as String,
    json['html_url'] as String,
  );
}

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return Branch(
    json['name'] as String,
    json['commit'] == null
        ? null
        : CommitData.fromJson(json['commit'] as Map<String, dynamic>),
  );
}

LicenseDetails _$LicenseDetailsFromJson(Map<String, dynamic> json) {
  return LicenseDetails(
    name: json['name'] as String,
    path: json['path'] as String,
    sha: json['sha'] as String,
    size: json['size'] as int,
    url: json['url'] == null ? null : Uri.parse(json['url'] as String),
    htmlUrl:
        json['html_url'] == null ? null : Uri.parse(json['html_url'] as String),
    gitUrl:
        json['git_url'] == null ? null : Uri.parse(json['git_url'] as String),
    downloadUrl: json['download_url'] == null
        ? null
        : Uri.parse(json['download_url'] as String),
    type: json['type'] as String,
    content: json['content'] as String,
    encoding: json['encoding'] as String,
    links: json['_links'] == null
        ? null
        : Links.fromJson(json['_links'] as Map<String, dynamic>),
    license: json['license'] == null
        ? null
        : LicenseKind.fromJson(json['license'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$LicenseDetailsToJson(LicenseDetails instance) =>
    <String, dynamic>{
      'name': instance.name,
      'path': instance.path,
      'sha': instance.sha,
      'size': instance.size,
      'url': instance.url?.toString(),
      'html_url': instance.htmlUrl?.toString(),
      'git_url': instance.gitUrl?.toString(),
      'download_url': instance.downloadUrl?.toString(),
      'type': instance.type,
      'content': instance.content,
      'encoding': instance.encoding,
      '_links': instance.links,
      'license': instance.license,
    };

LicenseKind _$LicenseKindFromJson(Map<String, dynamic> json) {
  return LicenseKind(
    key: json['key'] as String,
    name: json['name'] as String,
    spdxId: json['spdx_id'] as String,
    url: json['url'] == null ? null : Uri.parse(json['url'] as String),
    nodeId: json['node_id'] as String,
  );
}

Map<String, dynamic> _$LicenseKindToJson(LicenseKind instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'spdx_id': instance.spdxId,
      'url': instance.url?.toString(),
      'node_id': instance.nodeId,
    };

Links _$LinksFromJson(Map<String, dynamic> json) {
  return Links(
    git: json['git'] == null ? null : Uri.parse(json['git'] as String),
    self: json['self'] == null ? null : Uri.parse(json['self'] as String),
    html: json['html'] == null ? null : Uri.parse(json['html'] as String),
  );
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'self': instance.self?.toString(),
      'git': instance.git?.toString(),
      'html': instance.html?.toString(),
    };

ContributorStatistics _$ContributorStatisticsFromJson(
    Map<String, dynamic> json) {
  return ContributorStatistics(
    json['author'] == null
        ? null
        : User.fromJson(json['author'] as Map<String, dynamic>),
    json['total'] as int,
    (json['weeks'] as List)
        ?.map((e) => e == null
            ? null
            : ContributorWeekStatistics.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

ContributorWeekStatistics _$ContributorWeekStatisticsFromJson(
    Map<String, dynamic> json) {
  return ContributorWeekStatistics(
    json['w'] as int,
    json['a'] as int,
    json['d'] as int,
    json['c'] as int,
  );
}

CodeSearchResults _$CodeSearchResultsFromJson(Map<String, dynamic> json) {
  return CodeSearchResults()
    ..totalCount = json['total_count'] as int
    ..incompleteResults = json['incomplete_results'] as bool
    ..items = CodeSearchItem.fromJsonList(json['items'] as List);
}

CodeSearchItem _$CodeSearchItemFromJson(Map<String, dynamic> json) {
  return CodeSearchItem()
    ..name = json['name'] as String
    ..path = json['path'] as String
    ..sha = json['sha'] as String
    ..url = Uri.parse(json['url'] as String)
    ..gitUrl = Uri.parse(json['git_url'] as String)
    ..htmlUrl = Uri.parse(json['html_url'] as String)
    ..repository = json['repository'] == null
        ? null
        : Repository.fromJson(json['repository'] as Map<String, dynamic>);
}
