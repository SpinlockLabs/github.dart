//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/simple_user.dart';
import 'package:github/model/author_association.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issue_event_for_issue.g.dart';

abstract class IssueEventForIssue implements Built<IssueEventForIssue, IssueEventForIssueBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'actor')
    SimpleUser get actor;

    @nullable
    @BuiltValueField(wireName: r'event')
    String get event;

    @nullable
    @BuiltValueField(wireName: r'commit_id')
    String get commitId;

    @nullable
    @BuiltValueField(wireName: r'commit_url')
    String get commitUrl;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    String get createdAt;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'issue_url')
    String get issueUrl;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    String get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'author_association')
    AuthorAssociation get authorAssociation;
    // enum authorAssociationEnum {  COLLABORATOR,  CONTRIBUTOR,  FIRST_TIMER,  FIRST_TIME_CONTRIBUTOR,  MANNEQUIN,  MEMBER,  NONE,  OWNER,  };

    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    @nullable
    @BuiltValueField(wireName: r'lock_reason')
    String get lockReason;

    @nullable
    @BuiltValueField(wireName: r'submitted_at')
    String get submittedAt;

    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    @nullable
    @BuiltValueField(wireName: r'pull_request_url')
    String get pullRequestUrl;

    @nullable
    @BuiltValueField(wireName: r'body_html')
    String get bodyHtml;

    @nullable
    @BuiltValueField(wireName: r'body_text')
    String get bodyText;

    // Boilerplate code needed to wire-up generated code
    IssueEventForIssue._();

    static void _initializeBuilder(IssueEventForIssueBuilder b) => b;

    factory IssueEventForIssue([void updates(IssueEventForIssueBuilder b)]) = _$IssueEventForIssue;
    static Serializer<IssueEventForIssue> get serializer => _$issueEventForIssueSerializer;
}

