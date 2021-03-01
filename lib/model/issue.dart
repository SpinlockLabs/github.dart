//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/one_ofstringobject.dart';
import 'package:github/model/milestone.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/integration.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/author_association.dart';
import 'package:github/model/reaction_rollup.dart';
import 'package:github/model/issue_simple_pull_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issue.g.dart';

abstract class Issue implements Built<Issue, IssueBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// URL for the issue
    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'repository_url')
    String get repositoryUrl;

    @nullable
    @BuiltValueField(wireName: r'labels_url')
    String get labelsUrl;

    @nullable
    @BuiltValueField(wireName: r'comments_url')
    String get commentsUrl;

    @nullable
    @BuiltValueField(wireName: r'events_url')
    String get eventsUrl;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    /// Number uniquely identifying the issue within its repository
    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

    /// State of the issue; either 'open' or 'closed'
    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    /// Title of the issue
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    /// Contents of the issue
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    /// Labels to associate with this issue; pass one or more label names to replace the set of labels on this issue; send an empty array to clear all labels from the issue; note that the labels are silently dropped for users without push access to the repository
    @nullable
    @BuiltValueField(wireName: r'labels')
    BuiltList<OneOfstringobject> get labels;

    @nullable
    @BuiltValueField(wireName: r'assignee')
    SimpleUser get assignee;

    @nullable
    @BuiltValueField(wireName: r'assignees')
    BuiltList<SimpleUser> get assignees;

    @nullable
    @BuiltValueField(wireName: r'milestone')
    Milestone get milestone;

    @nullable
    @BuiltValueField(wireName: r'locked')
    bool get locked;

    @nullable
    @BuiltValueField(wireName: r'active_lock_reason')
    String get activeLockReason;

    @nullable
    @BuiltValueField(wireName: r'comments')
    int get comments;

    @nullable
    @BuiltValueField(wireName: r'pull_request')
    IssueSimplePullRequest get pullRequest;

    @nullable
    @BuiltValueField(wireName: r'closed_at')
    DateTime get closedAt;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'closed_by')
    SimpleUser get closedBy;

    @nullable
    @BuiltValueField(wireName: r'body_html')
    String get bodyHtml;

    @nullable
    @BuiltValueField(wireName: r'body_text')
    String get bodyText;

    @nullable
    @BuiltValueField(wireName: r'timeline_url')
    String get timelineUrl;

    @nullable
    @BuiltValueField(wireName: r'repository')
    Repository get repository;

    @nullable
    @BuiltValueField(wireName: r'performed_via_github_app')
    Integration get performedViaGithubApp;

    @nullable
    @BuiltValueField(wireName: r'author_association')
    AuthorAssociation get authorAssociation;
    // enum authorAssociationEnum {  COLLABORATOR,  CONTRIBUTOR,  FIRST_TIMER,  FIRST_TIME_CONTRIBUTOR,  MANNEQUIN,  MEMBER,  NONE,  OWNER,  };

    @nullable
    @BuiltValueField(wireName: r'reactions')
    ReactionRollup get reactions;

    // Boilerplate code needed to wire-up generated code
    Issue._();

    static void _initializeBuilder(IssueBuilder b) => b;

    factory Issue([void updates(IssueBuilder b)]) = _$Issue;
    static Serializer<Issue> get serializer => _$issueSerializer;
}

