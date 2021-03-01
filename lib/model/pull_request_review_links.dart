//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/pull_request_review_links_html.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_review_links.g.dart';

abstract class PullRequestReviewLinks implements Built<PullRequestReviewLinks, PullRequestReviewLinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'html')
    PullRequestReviewLinksHtml get html;

    @nullable
    @BuiltValueField(wireName: r'pull_request')
    PullRequestReviewLinksHtml get pullRequest;

    // Boilerplate code needed to wire-up generated code
    PullRequestReviewLinks._();

    static void _initializeBuilder(PullRequestReviewLinksBuilder b) => b;

    factory PullRequestReviewLinks([void updates(PullRequestReviewLinksBuilder b)]) = _$PullRequestReviewLinks;
    static Serializer<PullRequestReviewLinks> get serializer => _$pullRequestReviewLinksSerializer;
}

