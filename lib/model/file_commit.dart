//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/file_commit_commit.dart';
import 'package:github/model/file_commit_content.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_commit.g.dart';

abstract class FileCommit implements Built<FileCommit, FileCommitBuilder> {

    @nullable
    @BuiltValueField(wireName: r'content')
    FileCommitContent get content;

    @nullable
    @BuiltValueField(wireName: r'commit')
    FileCommitCommit get commit;

    // Boilerplate code needed to wire-up generated code
    FileCommit._();

    static void _initializeBuilder(FileCommitBuilder b) => b;

    factory FileCommit([void updates(FileCommitBuilder b)]) = _$FileCommit;
    static Serializer<FileCommit> get serializer => _$fileCommitSerializer;
}

