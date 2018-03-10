// GENERATED CODE - DO NOT MODIFY BY HAND

part of github.common;

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitTree _$GitTreeFromJson(Map<String, dynamic> json) {
  return new GitTree(
      json['sha'] as String,
      json['url'] as String,
      json['truncated'] as bool,
      (json['tree'] as List)
          ?.map((e) => e == null
              ? null
              : new GitTreeEntry.fromJson(e as Map<String, dynamic>))
          ?.toList());
}

GitTreeEntry _$GitTreeEntryFromJson(Map<String, dynamic> json) {
  return new GitTreeEntry(
      json['path'] as String,
      json['mode'] as String,
      json['type'] as String,
      json['size'] as int,
      json['sha'] as String,
      json['url'] as String);
}

GitHubComparison _$GitHubComparisonFromJson(Map<String, dynamic> json) {
  return new GitHubComparison(
      json['url'] as String,
      json['status'] as String,
      json['ahead_by'] as int,
      json['behind_by'] as int,
      json['total_commits'] as int);
}

Tag _$TagFromJson(Map<String, dynamic> json) {
  return new Tag(
      json['name'] as String,
      json['commit'] == null
          ? null
          : new CommitInfo.fromJson(json['commit'] as Map<String, dynamic>),
      json['zipball_url'] as String,
      json['tarball_url'] as String);
}

CommitData _$CommitDataFromJson(Map<String, dynamic> json) {
  return new CommitData(
      json['sha'] as String,
      json['commit'] == null ? null : new GitCommit.fromJson(json['commit']),
      json['url'] as String,
      json['html_url'] as String,
      json['comments_url'] as String,
      json['author'] == null
          ? null
          : new CommitDataUser.fromJson(json['author'] as Map<String, dynamic>),
      json['committer'] == null
          ? null
          : new CommitDataUser.fromJson(
              json['committer'] as Map<String, dynamic>),
      (json['parents'] as List)
          ?.map((e) => e as Map<String, dynamic>)
          ?.toList());
}

CommitDataUser _$CommitDataUserFromJson(Map<String, dynamic> json) {
  return new CommitDataUser(
      json['login'] as String, json['id'] as int, json['type'] as String);
}

CommitInfo _$CommitInfoFromJson(Map<String, dynamic> json) {
  return new CommitInfo(
      json['sha'] as String,
      json['tree'] == null
          ? null
          : new GitTree.fromJson(json['tree'] as Map<String, dynamic>));
}

UserInformation _$UserInformationFromJson(Map<String, dynamic> json) {
  return new UserInformation(json['login'] as String, json['id'] as int,
      json['avatar_url'] as String, json['html_url'] as String);
}

Branch _$BranchFromJson(Map<String, dynamic> json) {
  return new Branch(
      json['name'] as String,
      json['commit'] == null
          ? null
          : new CommitData.fromJson(json['commit'] as Map<String, dynamic>));
}

LicenseDetails _$LicenseDetailsFromJson(Map<String, dynamic> json) {
  return new LicenseDetails(
      name: json['name'] as String,
      path: json['path'] as String,
      sha: json['sha'] as String,
      size: json['size'] as int,
      url: json['url'] == null ? null : Uri.parse(json['url'] as String),
      htmlUrl: json['html_url'] == null
          ? null
          : Uri.parse(json['html_url'] as String),
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
          : new Links.fromJson(json['_links'] as Map<String, dynamic>),
      license: json['license'] == null
          ? null
          : new LicenseKind.fromJson(json['license'] as Map<String, dynamic>));
}

abstract class _$LicenseDetailsSerializerMixin {
  String get name;
  String get path;
  String get sha;
  int get size;
  Uri get url;
  Uri get htmlUrl;
  Uri get gitUrl;
  Uri get downloadUrl;
  String get type;
  String get content;
  String get encoding;
  Links get links;
  LicenseKind get license;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'name': name,
        'path': path,
        'sha': sha,
        'size': size,
        'url': url?.toString(),
        'html_url': htmlUrl?.toString(),
        'git_url': gitUrl?.toString(),
        'download_url': downloadUrl?.toString(),
        'type': type,
        'content': content,
        'encoding': encoding,
        '_links': links,
        'license': license
      };
}

LicenseKind _$LicenseKindFromJson(Map<String, dynamic> json) {
  return new LicenseKind(
      key: json['key'] as String,
      name: json['name'] as String,
      spdxId: json['spdx_id'] as String,
      url: json['url'] == null ? null : Uri.parse(json['url'] as String),
      nodeId: json['node_id'] as String);
}

abstract class _$LicenseKindSerializerMixin {
  String get key;
  String get name;
  String get spdxId;
  Uri get url;
  String get nodeId;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'key': key,
        'name': name,
        'spdx_id': spdxId,
        'url': url?.toString(),
        'node_id': nodeId
      };
}

Links _$LinksFromJson(Map<String, dynamic> json) {
  return new Links(
      git: json['git'] == null ? null : Uri.parse(json['git'] as String),
      self: json['self'] == null ? null : Uri.parse(json['self'] as String),
      html: json['html'] == null ? null : Uri.parse(json['html'] as String));
}

abstract class _$LinksSerializerMixin {
  Uri get self;
  Uri get git;
  Uri get html;
  Map<String, dynamic> toJson() => <String, dynamic>{
        'self': self?.toString(),
        'git': git?.toString(),
        'html': html?.toString()
      };
}
