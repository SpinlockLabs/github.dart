//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/repository.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_simple_head.g.dart';

abstract class PullRequestSimpleHead implements Built<PullRequestSimpleHead, PullRequestSimpleHeadBuilder> {

    @nullable
    @BuiltValueField(wireName: r'label')
    String get label;

    @nullable
    @BuiltValueField(wireName: r'ref')
    String get ref;

    @nullable
    @BuiltValueField(wireName: r'repo')
    Repository get repo;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    // Boilerplate code needed to wire-up generated code
    PullRequestSimpleHead._();

    static void _initializeBuilder(PullRequestSimpleHeadBuilder b) => b;

    factory PullRequestSimpleHead([void updates(PullRequestSimpleHeadBuilder b)]) = _$PullRequestSimpleHead;
    static Serializer<PullRequestSimpleHead> get serializer => _$pullRequestSimpleHeadSerializer;
}

