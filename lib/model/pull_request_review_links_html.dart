//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_review_links_html.g.dart';

abstract class PullRequestReviewLinksHtml implements Built<PullRequestReviewLinksHtml, PullRequestReviewLinksHtmlBuilder> {

    @nullable
    @BuiltValueField(wireName: r'href')
    String get href;

    // Boilerplate code needed to wire-up generated code
    PullRequestReviewLinksHtml._();

    static void _initializeBuilder(PullRequestReviewLinksHtmlBuilder b) => b;

    factory PullRequestReviewLinksHtml([void updates(PullRequestReviewLinksHtmlBuilder b)]) = _$PullRequestReviewLinksHtml;
    static Serializer<PullRequestReviewLinksHtml> get serializer => _$pullRequestReviewLinksHtmlSerializer;
}

