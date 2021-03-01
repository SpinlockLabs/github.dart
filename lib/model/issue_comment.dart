//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/integration.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/author_association.dart';
import 'package:github/model/reaction_rollup.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'issue_comment.g.dart';

abstract class IssueComment implements Built<IssueComment, IssueCommentBuilder> {

    /// Unique identifier of the issue comment
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// URL for the issue comment
    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    /// Contents of the issue comment
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    @nullable
    @BuiltValueField(wireName: r'body_text')
    String get bodyText;

    @nullable
    @BuiltValueField(wireName: r'body_html')
    String get bodyHtml;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'issue_url')
    String get issueUrl;

    @nullable
    @BuiltValueField(wireName: r'author_association')
    AuthorAssociation get authorAssociation;
    // enum authorAssociationEnum {  COLLABORATOR,  CONTRIBUTOR,  FIRST_TIMER,  FIRST_TIME_CONTRIBUTOR,  MANNEQUIN,  MEMBER,  NONE,  OWNER,  };

    @nullable
    @BuiltValueField(wireName: r'performed_via_github_app')
    Integration get performedViaGithubApp;

    @nullable
    @BuiltValueField(wireName: r'reactions')
    ReactionRollup get reactions;

    // Boilerplate code needed to wire-up generated code
    IssueComment._();

    static void _initializeBuilder(IssueCommentBuilder b) => b;

    factory IssueComment([void updates(IssueCommentBuilder b)]) = _$IssueComment;
    static Serializer<IssueComment> get serializer => _$issueCommentSerializer;
}

