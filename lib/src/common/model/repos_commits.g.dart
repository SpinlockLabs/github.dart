// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'repos_commits.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

RepositoryCommit _$RepositoryCommitFromJson(Map<String, dynamic> json) {
  return RepositoryCommit(
    url: json['url'] as String?,
    sha: json['sha'] as String?,
    htmlUrl: json['html_url'] as String?,
    commentsUrl: json['comments_url'] as String?,
    commit: json['commit'] == null
        ? null
        : GitCommit.fromJson(json['commit'] as Map<String, dynamic>),
    author: json['author'] == null
        ? null
        : User.fromJson(json['author'] as Map<String, dynamic>),
    committer: json['committer'] == null
        ? null
        : User.fromJson(json['committer'] as Map<String, dynamic>),
    parents: (json['parents'] as List<dynamic>?)
        ?.map((e) => GitCommit.fromJson(e as Map<String, dynamic>))
        .toList(),
    stats: json['stats'] == null
        ? null
        : CommitStats.fromJson(json['stats'] as Map<String, dynamic>),
    files: (json['files'] as List<dynamic>?)
        ?.map((e) => CommitFile.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$RepositoryCommitToJson(RepositoryCommit instance) =>
    <String, dynamic>{
      'url': instance.url,
      'sha': instance.sha,
      'html_url': instance.htmlUrl,
      'comments_url': instance.commentsUrl,
      'commit': instance.commit,
      'author': instance.author,
      'committer': instance.committer,
      'parents': instance.parents,
      'stats': instance.stats,
      'files': instance.files,
    };

CommitStats _$CommitStatsFromJson(Map<String, dynamic> json) {
  return CommitStats(
    additions: json['additions'] as int?,
    deletions: json['deletions'] as int?,
    total: json['total'] as int?,
  );
}

Map<String, dynamic> _$CommitStatsToJson(CommitStats instance) =>
    <String, dynamic>{
      'additions': instance.additions,
      'deletions': instance.deletions,
      'total': instance.total,
    };

CommitFile _$CommitFileFromJson(Map<String, dynamic> json) {
  return CommitFile(
    name: json['filename'] as String?,
    additions: json['additions'] as int?,
    deletions: json['deletions'] as int?,
    changes: json['changes'] as int?,
    status: json['status'] as String?,
    rawUrl: json['raw_url'] as String?,
    blobUrl: json['blob_url'] as String?,
    patch: json['patch'] as String?,
  );
}

Map<String, dynamic> _$CommitFileToJson(CommitFile instance) =>
    <String, dynamic>{
      'filename': instance.name,
      'additions': instance.additions,
      'deletions': instance.deletions,
      'changes': instance.changes,
      'status': instance.status,
      'raw_url': instance.rawUrl,
      'blob_url': instance.blobUrl,
      'patch': instance.patch,
    };

CommitComment _$CommitCommentFromJson(Map<String, dynamic> json) {
  return CommitComment(
    id: json['id'] as int?,
    line: json['line'] as int?,
    position: json['position'] as int?,
    path: json['path'] as String?,
    apiUrl: json['url'] as String?,
    commitId: json['commitId'] as String?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    htmlUrl: json['htmlUrl'] as String?,
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    body: json['body'] as String?,
  );
}

Map<String, dynamic> _$CommitCommentToJson(CommitComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'path': instance.path,
      'line': instance.line,
      'position': instance.position,
      'commitId': instance.commitId,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'htmlUrl': instance.htmlUrl,
      'url': instance.apiUrl,
      'body': instance.body,
    };
