//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_commit_commit_tree.g.dart';

abstract class FileCommitCommitTree implements Built<FileCommitCommitTree, FileCommitCommitTreeBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    // Boilerplate code needed to wire-up generated code
    FileCommitCommitTree._();

    static void _initializeBuilder(FileCommitCommitTreeBuilder b) => b;

    factory FileCommitCommitTree([void updates(FileCommitCommitTreeBuilder b)]) = _$FileCommitCommitTree;
    static Serializer<FileCommitCommitTree> get serializer => _$fileCommitCommitTreeSerializer;
}

