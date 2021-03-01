//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'short_branch_commit.g.dart';

abstract class ShortBranchCommit implements Built<ShortBranchCommit, ShortBranchCommitBuilder> {

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    // Boilerplate code needed to wire-up generated code
    ShortBranchCommit._();

    static void _initializeBuilder(ShortBranchCommitBuilder b) => b;

    factory ShortBranchCommit([void updates(ShortBranchCommitBuilder b)]) = _$ShortBranchCommit;
    static Serializer<ShortBranchCommit> get serializer => _$shortBranchCommitSerializer;
}

