//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'git_tree_tree.g.dart';

abstract class GitTreeTree implements Built<GitTreeTree, GitTreeTreeBuilder> {

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    @nullable
    @BuiltValueField(wireName: r'mode')
    String get mode;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'size')
    int get size;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    // Boilerplate code needed to wire-up generated code
    GitTreeTree._();

    static void _initializeBuilder(GitTreeTreeBuilder b) => b;

    factory GitTreeTree([void updates(GitTreeTreeBuilder b)]) = _$GitTreeTree;
    static Serializer<GitTreeTree> get serializer => _$gitTreeTreeSerializer;
}

