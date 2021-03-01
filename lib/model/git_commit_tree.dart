//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'git_commit_tree.g.dart';

abstract class GitCommitTree implements Built<GitCommitTree, GitCommitTreeBuilder> {

    /// SHA for the commit
    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    // Boilerplate code needed to wire-up generated code
    GitCommitTree._();

    static void _initializeBuilder(GitCommitTreeBuilder b) => b;

    factory GitCommitTree([void updates(GitCommitTreeBuilder b)]) = _$GitCommitTree;
    static Serializer<GitCommitTree> get serializer => _$gitCommitTreeSerializer;
}

