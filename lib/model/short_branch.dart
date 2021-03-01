//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/short_branch_commit.dart';
import 'package:github/model/branch_protection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'short_branch.g.dart';

abstract class ShortBranch implements Built<ShortBranch, ShortBranchBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'commit')
    ShortBranchCommit get commit;

    @nullable
    @BuiltValueField(wireName: r'protected')
    bool get protected;

    @nullable
    @BuiltValueField(wireName: r'protection')
    BranchProtection get protection;

    @nullable
    @BuiltValueField(wireName: r'protection_url')
    String get protectionUrl;

    // Boilerplate code needed to wire-up generated code
    ShortBranch._();

    static void _initializeBuilder(ShortBranchBuilder b) => b;

    factory ShortBranch([void updates(ShortBranchBuilder b)]) = _$ShortBranch;
    static Serializer<ShortBranch> get serializer => _$shortBranchSerializer;
}

