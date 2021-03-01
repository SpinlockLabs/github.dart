//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_review_comment_links_pull_request.g.dart';

abstract class PullRequestReviewCommentLinksPullRequest implements Built<PullRequestReviewCommentLinksPullRequest, PullRequestReviewCommentLinksPullRequestBuilder> {

    @nullable
    @BuiltValueField(wireName: r'href')
    String get href;

    // Boilerplate code needed to wire-up generated code
    PullRequestReviewCommentLinksPullRequest._();

    static void _initializeBuilder(PullRequestReviewCommentLinksPullRequestBuilder b) => b;

    factory PullRequestReviewCommentLinksPullRequest([void updates(PullRequestReviewCommentLinksPullRequestBuilder b)]) = _$PullRequestReviewCommentLinksPullRequest;
    static Serializer<PullRequestReviewCommentLinksPullRequest> get serializer => _$pullRequestReviewCommentLinksPullRequestSerializer;
}

