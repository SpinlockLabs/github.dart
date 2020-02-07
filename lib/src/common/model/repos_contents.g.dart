// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_contents.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitHubFile _$GitHubFileFromJson(Map<String, dynamic> json) {
  return GitHubFile(
    type: json['type'] as String,
    encoding: json['encoding'] as String,
    size: json['size'] as int,
    name: json['name'] as String,
    path: json['path'] as String,
    content: json['content'] as String,
    sha: json['sha'] as String,
    htmlUrl: json['html_url'] as String,
    gitUrl: json['git_url'] as String,
    downloadUrl: json['download_url'] as String,
    links: json['_links'] == null
        ? null
        : Links.fromJson(json['_links'] as Map<String, dynamic>),
    sourceRepository: json['sourceRepository'] == null
        ? null
        : RepositorySlug.fromJson(
            json['sourceRepository'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GitHubFileToJson(GitHubFile instance) =>
    <String, dynamic>{
      'type': instance.type,
      'encoding': instance.encoding,
      'size': instance.size,
      'name': instance.name,
      'path': instance.path,
      'content': instance.content,
      'sha': instance.sha,
      'html_url': instance.htmlUrl,
      'git_url': instance.gitUrl,
      'download_url': instance.downloadUrl,
      '_links': instance.links,
      'sourceRepository': instance.sourceRepository,
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

RepositoryContents _$RepositoryContentsFromJson(Map<String, dynamic> json) {
  return RepositoryContents(
    file: json['file'] == null
        ? null
        : GitHubFile.fromJson(json['file'] as Map<String, dynamic>),
    tree: (json['tree'] as List)
        ?.map((e) =>
            e == null ? null : GitHubFile.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$RepositoryContentsToJson(RepositoryContents instance) =>
    <String, dynamic>{
      'file': instance.file,
      'tree': instance.tree,
    };

CreateFile _$CreateFileFromJson(Map<String, dynamic> json) {
  return CreateFile(
    path: json['path'] as String,
    content: json['content'] as String,
    message: json['message'] as String,
    branch: json['branch'] as String,
    committer: json['committer'] == null
        ? null
        : CommitUser.fromJson(json['committer'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateFileToJson(CreateFile instance) =>
    <String, dynamic>{
      'path': instance.path,
      'message': instance.message,
      'content': instance.content,
      'branch': instance.branch,
      'committer': instance.committer,
    };

CommitUser _$CommitUserFromJson(Map<String, dynamic> json) {
  return CommitUser(
    json['name'] as String,
    json['email'] as String,
  );
}

Map<String, dynamic> _$CommitUserToJson(CommitUser instance) =>
    <String, dynamic>{
      'name': instance.name,
      'email': instance.email,
    };

ContentCreation _$ContentCreationFromJson(Map<String, dynamic> json) {
  return ContentCreation(
    json['commit'] == null
        ? null
        : RepositoryCommit.fromJson(json['commit'] as Map<String, dynamic>),
    json['content'] == null
        ? null
        : GitHubFile.fromJson(json['content'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$ContentCreationToJson(ContentCreation instance) =>
    <String, dynamic>{
      'commit': instance.commit,
      'content': instance.content,
    };
