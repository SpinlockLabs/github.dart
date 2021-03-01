//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_pulls_pull_number_reviews_comments.g.dart';

abstract class ReposOwnerRepoPullsPullNumberReviewsComments implements Built<ReposOwnerRepoPullsPullNumberReviewsComments, ReposOwnerRepoPullsPullNumberReviewsCommentsBuilder> {

    /// The relative path to the file that necessitates a review comment.
    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    /// The position in the diff where you want to add a review comment. Note this value is not the same as the line number in the file. For help finding the position value, read the note below.
    @nullable
    @BuiltValueField(wireName: r'position')
    int get position;

    /// Text of the review comment.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    @nullable
    @BuiltValueField(wireName: r'line')
    int get line;

    @nullable
    @BuiltValueField(wireName: r'side')
    String get side;

    @nullable
    @BuiltValueField(wireName: r'start_line')
    int get startLine;

    @nullable
    @BuiltValueField(wireName: r'start_side')
    String get startSide;

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoPullsPullNumberReviewsComments._();

    static void _initializeBuilder(ReposOwnerRepoPullsPullNumberReviewsCommentsBuilder b) => b;

    factory ReposOwnerRepoPullsPullNumberReviewsComments([void updates(ReposOwnerRepoPullsPullNumberReviewsCommentsBuilder b)]) = _$ReposOwnerRepoPullsPullNumberReviewsComments;
    static Serializer<ReposOwnerRepoPullsPullNumberReviewsComments> get serializer => _$reposOwnerRepoPullsPullNumberReviewsCommentsSerializer;
}

