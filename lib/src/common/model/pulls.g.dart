// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pulls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PullRequest _$PullRequestFromJson(Map<String, dynamic> json) {
  return PullRequest(
    id: json['id'] as int?,
    htmlUrl: json['htmlUrl'] as String?,
    diffUrl: json['diffUrl'] as String?,
    patchUrl: json['patchUrl'] as String?,
    number: json['number'] as int?,
    state: json['state'] as String?,
    title: json['title'] as String?,
    body: json['body'] as String?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    closedAt: json['closedAt'] == null
        ? null
        : DateTime.parse(json['closedAt'] as String),
    mergedAt: json['mergedAt'] == null
        ? null
        : DateTime.parse(json['mergedAt'] as String),
    head: json['head'] == null
        ? null
        : PullRequestHead.fromJson(json['head'] as Map<String, dynamic>),
    base: json['base'] == null
        ? null
        : PullRequestHead.fromJson(json['base'] as Map<String, dynamic>),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    draft: json['draft'] as bool?,
    mergeCommitSha: json['mergeCommitSha'] as String?,
    merged: json['merged'] as bool?,
    mergeable: json['mergeable'] as bool?,
    mergedBy: json['mergedBy'] == null
        ? null
        : User.fromJson(json['mergedBy'] as Map<String, dynamic>),
    commentsCount: json['commentsCount'] as int?,
    commitsCount: json['commitsCount'] as int?,
    additionsCount: json['additionsCount'] as int?,
    deletionsCount: json['deletionsCount'] as int?,
    changedFilesCount: json['changedFilesCount'] as int?,
    labels: (json['labels'] as List<dynamic>?)
        ?.map((e) => IssueLabel.fromJson(e as Map<String, dynamic>))
        .toList(),
  );
}

Map<String, dynamic> _$PullRequestToJson(PullRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'htmlUrl': instance.htmlUrl,
      'diffUrl': instance.diffUrl,
      'patchUrl': instance.patchUrl,
      'number': instance.number,
      'state': instance.state,
      'title': instance.title,
      'body': instance.body,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'closedAt': instance.closedAt?.toIso8601String(),
      'mergedAt': instance.mergedAt?.toIso8601String(),
      'head': instance.head,
      'base': instance.base,
      'user': instance.user,
      'draft': instance.draft,
      'mergeCommitSha': instance.mergeCommitSha,
      'merged': instance.merged,
      'mergeable': instance.mergeable,
      'mergedBy': instance.mergedBy,
      'commentsCount': instance.commentsCount,
      'commitsCount': instance.commitsCount,
      'additionsCount': instance.additionsCount,
      'deletionsCount': instance.deletionsCount,
      'changedFilesCount': instance.changedFilesCount,
      'labels': instance.labels,
    };

PullRequestMerge _$PullRequestMergeFromJson(Map<String, dynamic> json) {
  return PullRequestMerge(
    merged: json['merged'] as bool?,
    sha: json['sha'] as String?,
    message: json['message'] as String?,
  );
}

Map<String, dynamic> _$PullRequestMergeToJson(PullRequestMerge instance) =>
    <String, dynamic>{
      'merged': instance.merged,
      'sha': instance.sha,
      'message': instance.message,
    };

PullRequestHead _$PullRequestHeadFromJson(Map<String, dynamic> json) {
  return PullRequestHead(
    label: json['label'] as String?,
    ref: json['ref'] as String?,
    sha: json['sha'] as String?,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    repo: json['repo'] == null
        ? null
        : Repository.fromJson(json['repo'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PullRequestHeadToJson(PullRequestHead instance) =>
    <String, dynamic>{
      'label': instance.label,
      'ref': instance.ref,
      'sha': instance.sha,
      'user': instance.user,
      'repo': instance.repo,
    };

CreatePullRequest _$CreatePullRequestFromJson(Map<String, dynamic> json) {
  return CreatePullRequest(
    json['title'] as String?,
    json['head'] as String?,
    json['base'] as String?,
    draft: json['draft'] as bool?,
    body: json['body'] as String?,
  );
}

Map<String, dynamic> _$CreatePullRequestToJson(CreatePullRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'head': instance.head,
      'base': instance.base,
      'draft': instance.draft,
      'body': instance.body,
    };

PullRequestComment _$PullRequestCommentFromJson(Map<String, dynamic> json) {
  return PullRequestComment(
    id: json['id'] as int?,
    diffHunk: json['diffHunk'] as String?,
    path: json['path'] as String?,
    position: json['position'] as int?,
    originalPosition: json['originalPosition'] as int?,
    commitId: json['commitId'] as String?,
    originalCommitId: json['originalCommitId'] as String?,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    body: json['body'] as String?,
    createdAt: json['createdAt'] == null
        ? null
        : DateTime.parse(json['createdAt'] as String),
    updatedAt: json['updatedAt'] == null
        ? null
        : DateTime.parse(json['updatedAt'] as String),
    url: json['url'] as String?,
    pullRequestUrl: json['pullRequestUrl'] as String?,
    links: json['_links'] == null
        ? null
        : Links.fromJson(json['_links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PullRequestCommentToJson(PullRequestComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'diffHunk': instance.diffHunk,
      'path': instance.path,
      'position': instance.position,
      'originalPosition': instance.originalPosition,
      'commitId': instance.commitId,
      'originalCommitId': instance.originalCommitId,
      'user': instance.user,
      'body': instance.body,
      'createdAt': instance.createdAt?.toIso8601String(),
      'updatedAt': instance.updatedAt?.toIso8601String(),
      'url': instance.url,
      'pullRequestUrl': instance.pullRequestUrl,
      '_links': instance.links,
    };

CreatePullRequestComment _$CreatePullRequestCommentFromJson(
    Map<String, dynamic> json) {
  return CreatePullRequestComment(
    json['body'] as String?,
    json['commitId'] as String?,
    json['path'] as String?,
    json['position'] as int?,
  );
}

Map<String, dynamic> _$CreatePullRequestCommentToJson(
        CreatePullRequestComment instance) =>
    <String, dynamic>{
      'body': instance.body,
      'commitId': instance.commitId,
      'path': instance.path,
      'position': instance.position,
    };

PullRequestFile _$PullRequestFileFromJson(Map<String, dynamic> json) {
  return PullRequestFile(
    sha: json['sha'] as String?,
    filename: json['filename'] as String?,
    status: json['status'] as String?,
    additionsCount: json['additions'] as int?,
    deletionsCount: json['deletions'] as int?,
    changesCount: json['changes'] as int?,
    blobUrl: json['blobUrl'] as String?,
    rawUrl: json['rawUrl'] as String?,
    contentsUrl: json['contentsUrl'] as String?,
    patch: json['patch'] as String?,
  );
}

Map<String, dynamic> _$PullRequestFileToJson(PullRequestFile instance) =>
    <String, dynamic>{
      'sha': instance.sha,
      'filename': instance.filename,
      'status': instance.status,
      'additions': instance.additionsCount,
      'deletions': instance.deletionsCount,
      'changes': instance.changesCount,
      'blobUrl': instance.blobUrl,
      'rawUrl': instance.rawUrl,
      'contentsUrl': instance.contentsUrl,
      'patch': instance.patch,
    };
