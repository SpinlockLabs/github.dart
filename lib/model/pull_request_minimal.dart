//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/pull_request_minimal_head.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pull_request_minimal.g.dart';

abstract class PullRequestMinimal implements Built<PullRequestMinimal, PullRequestMinimalBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'number')
    int get number;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'head')
    PullRequestMinimalHead get head;

    @nullable
    @BuiltValueField(wireName: r'base')
    PullRequestMinimalHead get base;

    // Boilerplate code needed to wire-up generated code
    PullRequestMinimal._();

    static void _initializeBuilder(PullRequestMinimalBuilder b) => b;

    factory PullRequestMinimal([void updates(PullRequestMinimalBuilder b)]) = _$PullRequestMinimal;
    static Serializer<PullRequestMinimal> get serializer => _$pullRequestMinimalSerializer;
}

