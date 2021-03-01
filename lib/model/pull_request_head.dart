//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/pull_request_head_repo_owner.dart';
import 'package:github/model/pull_request_head_repo.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_head.g.dart';

abstract class PullRequestHead implements Built<PullRequestHead, PullRequestHeadBuilder> {

    @nullable
    @BuiltValueField(wireName: r'label')
    String get label;

    @nullable
    @BuiltValueField(wireName: r'ref')
    String get ref;

    @nullable
    @BuiltValueField(wireName: r'repo')
    PullRequestHeadRepo get repo;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'user')
    PullRequestHeadRepoOwner get user;

    // Boilerplate code needed to wire-up generated code
    PullRequestHead._();

    static void _initializeBuilder(PullRequestHeadBuilder b) => b;

    factory PullRequestHead([void updates(PullRequestHeadBuilder b)]) = _$PullRequestHead;
    static Serializer<PullRequestHead> get serializer => _$pullRequestHeadSerializer;
}

