//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/pull_request_base_repo.dart';
import 'package:github/model/pull_request_head_repo_owner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_base.g.dart';

abstract class PullRequestBase implements Built<PullRequestBase, PullRequestBaseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'label')
    String get label;

    @nullable
    @BuiltValueField(wireName: r'ref')
    String get ref;

    @nullable
    @BuiltValueField(wireName: r'repo')
    PullRequestBaseRepo get repo;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'user')
    PullRequestHeadRepoOwner get user;

    // Boilerplate code needed to wire-up generated code
    PullRequestBase._();

    static void _initializeBuilder(PullRequestBaseBuilder b) => b;

    factory PullRequestBase([void updates(PullRequestBaseBuilder b)]) = _$PullRequestBase;
    static Serializer<PullRequestBase> get serializer => _$pullRequestBaseSerializer;
}

