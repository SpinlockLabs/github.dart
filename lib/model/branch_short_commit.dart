//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_short_commit.g.dart';

abstract class BranchShortCommit implements Built<BranchShortCommit, BranchShortCommitBuilder> {

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    // Boilerplate code needed to wire-up generated code
    BranchShortCommit._();

    static void _initializeBuilder(BranchShortCommitBuilder b) => b;

    factory BranchShortCommit([void updates(BranchShortCommitBuilder b)]) = _$BranchShortCommit;
    static Serializer<BranchShortCommit> get serializer => _$branchShortCommitSerializer;
}

