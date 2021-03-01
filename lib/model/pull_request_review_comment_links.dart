//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/pull_request_review_comment_links_self.dart';
import 'package:github/model/pull_request_review_comment_links_html.dart';
import 'package:github/model/pull_request_review_comment_links_pull_request.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_review_comment_links.g.dart';

abstract class PullRequestReviewCommentLinks implements Built<PullRequestReviewCommentLinks, PullRequestReviewCommentLinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'self')
    PullRequestReviewCommentLinksSelf get self;

    @nullable
    @BuiltValueField(wireName: r'html')
    PullRequestReviewCommentLinksHtml get html;

    @nullable
    @BuiltValueField(wireName: r'pull_request')
    PullRequestReviewCommentLinksPullRequest get pullRequest;

    // Boilerplate code needed to wire-up generated code
    PullRequestReviewCommentLinks._();

    static void _initializeBuilder(PullRequestReviewCommentLinksBuilder b) => b;

    factory PullRequestReviewCommentLinks([void updates(PullRequestReviewCommentLinksBuilder b)]) = _$PullRequestReviewCommentLinks;
    static Serializer<PullRequestReviewCommentLinks> get serializer => _$pullRequestReviewCommentLinksSerializer;
}

