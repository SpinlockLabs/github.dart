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
import 'package:github/model/simple_user.dart';
import 'package:github/model/pull_request_simple_labels.dart';
import 'package:github/model/author_association.dart';
import 'package:github/model/pull_request_simple_head.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_simple.g.dart';

abstract class PullRequestSimple implements Built<PullRequestSimple, PullRequestSimpleBuilder> {

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

    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    @nullable
    @BuiltValueField(wireName: r'locked')
    bool get locked;

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
    BuiltList<PullRequestSimpleLabels> get labels;

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
    PullRequestSimpleHead get head;

    @nullable
    @BuiltValueField(wireName: r'base')
    PullRequestSimpleHead get base;

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

    // Boilerplate code needed to wire-up generated code
    PullRequestSimple._();

    static void _initializeBuilder(PullRequestSimpleBuilder b) => b;

    factory PullRequestSimple([void updates(PullRequestSimpleBuilder b)]) = _$PullRequestSimple;
    static Serializer<PullRequestSimple> get serializer => _$pullRequestSimpleSerializer;
}

