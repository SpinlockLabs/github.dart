//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/review_comment_links.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/author_association.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'review_comment.g.dart';

abstract class ReviewComment implements Built<ReviewComment, ReviewCommentBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'pull_request_review_id')
    int get pullRequestReviewId;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'diff_hunk')
    String get diffHunk;

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    @nullable
    @BuiltValueField(wireName: r'position')
    int get position;

    @nullable
    @BuiltValueField(wireName: r'original_position')
    int get originalPosition;

    @nullable
    @BuiltValueField(wireName: r'commit_id')
    String get commitId;

    @nullable
    @BuiltValueField(wireName: r'original_commit_id')
    String get originalCommitId;

    @nullable
    @BuiltValueField(wireName: r'in_reply_to_id')
    int get inReplyToId;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'pull_request_url')
    String get pullRequestUrl;

    @nullable
    @BuiltValueField(wireName: r'author_association')
    AuthorAssociation get authorAssociation;
    // enum authorAssociationEnum {  COLLABORATOR,  CONTRIBUTOR,  FIRST_TIMER,  FIRST_TIME_CONTRIBUTOR,  MANNEQUIN,  MEMBER,  NONE,  OWNER,  };

    @nullable
    @BuiltValueField(wireName: r'_links')
    ReviewCommentLinks get links;

    @nullable
    @BuiltValueField(wireName: r'body_text')
    String get bodyText;

    @nullable
    @BuiltValueField(wireName: r'body_html')
    String get bodyHtml;

    /// The side of the first line of the range for a multi-line comment.
    @nullable
    @BuiltValueField(wireName: r'side')
    ReviewCommentSideEnum get side;
    // enum sideEnum {  LEFT,  RIGHT,  };

    /// The side of the first line of the range for a multi-line comment.
    @nullable
    @BuiltValueField(wireName: r'start_side')
    ReviewCommentStartSideEnum get startSide;
    // enum startSideEnum {  LEFT,  RIGHT,  };

    /// The line of the blob to which the comment applies. The last line of the range for a multi-line comment
    @nullable
    @BuiltValueField(wireName: r'line')
    int get line;

    /// The original line of the blob to which the comment applies. The last line of the range for a multi-line comment
    @nullable
    @BuiltValueField(wireName: r'original_line')
    int get originalLine;

    /// The first line of the range for a multi-line comment.
    @nullable
    @BuiltValueField(wireName: r'start_line')
    int get startLine;

    /// The original first line of the range for a multi-line comment.
    @nullable
    @BuiltValueField(wireName: r'original_start_line')
    int get originalStartLine;

    // Boilerplate code needed to wire-up generated code
    ReviewComment._();

    static void _initializeBuilder(ReviewCommentBuilder b) => b
        ..side = const ReviewCommentSideEnum._('RIGHT')
        ..startSide = const ReviewCommentStartSideEnum._('RIGHT');

    factory ReviewComment([void updates(ReviewCommentBuilder b)]) = _$ReviewComment;
    static Serializer<ReviewComment> get serializer => _$reviewCommentSerializer;
}

class ReviewCommentSideEnum extends EnumClass {

  /// The side of the first line of the range for a multi-line comment.
  @BuiltValueEnumConst(wireName: r'LEFT')
  static const ReviewCommentSideEnum LEFT = _$reviewCommentSideEnum_LEFT;
  /// The side of the first line of the range for a multi-line comment.
  @BuiltValueEnumConst(wireName: r'RIGHT')
  static const ReviewCommentSideEnum RIGHT = _$reviewCommentSideEnum_RIGHT;

  static Serializer<ReviewCommentSideEnum> get serializer => _$reviewCommentSideEnumSerializer;

  const ReviewCommentSideEnum._(String name): super(name);

  static BuiltSet<ReviewCommentSideEnum> get values => _$reviewCommentSideEnumValues;
  static ReviewCommentSideEnum valueOf(String name) => _$reviewCommentSideEnumValueOf(name);
}

class ReviewCommentStartSideEnum extends EnumClass {

  /// The side of the first line of the range for a multi-line comment.
  @BuiltValueEnumConst(wireName: r'LEFT')
  static const ReviewCommentStartSideEnum LEFT = _$reviewCommentStartSideEnum_LEFT;
  /// The side of the first line of the range for a multi-line comment.
  @BuiltValueEnumConst(wireName: r'RIGHT')
  static const ReviewCommentStartSideEnum RIGHT = _$reviewCommentStartSideEnum_RIGHT;

  static Serializer<ReviewCommentStartSideEnum> get serializer => _$reviewCommentStartSideEnumSerializer;

  const ReviewCommentStartSideEnum._(String name): super(name);

  static BuiltSet<ReviewCommentStartSideEnum> get values => _$reviewCommentStartSideEnumValues;
  static ReviewCommentStartSideEnum valueOf(String name) => _$reviewCommentStartSideEnumValueOf(name);
}

