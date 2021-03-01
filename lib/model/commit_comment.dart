//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/simple_user.dart';
import 'package:github/model/author_association.dart';
import 'package:github/model/reaction_rollup.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commit_comment.g.dart';

abstract class CommitComment implements Built<CommitComment, CommitCommentBuilder> {

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

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
    @BuiltValueField(wireName: r'body')
    String get body;

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    @nullable
    @BuiltValueField(wireName: r'position')
    int get position;

    @nullable
    @BuiltValueField(wireName: r'line')
    int get line;

    @nullable
    @BuiltValueField(wireName: r'commit_id')
    String get commitId;

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
    @BuiltValueField(wireName: r'author_association')
    AuthorAssociation get authorAssociation;
    // enum authorAssociationEnum {  COLLABORATOR,  CONTRIBUTOR,  FIRST_TIMER,  FIRST_TIME_CONTRIBUTOR,  MANNEQUIN,  MEMBER,  NONE,  OWNER,  };

    @nullable
    @BuiltValueField(wireName: r'reactions')
    ReactionRollup get reactions;

    // Boilerplate code needed to wire-up generated code
    CommitComment._();

    static void _initializeBuilder(CommitCommentBuilder b) => b;

    factory CommitComment([void updates(CommitCommentBuilder b)]) = _$CommitComment;
    static Serializer<CommitComment> get serializer => _$commitCommentSerializer;
}

