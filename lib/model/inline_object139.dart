//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/repos_owner_repo_pulls_pull_number_reviews_comments.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object139.g.dart';

abstract class InlineObject139 implements Built<InlineObject139, InlineObject139Builder> {

    /// The SHA of the commit that needs a review. Not using the latest commit SHA may render your review comment outdated if a subsequent commit modifies the line you specify as the `position`. Defaults to the most recent commit in the pull request when you do not specify a value.
    @nullable
    @BuiltValueField(wireName: r'commit_id')
    String get commitId;

    /// **Required** when using `REQUEST_CHANGES` or `COMMENT` for the `event` parameter. The body text of the pull request review.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    /// The review action you want to perform. The review actions include: `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`. By leaving this blank, you set the review action state to `PENDING`, which means you will need to [submit the pull request review](https://docs.github.com/rest/reference/pulls#submit-a-review-for-a-pull-request) when you are ready.
    @nullable
    @BuiltValueField(wireName: r'event')
    InlineObject139EventEnum get event;
    // enum eventEnum {  APPROVE,  REQUEST_CHANGES,  COMMENT,  };

    /// Use the following table to specify the location, destination, and contents of the draft review comment.
    @nullable
    @BuiltValueField(wireName: r'comments')
    BuiltList<ReposOwnerRepoPullsPullNumberReviewsComments> get comments;

    // Boilerplate code needed to wire-up generated code
    InlineObject139._();

    static void _initializeBuilder(InlineObject139Builder b) => b;

    factory InlineObject139([void updates(InlineObject139Builder b)]) = _$InlineObject139;
    static Serializer<InlineObject139> get serializer => _$inlineObject139Serializer;
}

class InlineObject139EventEnum extends EnumClass {

  /// The review action you want to perform. The review actions include: `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`. By leaving this blank, you set the review action state to `PENDING`, which means you will need to [submit the pull request review](https://docs.github.com/rest/reference/pulls#submit-a-review-for-a-pull-request) when you are ready.
  @BuiltValueEnumConst(wireName: r'APPROVE')
  static const InlineObject139EventEnum APPROVE = _$inlineObject139EventEnum_APPROVE;
  /// The review action you want to perform. The review actions include: `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`. By leaving this blank, you set the review action state to `PENDING`, which means you will need to [submit the pull request review](https://docs.github.com/rest/reference/pulls#submit-a-review-for-a-pull-request) when you are ready.
  @BuiltValueEnumConst(wireName: r'REQUEST_CHANGES')
  static const InlineObject139EventEnum REQUEST_CHANGES = _$inlineObject139EventEnum_REQUEST_CHANGES;
  /// The review action you want to perform. The review actions include: `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`. By leaving this blank, you set the review action state to `PENDING`, which means you will need to [submit the pull request review](https://docs.github.com/rest/reference/pulls#submit-a-review-for-a-pull-request) when you are ready.
  @BuiltValueEnumConst(wireName: r'COMMENT')
  static const InlineObject139EventEnum COMMENT = _$inlineObject139EventEnum_COMMENT;

  static Serializer<InlineObject139EventEnum> get serializer => _$inlineObject139EventEnumSerializer;

  const InlineObject139EventEnum._(String name): super(name);

  static BuiltSet<InlineObject139EventEnum> get values => _$inlineObject139EventEnumValues;
  static InlineObject139EventEnum valueOf(String name) => _$inlineObject139EventEnumValueOf(name);
}

