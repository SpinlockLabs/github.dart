//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/simple_user.dart';
import 'package:github/model/author_association.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gist_comment.g.dart';

abstract class GistComment implements Built<GistComment, GistCommentBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    /// The comment text.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

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

    // Boilerplate code needed to wire-up generated code
    GistComment._();

    static void _initializeBuilder(GistCommentBuilder b) => b;

    factory GistComment([void updates(GistCommentBuilder b)]) = _$GistComment;
    static Serializer<GistComment> get serializer => _$gistCommentSerializer;
}

