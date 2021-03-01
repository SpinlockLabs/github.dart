//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/branch_short_commit.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_short.g.dart';

abstract class BranchShort implements Built<BranchShort, BranchShortBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'commit')
    BranchShortCommit get commit;

    @nullable
    @BuiltValueField(wireName: r'protected')
    bool get protected;

    // Boilerplate code needed to wire-up generated code
    BranchShort._();

    static void _initializeBuilder(BranchShortBuilder b) => b;

    factory BranchShort([void updates(BranchShortBuilder b)]) = _$BranchShort;
    static Serializer<BranchShort> get serializer => _$branchShortSerializer;
}

