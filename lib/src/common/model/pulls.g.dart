// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pulls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PullRequest _$PullRequestFromJson(Map<String, dynamic> json) {
  return PullRequest(
    id: json['id'] as int,
    htmlUrl: json['html_url'] as String,
    diffUrl: json['diff_url'] as String,
    patchUrl: json['patch_url'] as String,
    number: json['number'] as int,
    state: json['state'] as String,
    title: json['title'] as String,
    body: json['body'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    closedAt: json['closed_at'] == null
        ? null
        : DateTime.parse(json['closed_at'] as String),
    mergedAt: json['merged_at'] == null
        ? null
        : DateTime.parse(json['merged_at'] as String),
    head: json['head'] == null
        ? null
        : PullRequestHead.fromJson(json['head'] as Map<String, dynamic>),
    base: json['base'] == null
        ? null
        : PullRequestHead.fromJson(json['base'] as Map<String, dynamic>),
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    draft: json['draft'] as bool,
    mergeCommitSha: json['merge_commit_sha'] as String,
    merged: json['merged'] as bool,
    mergeable: json['mergeable'] as bool,
    mergedBy: json['merged_by'] == null
        ? null
        : User.fromJson(json['merged_by'] as Map<String, dynamic>),
    commentsCount: json['comments_count'] as int,
    commitsCount: json['commits_count'] as int,
    additionsCount: json['additions_count'] as int,
    deletionsCount: json['deletions_count'] as int,
    changedFilesCount: json['changed_files_count'] as int,
    labels: (json['labels'] as List)
        ?.map((e) =>
            e == null ? null : IssueLabel.fromJson(e as Map<String, dynamic>))
        ?.toList(),
  );
}

Map<String, dynamic> _$PullRequestToJson(PullRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'html_url': instance.htmlUrl,
      'diff_url': instance.diffUrl,
      'patch_url': instance.patchUrl,
      'number': instance.number,
      'state': instance.state,
      'title': instance.title,
      'body': instance.body,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'closed_at': instance.closedAt?.toIso8601String(),
      'merged_at': instance.mergedAt?.toIso8601String(),
      'head': instance.head,
      'base': instance.base,
      'user': instance.user,
      'draft': instance.draft,
      'merge_commit_sha': instance.mergeCommitSha,
      'merged': instance.merged,
      'mergeable': instance.mergeable,
      'merged_by': instance.mergedBy,
      'comments_count': instance.commentsCount,
      'commits_count': instance.commitsCount,
      'additions_count': instance.additionsCount,
      'deletions_count': instance.deletionsCount,
      'changed_files_count': instance.changedFilesCount,
      'labels': instance.labels,
    };

PullRequestMerge _$PullRequestMergeFromJson(Map<String, dynamic> json) {
  return PullRequestMerge(
    merged: json['merged'] as bool,
    sha: json['sha'] as String,
    message: json['message'] as String,
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
    label: json['label'] as String,
    ref: json['ref'] as String,
    sha: json['sha'] as String,
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
    json['title'] as String,
    json['head'] as String,
    json['base'] as String,
    draft: json['draft'] as bool,
    body: json['body'] as String,
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
    id: json['id'] as int,
    diffHunk: json['diff_hunk'] as String,
    path: json['path'] as String,
    position: json['position'] as int,
    originalPosition: json['original_position'] as int,
    commitId: json['commit_id'] as String,
    originalCommitId: json['original_commit_id'] as String,
    user: json['user'] == null
        ? null
        : User.fromJson(json['user'] as Map<String, dynamic>),
    body: json['body'] as String,
    createdAt: json['created_at'] == null
        ? null
        : DateTime.parse(json['created_at'] as String),
    updatedAt: json['updated_at'] == null
        ? null
        : DateTime.parse(json['updated_at'] as String),
    url: json['url'] as String,
    pullRequestUrl: json['pull_request_url'] as String,
    links: json['_links'] == null
        ? null
        : Links.fromJson(json['_links'] as Map<String, dynamic>),
  );
}

Map<String, dynamic> _$PullRequestCommentToJson(PullRequestComment instance) =>
    <String, dynamic>{
      'id': instance.id,
      'diff_hunk': instance.diffHunk,
      'path': instance.path,
      'position': instance.position,
      'original_position': instance.originalPosition,
      'commit_id': instance.commitId,
      'original_commit_id': instance.originalCommitId,
      'user': instance.user,
      'body': instance.body,
      'created_at': instance.createdAt?.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
      'url': instance.url,
      'pull_request_url': instance.pullRequestUrl,
      '_links': instance.links,
    };

CreatePullRequestComment _$CreatePullRequestCommentFromJson(
    Map<String, dynamic> json) {
  return CreatePullRequestComment(
    json['body'] as String,
    json['commit_id'] as String,
    json['path'] as String,
    json['position'] as int,
  );
}

Map<String, dynamic> _$CreatePullRequestCommentToJson(
        CreatePullRequestComment instance) =>
    <String, dynamic>{
      'body': instance.body,
      'commit_id': instance.commitId,
      'path': instance.path,
      'position': instance.position,
    };

PullRequestFile _$PullRequestFileFromJson(Map<String, dynamic> json) {
  return PullRequestFile(
    sha: json['sha'] as String,
    filename: json['filename'] as String,
    status: json['status'] as String,
    additionsCount: json['additions'] as int,
    deletionsCount: json['deletions'] as int,
    changesCount: json['changes'] as int,
    blobUrl: json['blob_url'] as String,
    rawUrl: json['raw_url'] as String,
    contentsUrl: json['contents_url'] as String,
    patch: json['patch'] as String,
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
      'blob_url': instance.blobUrl,
      'raw_url': instance.rawUrl,
      'contents_url': instance.contentsUrl,
      'patch': instance.patch,
    };
