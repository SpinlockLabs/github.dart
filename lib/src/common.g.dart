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
      'license': instance.license
    };

LicenseKind _$LicenseKindFromJson(Map<String, dynamic> json) {
  return new LicenseKind(
      key: json['key'] as String,
      name: json['name'] as String,
      spdxId: json['spdx_id'] as String,
      url: json['url'] == null ? null : Uri.parse(json['url'] as String),
      nodeId: json['node_id'] as String);
}

Map<String, dynamic> _$LicenseKindToJson(LicenseKind instance) =>
    <String, dynamic>{
      'key': instance.key,
      'name': instance.name,
      'spdx_id': instance.spdxId,
      'url': instance.url?.toString(),
      'node_id': instance.nodeId
    };

Links _$LinksFromJson(Map<String, dynamic> json) {
  return new Links(
      git: json['git'] == null ? null : Uri.parse(json['git'] as String),
      self: json['self'] == null ? null : Uri.parse(json['self'] as String),
      html: json['html'] == null ? null : Uri.parse(json['html'] as String));
}

Map<String, dynamic> _$LinksToJson(Links instance) => <String, dynamic>{
      'self': instance.self?.toString(),
      'git': instance.git?.toString(),
      'html': instance.html?.toString()
    };
