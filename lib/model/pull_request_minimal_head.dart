//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/pull_request_minimal_head_repo.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_minimal_head.g.dart';

abstract class PullRequestMinimalHead implements Built<PullRequestMinimalHead, PullRequestMinimalHeadBuilder> {

    @nullable
    @BuiltValueField(wireName: r'ref')
    String get ref;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'repo')
    PullRequestMinimalHeadRepo get repo;

    // Boilerplate code needed to wire-up generated code
    PullRequestMinimalHead._();

    static void _initializeBuilder(PullRequestMinimalHeadBuilder b) => b;

    factory PullRequestMinimalHead([void updates(PullRequestMinimalHeadBuilder b)]) = _$PullRequestMinimalHead;
    static Serializer<PullRequestMinimalHead> get serializer => _$pullRequestMinimalHeadSerializer;
}

