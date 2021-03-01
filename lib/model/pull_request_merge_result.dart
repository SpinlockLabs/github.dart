//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_merge_result.g.dart';

abstract class PullRequestMergeResult implements Built<PullRequestMergeResult, PullRequestMergeResultBuilder> {

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'merged')
    bool get merged;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    // Boilerplate code needed to wire-up generated code
    PullRequestMergeResult._();

    static void _initializeBuilder(PullRequestMergeResultBuilder b) => b;

    factory PullRequestMergeResult([void updates(PullRequestMergeResultBuilder b)]) = _$PullRequestMergeResult;
    static Serializer<PullRequestMergeResult> get serializer => _$pullRequestMergeResultSerializer;
}

