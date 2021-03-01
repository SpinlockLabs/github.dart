//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_review_comment_links_html.g.dart';

abstract class PullRequestReviewCommentLinksHtml implements Built<PullRequestReviewCommentLinksHtml, PullRequestReviewCommentLinksHtmlBuilder> {

    @nullable
    @BuiltValueField(wireName: r'href')
    String get href;

    // Boilerplate code needed to wire-up generated code
    PullRequestReviewCommentLinksHtml._();

    static void _initializeBuilder(PullRequestReviewCommentLinksHtmlBuilder b) => b;

    factory PullRequestReviewCommentLinksHtml([void updates(PullRequestReviewCommentLinksHtmlBuilder b)]) = _$PullRequestReviewCommentLinksHtml;
    static Serializer<PullRequestReviewCommentLinksHtml> get serializer => _$pullRequestReviewCommentLinksHtmlSerializer;
}

