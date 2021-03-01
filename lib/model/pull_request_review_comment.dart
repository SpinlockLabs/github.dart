//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/pull_request_review_comment_links.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/author_association.dart';
import 'package:github/model/reaction_rollup.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_review_comment.g.dart';

abstract class PullRequestReviewComment implements Built<PullRequestReviewComment, PullRequestReviewCommentBuilder> {

    /// URL for the pull request review comment
    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    /// The ID of the pull request review to which the comment belongs.
    @nullable
    @BuiltValueField(wireName: r'pull_request_review_id')
    int get pullRequestReviewId;

    /// The ID of the pull request review comment.
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// The node ID of the pull request review comment.
    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// The diff of the line that the comment refers to.
    @nullable
    @BuiltValueField(wireName: r'diff_hunk')
    String get diffHunk;

    /// The relative path of the file to which the comment applies.
    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    /// The line index in the diff to which the comment applies.
    @nullable
    @BuiltValueField(wireName: r'position')
    int get position;

    /// The index of the original line in the diff to which the comment applies.
    @nullable
    @BuiltValueField(wireName: r'original_position')
    int get originalPosition;

    /// The SHA of the commit to which the comment applies.
    @nullable
    @BuiltValueField(wireName: r'commit_id')
    String get commitId;

    /// The SHA of the original commit to which the comment applies.
    @nullable
    @BuiltValueField(wireName: r'original_commit_id')
    String get originalCommitId;

    /// The comment ID to reply to.
    @nullable
    @BuiltValueField(wireName: r'in_reply_to_id')
    int get inReplyToId;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    /// The text of the comment.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    /// HTML URL for the pull request review comment.
    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    /// URL for the pull request that the review comment belongs to.
    @nullable
    @BuiltValueField(wireName: r'pull_request_url')
    String get pullRequestUrl;

    @nullable
    @BuiltValueField(wireName: r'author_association')
    AuthorAssociation get authorAssociation;
    // enum authorAssociationEnum {  COLLABORATOR,  CONTRIBUTOR,  FIRST_TIMER,  FIRST_TIME_CONTRIBUTOR,  MANNEQUIN,  MEMBER,  NONE,  OWNER,  };

    @nullable
    @BuiltValueField(wireName: r'_links')
    PullRequestReviewCommentLinks get links;

    /// The first line of the range for a multi-line comment.
    @nullable
    @BuiltValueField(wireName: r'start_line')
    int get startLine;

    /// The first line of the range for a multi-line comment.
    @nullable
    @BuiltValueField(wireName: r'original_start_line')
    int get originalStartLine;

    /// The side of the first line of the range for a multi-line comment.
    @nullable
    @BuiltValueField(wireName: r'start_side')
    PullRequestReviewCommentStartSideEnum get startSide;
    // enum startSideEnum {  LEFT,  RIGHT,  };

    /// The line of the blob to which the comment applies. The last line of the range for a multi-line comment
    @nullable
    @BuiltValueField(wireName: r'line')
    int get line;

    /// The line of the blob to which the comment applies. The last line of the range for a multi-line comment
    @nullable
    @BuiltValueField(wireName: r'original_line')
    int get originalLine;

    /// The side of the diff to which the comment applies. The side of the last line of the range for a multi-line comment
    @nullable
    @BuiltValueField(wireName: r'side')
    PullRequestReviewCommentSideEnum get side;
    // enum sideEnum {  LEFT,  RIGHT,  };

    @nullable
    @BuiltValueField(wireName: r'reactions')
    ReactionRollup get reactions;

    @nullable
    @BuiltValueField(wireName: r'body_html')
    String get bodyHtml;

    @nullable
    @BuiltValueField(wireName: r'body_text')
    String get bodyText;

    // Boilerplate code needed to wire-up generated code
    PullRequestReviewComment._();

    static void _initializeBuilder(PullRequestReviewCommentBuilder b) => b
        ..startSide = const PullRequestReviewCommentStartSideEnum._('RIGHT')
        ..side = const PullRequestReviewCommentSideEnum._('RIGHT');

    factory PullRequestReviewComment([void updates(PullRequestReviewCommentBuilder b)]) = _$PullRequestReviewComment;
    static Serializer<PullRequestReviewComment> get serializer => _$pullRequestReviewCommentSerializer;
}

class PullRequestReviewCommentStartSideEnum extends EnumClass {

  /// The side of the first line of the range for a multi-line comment.
  @BuiltValueEnumConst(wireName: r'LEFT')
  static const PullRequestReviewCommentStartSideEnum LEFT = _$pullRequestReviewCommentStartSideEnum_LEFT;
  /// The side of the first line of the range for a multi-line comment.
  @BuiltValueEnumConst(wireName: r'RIGHT')
  static const PullRequestReviewCommentStartSideEnum RIGHT = _$pullRequestReviewCommentStartSideEnum_RIGHT;

  static Serializer<PullRequestReviewCommentStartSideEnum> get serializer => _$pullRequestReviewCommentStartSideEnumSerializer;

  const PullRequestReviewCommentStartSideEnum._(String name): super(name);

  static BuiltSet<PullRequestReviewCommentStartSideEnum> get values => _$pullRequestReviewCommentStartSideEnumValues;
  static PullRequestReviewCommentStartSideEnum valueOf(String name) => _$pullRequestReviewCommentStartSideEnumValueOf(name);
}

class PullRequestReviewCommentSideEnum extends EnumClass {

  /// The side of the diff to which the comment applies. The side of the last line of the range for a multi-line comment
  @BuiltValueEnumConst(wireName: r'LEFT')
  static const PullRequestReviewCommentSideEnum LEFT = _$pullRequestReviewCommentSideEnum_LEFT;
  /// The side of the diff to which the comment applies. The side of the last line of the range for a multi-line comment
  @BuiltValueEnumConst(wireName: r'RIGHT')
  static const PullRequestReviewCommentSideEnum RIGHT = _$pullRequestReviewCommentSideEnum_RIGHT;

  static Serializer<PullRequestReviewCommentSideEnum> get serializer => _$pullRequestReviewCommentSideEnumSerializer;

  const PullRequestReviewCommentSideEnum._(String name): super(name);

  static BuiltSet<PullRequestReviewCommentSideEnum> get values => _$pullRequestReviewCommentSideEnumValues;
  static PullRequestReviewCommentSideEnum valueOf(String name) => _$pullRequestReviewCommentSideEnumValueOf(name);
}

