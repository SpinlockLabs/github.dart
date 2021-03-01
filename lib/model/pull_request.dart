//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/auto_merge.dart';
import 'package:github/model/milestone.dart';
import 'package:github/model/pull_request_simple_links.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/team_simple.dart';
import 'package:github/model/pull_request_head.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/author_association.dart';
import 'package:github/model/pull_request_base.dart';
import 'package:github/model/pull_request_labels.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request.g.dart';

abstract class PullRequest implements Built<PullRequest, PullRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'diff_url')
    String get diffUrl;

    @nullable
    @BuiltValueField(wireName: r'patch_url')
    String get patchUrl;

    @nullable
    @BuiltValueField(wireName: r'issue_url')
    String get issueUrl;

    @nullable
    @BuiltValueField(wireName: r'commits_url')
    String get commitsUrl;

    @nullable
    @BuiltValueField(wireName: r'review_comments_url')
    String get reviewCommentsUrl;

    @nullable
    @BuiltValueField(wireName: r'review_comment_url')
    String get reviewCommentUrl;

    @nullable
    @BuiltValueField(wireName: r'comments_url')
    String get commentsUrl;

    @nullable
    @BuiltValueField(wireName: r'statuses_url')
    String get statusesUrl;

    /// Number uniquely identifying the pull request within its repository.
    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

    /// State of this Pull Request. Either `open` or `closed`.
    @nullable
    @BuiltValueField(wireName: r'state')
    PullRequestStateEnum get state;
    // enum stateEnum {  open,  closed,  };

    @nullable
    @BuiltValueField(wireName: r'locked')
    bool get locked;

    /// The title of the pull request.
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    @nullable
    @BuiltValueField(wireName: r'labels')
    BuiltList<PullRequestLabels> get labels;

    @nullable
    @BuiltValueField(wireName: r'milestone')
    Milestone get milestone;

    @nullable
    @BuiltValueField(wireName: r'active_lock_reason')
    String get activeLockReason;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'closed_at')
    DateTime get closedAt;

    @nullable
    @BuiltValueField(wireName: r'merged_at')
    DateTime get mergedAt;

    @nullable
    @BuiltValueField(wireName: r'merge_commit_sha')
    String get mergeCommitSha;

    @nullable
    @BuiltValueField(wireName: r'assignee')
    SimpleUser get assignee;

    @nullable
    @BuiltValueField(wireName: r'assignees')
    BuiltList<SimpleUser> get assignees;

    @nullable
    @BuiltValueField(wireName: r'requested_reviewers')
    BuiltList<SimpleUser> get requestedReviewers;

    @nullable
    @BuiltValueField(wireName: r'requested_teams')
    BuiltList<TeamSimple> get requestedTeams;

    @nullable
    @BuiltValueField(wireName: r'head')
    PullRequestHead get head;

    @nullable
    @BuiltValueField(wireName: r'base')
    PullRequestBase get base;

    @nullable
    @BuiltValueField(wireName: r'_links')
    PullRequestSimpleLinks get links;

    @nullable
    @BuiltValueField(wireName: r'author_association')
    AuthorAssociation get authorAssociation;
    // enum authorAssociationEnum {  COLLABORATOR,  CONTRIBUTOR,  FIRST_TIMER,  FIRST_TIME_CONTRIBUTOR,  MANNEQUIN,  MEMBER,  NONE,  OWNER,  };

    @nullable
    @BuiltValueField(wireName: r'auto_merge')
    AutoMerge get autoMerge;

    /// Indicates whether or not the pull request is a draft.
    @nullable
    @BuiltValueField(wireName: r'draft')
    bool get draft;

    @nullable
    @BuiltValueField(wireName: r'merged')
    bool get merged;

    @nullable
    @BuiltValueField(wireName: r'mergeable')
    bool get mergeable;

    @nullable
    @BuiltValueField(wireName: r'rebaseable')
    bool get rebaseable;

    @nullable
    @BuiltValueField(wireName: r'mergeable_state')
    String get mergeableState;

    @nullable
    @BuiltValueField(wireName: r'merged_by')
    SimpleUser get mergedBy;

    @nullable
    @BuiltValueField(wireName: r'comments')
    int get comments;

    @nullable
    @BuiltValueField(wireName: r'review_comments')
    int get reviewComments;

    /// Indicates whether maintainers can modify the pull request.
    @nullable
    @BuiltValueField(wireName: r'maintainer_can_modify')
    bool get maintainerCanModify;

    @nullable
    @BuiltValueField(wireName: r'commits')
    int get commits;

    @nullable
    @BuiltValueField(wireName: r'additions')
    int get additions;

    @nullable
    @BuiltValueField(wireName: r'deletions')
    int get deletions;

    @nullable
    @BuiltValueField(wireName: r'changed_files')
    int get changedFiles;

    // Boilerplate code needed to wire-up generated code
    PullRequest._();

    static void _initializeBuilder(PullRequestBuilder b) => b;

    factory PullRequest([void updates(PullRequestBuilder b)]) = _$PullRequest;
    static Serializer<PullRequest> get serializer => _$pullRequestSerializer;
}

class PullRequestStateEnum extends EnumClass {

  /// State of this Pull Request. Either `open` or `closed`.
  @BuiltValueEnumConst(wireName: r'open')
  static const PullRequestStateEnum open = _$pullRequestStateEnum_open;
  /// State of this Pull Request. Either `open` or `closed`.
  @BuiltValueEnumConst(wireName: r'closed')
  static const PullRequestStateEnum closed = _$pullRequestStateEnum_closed;

  static Serializer<PullRequestStateEnum> get serializer => _$pullRequestStateEnumSerializer;

  const PullRequestStateEnum._(String name): super(name);

  static BuiltSet<PullRequestStateEnum> get values => _$pullRequestStateEnumValues;
  static PullRequestStateEnum valueOf(String name) => _$pullRequestStateEnumValueOf(name);
}

