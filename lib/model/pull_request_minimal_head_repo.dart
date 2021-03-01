//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_minimal_head_repo.g.dart';

abstract class PullRequestMinimalHeadRepo implements Built<PullRequestMinimalHeadRepo, PullRequestMinimalHeadRepoBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    // Boilerplate code needed to wire-up generated code
    PullRequestMinimalHeadRepo._();

    static void _initializeBuilder(PullRequestMinimalHeadRepoBuilder b) => b;

    factory PullRequestMinimalHeadRepo([void updates(PullRequestMinimalHeadRepoBuilder b)]) = _$PullRequestMinimalHeadRepo;
    static Serializer<PullRequestMinimalHeadRepo> get serializer => _$pullRequestMinimalHeadRepoSerializer;
}

