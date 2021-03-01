//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object143.g.dart';

abstract class InlineObject143 implements Built<InlineObject143, InlineObject143Builder> {

    /// The expected SHA of the pull request's HEAD ref. This is the most recent commit on the pull request's branch. If the expected SHA does not match the pull request's HEAD, you will receive a `422 Unprocessable Entity` status. You can use the \"[List commits](https://docs.github.com/rest/reference/repos#list-commits)\" endpoint to find the most recent commit SHA. Default: SHA of the pull request's current HEAD ref.
    @nullable
    @BuiltValueField(wireName: r'expected_head_sha')
    String get expectedHeadSha;

    // Boilerplate code needed to wire-up generated code
    InlineObject143._();

    static void _initializeBuilder(InlineObject143Builder b) => b;

    factory InlineObject143([void updates(InlineObject143Builder b)]) = _$InlineObject143;
    static Serializer<InlineObject143> get serializer => _$inlineObject143Serializer;
}

