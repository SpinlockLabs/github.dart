//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/link.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'review_comment_links.g.dart';

abstract class ReviewCommentLinks implements Built<ReviewCommentLinks, ReviewCommentLinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'self')
    Link get self;

    @nullable
    @BuiltValueField(wireName: r'html')
    Link get html;

    @nullable
    @BuiltValueField(wireName: r'pull_request')
    Link get pullRequest;

    // Boilerplate code needed to wire-up generated code
    ReviewCommentLinks._();

    static void _initializeBuilder(ReviewCommentLinksBuilder b) => b;

    factory ReviewCommentLinks([void updates(ReviewCommentLinksBuilder b)]) = _$ReviewCommentLinks;
    static Serializer<ReviewCommentLinks> get serializer => _$reviewCommentLinksSerializer;
}

