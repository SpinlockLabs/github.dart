// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'pulls.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PullRequest _$PullRequestFromJson(Map<String, dynamic> json) => PullRequest(
      id: (json['id'] as num?)?.toInt(),
      nodeId: json['node_id'] as String?,
      htmlUrl: json['html_url'] as String?,
      diffUrl: json['diff_url'] as String?,
      patchUrl: json['patch_url'] as String?,
      number: (json['number'] as num?)?.toInt(),
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
      commentsCount: (json['comments'] as num?)?.toInt() ?? 0,
      commitsCount: (json['commits'] as num?)?.toInt() ?? 0,
      additionsCount: (json['additions'] as num?)?.toInt() ?? 0,
      deletionsCount: (json['deletions'] as num?)?.toInt() ?? 0,
      changedFilesCount: (json['changed_files'] as num?)?.toInt() ?? 0,
      labels: (json['labels'] as List<dynamic>?)
          ?.map((e) => IssueLabel.fromJson(e as Map<String, dynamic>))
          .toList(),
      requestedReviewers: (json['requested_reviewers'] as List<dynamic>?)
          ?.map((e) => User.fromJson(e as Map<String, dynamic>))
          .toList(),
      reviewCommentCount: (json['review_comments'] as num?)?.toInt() ?? 0,
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
      id: (json['id'] as num?)?.toInt(),
      diffHunk: json['diff_hunk'] as String?,
      path: json['path'] as String?,
      position: (json['position'] as num?)?.toInt(),
      originalPosition: (json['original_position'] as num?)?.toInt(),
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
      (json['position'] as num?)?.toInt(),
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
      additionsCount: (json['additions'] as num?)?.toInt(),
      deletionsCount: (json['deletions'] as num?)?.toInt(),
      changesCount: (json['changes'] as num?)?.toInt(),
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
      id: (json['id'] as num).toInt(),
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
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
      (json['pull_number'] as num).toInt(),
      json['event'] as String,
      body: json['body'] as String?,
      comments: (json['comments'] as List<dynamic>?)
          ?.map((e) =>
              PullRequestReviewComment.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$CreatePullRequestReviewToJson(
        CreatePullRequestReview instance) =>
    <String, dynamic>{
      'owner': instance.owner,
      'repo': instance.repo,
      'event': instance.event,
      'body': instance.body,
      'pull_number': instance.pullNumber,
      'comments': instance.comments,
    };

PullRequestReviewComment _$PullRequestReviewCommentFromJson(
        Map<String, dynamic> json) =>
    PullRequestReviewComment(
      authorAssociation: json['author_association'] as String?,
      body: json['body'] as String?,
      bodyHtml: json['body_html'] as String?,
      bodyText: json['body_text'] as String?,
      commitId: json['commit_id'] as String?,
      createdAt: json['created_at'] == null
          ? null
          : DateTime.parse(json['created_at'] as String),
      diffHunk: json['diff_hunk'] as String?,
      htmlUrl: json['html_url'] as String?,
      id: (json['id'] as num?)?.toInt(),
      inReplyToId: (json['in_reply_to_id'] as num?)?.toInt(),
      line: (json['line'] as num?)?.toInt(),
      links: json['_links'] == null
          ? null
          : ReviewLinks.fromJson(json['_links'] as Map<String, dynamic>),
      nodeId: json['node_id'] as String?,
      originalCommitId: json['original_commit_id'] as String?,
      originalLine: (json['original_line'] as num?)?.toInt(),
      originalPosition: (json['original_position'] as num?)?.toInt(),
      originalStartLine: (json['original_start_line'] as num?)?.toInt(),
      path: json['path'] as String?,
      position: (json['position'] as num?)?.toInt(),
      pullRequestReviewId: (json['pull_request_review_id'] as num?)?.toInt(),
      pullRequestUrl: json['pull_request_url'] as String?,
      reactions: json['reactions'] == null
          ? null
          : ReactionRollup.fromJson(json['reactions'] as Map<String, dynamic>),
      side: json['side'] as String?,
      startLine: (json['start_line'] as num?)?.toInt(),
      startSide: json['start_side'] as String?,
      subjectType: json['subject_type'] as String?,
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
      url: json['url'] as String?,
      user: json['user'] == null
          ? null
          : User.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PullRequestReviewCommentToJson(
        PullRequestReviewComment instance) =>
    <String, dynamic>{
      'author_association': instance.authorAssociation,
      'body': instance.body,
      'body_html': instance.bodyHtml,
      'body_text': instance.bodyText,
      'commit_id': instance.commitId,
      'created_at': instance.createdAt?.toIso8601String(),
      'diff_hunk': instance.diffHunk,
      'html_url': instance.htmlUrl,
      'id': instance.id,
      'in_reply_to_id': instance.inReplyToId,
      'line': instance.line,
      '_links': instance.links,
      'node_id': instance.nodeId,
      'original_commit_id': instance.originalCommitId,
      'original_line': instance.originalLine,
      'original_position': instance.originalPosition,
      'original_start_line': instance.originalStartLine,
      'path': instance.path,
      'position': instance.position,
      'pull_request_review_id': instance.pullRequestReviewId,
      'pull_request_url': instance.pullRequestUrl,
      'reactions': instance.reactions,
      'side': instance.side,
      'start_line': instance.startLine,
      'start_side': instance.startSide,
      'subject_type': instance.subjectType,
      'updated_at': instance.updatedAt?.toIso8601String(),
      'url': instance.url,
      'user': instance.user,
    };
