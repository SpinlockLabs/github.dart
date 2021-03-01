//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commit_commit_tree.g.dart';

abstract class CommitCommitTree implements Built<CommitCommitTree, CommitCommitTreeBuilder> {

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    // Boilerplate code needed to wire-up generated code
    CommitCommitTree._();

    static void _initializeBuilder(CommitCommitTreeBuilder b) => b;

    factory CommitCommitTree([void updates(CommitCommitTreeBuilder b)]) = _$CommitCommitTree;
    static Serializer<CommitCommitTree> get serializer => _$commitCommitTreeSerializer;
}

