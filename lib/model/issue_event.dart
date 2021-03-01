//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/issue_event_dismissed_review.dart';
import 'package:github/model/issue_event_label.dart';
import 'package:github/model/issue_event_milestone.dart';
import 'package:github/model/issue_simple.dart';
import 'package:github/model/issue_event_project_card.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/issue_event_rename.dart';
import 'package:github/model/author_association.dart';
import 'package:github/model/team.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issue_event.g.dart';

abstract class IssueEvent implements Built<IssueEvent, IssueEventBuilder> {

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
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'issue')
    IssueSimple get issue;

    @nullable
    @BuiltValueField(wireName: r'label')
    IssueEventLabel get label;

    @nullable
    @BuiltValueField(wireName: r'assignee')
    SimpleUser get assignee;

    @nullable
    @BuiltValueField(wireName: r'assigner')
    SimpleUser get assigner;

    @nullable
    @BuiltValueField(wireName: r'review_requester')
    SimpleUser get reviewRequester;

    @nullable
    @BuiltValueField(wireName: r'requested_reviewer')
    SimpleUser get requestedReviewer;

    @nullable
    @BuiltValueField(wireName: r'requested_team')
    Team get requestedTeam;

    @nullable
    @BuiltValueField(wireName: r'dismissed_review')
    IssueEventDismissedReview get dismissedReview;

    @nullable
    @BuiltValueField(wireName: r'milestone')
    IssueEventMilestone get milestone;

    @nullable
    @BuiltValueField(wireName: r'project_card')
    IssueEventProjectCard get projectCard;

    @nullable
    @BuiltValueField(wireName: r'rename')
    IssueEventRename get rename;

    @nullable
    @BuiltValueField(wireName: r'author_association')
    AuthorAssociation get authorAssociation;
    // enum authorAssociationEnum {  COLLABORATOR,  CONTRIBUTOR,  FIRST_TIMER,  FIRST_TIME_CONTRIBUTOR,  MANNEQUIN,  MEMBER,  NONE,  OWNER,  };

    @nullable
    @BuiltValueField(wireName: r'lock_reason')
    String get lockReason;

    // Boilerplate code needed to wire-up generated code
    IssueEvent._();

    static void _initializeBuilder(IssueEventBuilder b) => b;

    factory IssueEvent([void updates(IssueEventBuilder b)]) = _$IssueEvent;
    static Serializer<IssueEvent> get serializer => _$issueEventSerializer;
}

