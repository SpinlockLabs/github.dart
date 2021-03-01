//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/minimal_repository.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_commit_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'combined_commit_status.g.dart';

abstract class CombinedCommitStatus implements Built<CombinedCommitStatus, CombinedCommitStatusBuilder> {

    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    @nullable
    @BuiltValueField(wireName: r'statuses')
    BuiltList<SimpleCommitStatus> get statuses;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'repository')
    MinimalRepository get repository;

    @nullable
    @BuiltValueField(wireName: r'commit_url')
    String get commitUrl;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    // Boilerplate code needed to wire-up generated code
    CombinedCommitStatus._();

    static void _initializeBuilder(CombinedCommitStatusBuilder b) => b;

    factory CombinedCommitStatus([void updates(CombinedCommitStatusBuilder b)]) = _$CombinedCommitStatus;
    static Serializer<CombinedCommitStatus> get serializer => _$combinedCommitStatusSerializer;
}

