// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pulls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PullRequest _$PullRequestFromJson(Map<String, dynamic> json) => PullRequest(
      id: json['id'] as int?,
      nodeId: json['node_id'] as String?,
      htmlUrl: json['html_url'] as String?,
      diffUrl: json['diff_url'] as String?,
      patchUrl: json['patch_url'] as String?,
      number: json['number'] as int?,
      state: json['state'] as String?,
      title: json['title'] as String?,
      body: json['body'] as String?,
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
      draft: json['draft'] as bool?,
      mergeCommitSha: json['merge_commit_sha'] as String?,
      merged: json['merged'] as bool?,
      mergeable: json['mergeable'] as bool?,
      mergedBy: json['merged_by'] == null
          ? null
          : User.fromJson(json['merged_by'] as Map<String, dynamic>),
      commentsCount: json['comments'] as int? ?? 0,
      commitsCount: json['commits'] as int? ?? 0,
      additionsCount: json['additions'] as int? ?? 0,
      deletionsCount: json['deletions'] as int? ?? 0,
      changedFilesCount: json['changed_files'] as int? ?? 0,
      labels: (json['labels'] as List<dynamic>?)
          ?.map((e) => IssueLabel.fromJson(e as Map<String, dynamic>))
          .toList(),
      requestedReviewers: (json['requested_reviewers'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewCommentCount: json['review_comments'] as int? ?? 0,
      milestone: json['milestone'] == null
          ? null
          : Milestone.fromJson(json['milestone'] as Map<String, dynamic>),
      rebaseable: json['rebaseable'] as bool? ?? false,
      mergeableState: json['mergeable_state'] as String? ?? '',
      maintainerCanModify: json['maintainer_can_modify'] as bool? ?? false,
      authorAssociation: json['author_association'] as String? ?? '',
    )..repo = json['repo'] == null
        ? null
        : Repository.fromJson(json['repo'] as Map<String, dynamic>);

Map<String, dynamic> _$PullRequestToJson(PullRequest instance) =>
    <String, dynamic>{
      'id': instance.id,
      'node_id': instance.nodeId,
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
      'comments': instance.commentsCount,
      'commits': instance.commitsCount,
      'additions': instance.additionsCount,
      'deletions': instance.deletionsCount,
      'changed_files': instance.changedFilesCount,
      'labels': instance.labels,
      'requested_reviewers': instance.requestedReviewers,
      'review_comments': instance.reviewCommentCount,
      'milestone': instance.milestone,
      'rebaseable': instance.rebaseable,
      'mergeable_state': instance.mergeableState,
      'maintainer_can_modify': instance.maintainerCanModify,
      'author_association': instance.authorAssociation,
      'repo': instance.repo,
    };

PullRequestMerge _$PullRequestMergeFromJson(Map<String, dynamic> json) =>
    PullRequestMerge(
      merged: json['merged'] as bool?,
      sha: json['sha'] as String?,
      message: json['message'] as String?,
    );

Map<String, dynamic> _$PullRequestMergeToJson(PullRequestMerge instance) =>
    <String, dynamic>{
      'merged': instance.merged,
      'sha': instance.sha,
      'message': instance.message,
    };

PullRequestHead _$PullRequestHeadFromJson(Map<String, dynamic> json) =>
    PullRequestHead(
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

Map<String, dynamic> _$PullRequestHeadToJson(PullRequestHead instance) =>
    <String, dynamic>{
      'label': instance.label,
      'ref': instance.ref,
      'sha': instance.sha,
      'user': instance.user,
      'repo': instance.repo,
    };

CreatePullRequest _$CreatePullRequestFromJson(Map<String, dynamic> json) =>
    CreatePullRequest(
      json['title'] as String?,
      json['head'] as String?,
      json['base'] as String?,
      draft: json['draft'] as bool? ?? false,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$CreatePullRequestToJson(CreatePullRequest instance) =>
    <String, dynamic>{
      'title': instance.title,
      'head': instance.head,
      'base': instance.base,
      'draft': instance.draft,
      'body': instance.body,
    };

PullRequestComment _$PullRequestCommentFromJson(Map<String, dynamic> json) =>
    PullRequestComment(
      id: json['id'] as int?,
      diffHunk: json['diff_hunk'] as String?,
      path: json['path'] as String?,
      position: json['position'] as int?,
      originalPosition: json['original_position'] as int?,
      commitId: json['commit_id'] as String?,
      originalCommitId: json['original_commit_id'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
      body: json['body'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      url: json['url'] as String?,
      pullRequestUrl: json['pull_request_url'] as String?,
      links: json['_links'] == null
          ? null
          : Links.fromJson(json['_links'] as Map<String, dynamic>),
    );

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
        Map<String, dynamic> json) =>
    CreatePullRequestComment(
      json['body'] as String?,
      json['commit_id'] as String?,
      json['path'] as String?,
      json['position'] as int?,
    );

Map<String, dynamic> _$CreatePullRequestCommentToJson(
        CreatePullRequestComment instance) =>
    <String, dynamic>{
      'body': instance.body,
      'commit_id': instance.commitId,
      'path': instance.path,
      'position': instance.position,
    };

PullRequestFile _$PullRequestFileFromJson(Map<String, dynamic> json) =>
    PullRequestFile(
      sha: json['sha'] as String?,
      filename: json['filename'] as String?,
      status: json['status'] as String?,
      additionsCount: json['additions'] as int?,
      deletionsCount: json['deletions'] as int?,
      changesCount: json['changes'] as int?,
      blobUrl: json['blob_url'] as String?,
      rawUrl: json['raw_url'] as String?,
      contentsUrl: json['contents_url'] as String?,
      patch: json['patch'] as String?,
    );

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

PullRequestReview _$PullRequestReviewFromJson(Map<String, dynamic> json) =>
    PullRequestReview(
      id: json['id'] as int,
      user: User.fromJson(json['user'] as Map<String, dynamic>),
      body: json['body'] as String?,
      state: json['state'] as String?,
      htmlUrl: json['html_url'] as String?,
      pullRequestUrl: json['pull_request_url'] as String?,
    )
      ..submittedAt = json['submitted_at'] == null
          ? null
          : DateTime.parse(json['submitted_at'] as String)
      ..authorAssociation = json['author_association'] as String?
      ..commitId = json['commit_id'] as String?;

Map<String, dynamic> _$PullRequestReviewToJson(PullRequestReview instance) =>
    <String, dynamic>{
      'id': instance.id,
      'user': instance.user,
      'body': instance.body,
      'state': instance.state,
      'html_url': instance.htmlUrl,
      'pull_request_url': instance.pullRequestUrl,
      'submitted_at': instance.submittedAt?.toIso8601String(),
      'author_association': instance.authorAssociation,
      'commit_id': instance.commitId,
    };

CreatePullRequestReview _$CreatePullRequestReviewFromJson(
        Map<String, dynamic> json) =>
    CreatePullRequestReview(
      json['owner'] as String,
      json['repo'] as String,
      json['pull_number'] as int,
      json['event'] as String,
      body: json['body'] as String?,
    );

Map<String, dynamic> _$CreatePullRequestReviewToJson(
        CreatePullRequestReview instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'repo': instance.repo,
      'event': instance.event,
      'body': instance.body,
      'pull_number': instance.pullNumber,
    };
