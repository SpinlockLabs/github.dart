// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'git.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

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
