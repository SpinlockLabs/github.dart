//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/git_tree_tree.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'git_tree.g.dart';

abstract class GitTree implements Built<GitTree, GitTreeBuilder> {

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'truncated')
    bool get truncated;

    /// Objects specifying a tree structure
    @nullable
    @BuiltValueField(wireName: r'tree')
    BuiltList<GitTreeTree> get tree;

    // Boilerplate code needed to wire-up generated code
    GitTree._();

    static void _initializeBuilder(GitTreeBuilder b) => b;

    factory GitTree([void updates(GitTreeBuilder b)]) = _$GitTree;
    static Serializer<GitTree> get serializer => _$gitTreeSerializer;
}

