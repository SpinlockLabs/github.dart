// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GitBlob _$GitBlobFromJson(Map<String, dynamic> json) {
  return GitBlob(
    content: json['content'] as String,
    encoding: json['encoding'] as String,
    url: json['url'] as String,
    sha: json['sha'] as String,
    size: json['size'] as int,
  );
}

Map<String, dynamic> _$GitBlobToJson(GitBlob instance) => <String, dynamic>{
      'content': instance.content,
      'encoding': instance.encoding,
      'url': instance.url,
      'sha': instance.sha,
      'size': instance.size,
    };

CreateGitBlob _$CreateGitBlobFromJson(Map<String, dynamic> json) {
  return CreateGitBlob(
    json['content'] as String,
    json['encoding'] as String,
  );
}

Map<String, dynamic> _$CreateGitBlobToJson(CreateGitBlob instance) =>
    <String, dynamic>{
      'content': instance.content,
      'encoding': instance.encoding,
    };

GitCommit _$GitCommitFromJson(Map<String, dynamic> json) {
  return GitCommit(
    sha: json['sha'] as String,
    url: json['url'] as String,
    author: json['author'] == null
        ? null
        : GitCommitUser.fromJson(json['author'] as Map<String, dynamic>),
    committer: json['committer'] == null
        ? null
        : GitCommitUser.fromJson(json['committer'] as Map<String, dynamic>),
    message: json['message'] as String,
    tree: json['tree'] == null
        ? null
        : GitTree.fromJson(json['tree'] as Map<String, dynamic>),
    parents: (json['parents'] as List)
        ?.map((e) =>
            e == null ? null : GitCommit.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    commentCount: json['comment_count'] as int,
  );
}

Map<String, dynamic> _$GitCommitToJson(GitCommit instance) => <String, dynamic>{
      'sha': instance.sha,
      'url': instance.url,
      'author': instance.author,
      'committer': instance.committer,
      'message': instance.message,
      'tree': instance.tree,
      'parents': instance.parents,
      'comment_count': instance.commentCount,
    };

CreateGitCommit _$CreateGitCommitFromJson(Map<String, dynamic> json) {
  return CreateGitCommit(
    json['message'] as String,
    json['tree'] as String,
    parents: (json['parents'] as List)?.map((e) => e as String)?.toList(),
    committer: json['committer'] == null
        ? null
        : GitCommitUser.fromJson(json['committer'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : GitCommitUser.fromJson(json['author'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateGitCommitToJson(CreateGitCommit instance) =>
    <String, dynamic>{
      'message': instance.message,
      'tree': instance.tree,
      'parents': instance.parents,
      'committer': instance.committer,
      'author': instance.author,
    };

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

Map<String, dynamic> _$GitTreeToJson(GitTree instance) => <String, dynamic>{
      'sha': instance.sha,
      'url': instance.url,
      'truncated': instance.truncated,
      'tree': instance.entries,
    };

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

Map<String, dynamic> _$GitTreeEntryToJson(GitTreeEntry instance) =>
    <String, dynamic>{
      'path': instance.path,
      'mode': instance.mode,
      'type': instance.type,
      'size': instance.size,
      'sha': instance.sha,
      'url': instance.url,
    };

CreateGitTree _$CreateGitTreeFromJson(Map<String, dynamic> json) {
  return CreateGitTree(
    (json['tree'] as List)
        ?.map((e) => e == null
            ? null
            : CreateGitTreeEntry.fromJson(e as Map<String, dynamic>))
        ?.toList(),
    baseTree: json['base_tree'] as String,
  );
}

Map<String, dynamic> _$CreateGitTreeToJson(CreateGitTree instance) =>
    <String, dynamic>{
      'base_tree': instance.baseTree,
      'tree': instance.entries,
    };

CreateGitTreeEntry _$CreateGitTreeEntryFromJson(Map<String, dynamic> json) {
  return CreateGitTreeEntry(
    json['path'] as String,
    json['mode'] as String,
    json['type'] as String,
    sha: json['sha'] as String,
    content: json['content'] as String,
  );
}

Map<String, dynamic> _$CreateGitTreeEntryToJson(CreateGitTreeEntry instance) =>
    <String, dynamic>{
      'path': instance.path,
      'mode': instance.mode,
      'type': instance.type,
      'sha': instance.sha,
      'content': instance.content,
    };

GitReference _$GitReferenceFromJson(Map<String, dynamic> json) {
  return GitReference(
    ref: json['ref'] as String,
    url: json['url'] as String,
    object: json['object'] == null
        ? null
        : GitObject.fromJson(json['object'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GitReferenceToJson(GitReference instance) =>
    <String, dynamic>{
      'ref': instance.ref,
      'url': instance.url,
      'object': instance.object,
    };

GitTag _$GitTagFromJson(Map<String, dynamic> json) {
  return GitTag(
    tag: json['tag'] as String,
    sha: json['sha'] as String,
    url: json['url'] as String,
    message: json['message'] as String,
    tagger: json['tagger'] == null
        ? null
        : GitCommitUser.fromJson(json['tagger'] as Map<String, dynamic>),
    object: json['object'] == null
        ? null
        : GitObject.fromJson(json['object'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$GitTagToJson(GitTag instance) => <String, dynamic>{
      'tag': instance.tag,
      'sha': instance.sha,
      'url': instance.url,
      'message': instance.message,
      'tagger': instance.tagger,
      'object': instance.object,
    };

CreateGitTag _$CreateGitTagFromJson(Map<String, dynamic> json) {
  return CreateGitTag(
    json['tag'] as String,
    json['message'] as String,
    json['object'] as String,
    json['type'] as String,
    json['tagger'] == null
        ? null
        : GitCommitUser.fromJson(json['tagger'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$CreateGitTagToJson(CreateGitTag instance) =>
    <String, dynamic>{
      'tag': instance.tag,
      'message': instance.message,
      'object': instance.object,
      'type': instance.type,
      'tagger': instance.tagger,
    };

GitObject _$GitObjectFromJson(Map<String, dynamic> json) {
  return GitObject(
    json['type'] as String,
    json['sha'] as String,
    json['url'] as String,
  );
}

Map<String, dynamic> _$GitObjectToJson(GitObject instance) => <String, dynamic>{
      'type': instance.type,
      'sha': instance.sha,
      'url': instance.url,
    };
