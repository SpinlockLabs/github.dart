//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_simple_links.g.dart';

abstract class PullRequestSimpleLinks implements Built<PullRequestSimpleLinks, PullRequestSimpleLinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'comments')
    Link get comments;

    @nullable
    @BuiltValueField(wireName: r'commits')
    Link get commits;

    @nullable
    @BuiltValueField(wireName: r'statuses')
    Link get statuses;

    @nullable
    @BuiltValueField(wireName: r'html')
    Link get html;

    @nullable
    @BuiltValueField(wireName: r'issue')
    Link get issue;

    @nullable
    @BuiltValueField(wireName: r'review_comments')
    Link get reviewComments;

    @nullable
    @BuiltValueField(wireName: r'review_comment')
    Link get reviewComment;

    @nullable
    @BuiltValueField(wireName: r'self')
    Link get self;

    // Boilerplate code needed to wire-up generated code
    PullRequestSimpleLinks._();

    static void _initializeBuilder(PullRequestSimpleLinksBuilder b) => b;

    factory PullRequestSimpleLinks([void updates(PullRequestSimpleLinksBuilder b)]) = _$PullRequestSimpleLinks;
    static Serializer<PullRequestSimpleLinks> get serializer => _$pullRequestSimpleLinksSerializer;
}

