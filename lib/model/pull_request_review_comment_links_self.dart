//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_review_comment_links_self.g.dart';

abstract class PullRequestReviewCommentLinksSelf implements Built<PullRequestReviewCommentLinksSelf, PullRequestReviewCommentLinksSelfBuilder> {

    @nullable
    @BuiltValueField(wireName: r'href')
    String get href;

    // Boilerplate code needed to wire-up generated code
    PullRequestReviewCommentLinksSelf._();

    static void _initializeBuilder(PullRequestReviewCommentLinksSelfBuilder b) => b;

    factory PullRequestReviewCommentLinksSelf([void updates(PullRequestReviewCommentLinksSelfBuilder b)]) = _$PullRequestReviewCommentLinksSelf;
    static Serializer<PullRequestReviewCommentLinksSelf> get serializer => _$pullRequestReviewCommentLinksSelfSerializer;
}

