//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_commit_commit_parents.g.dart';

abstract class FileCommitCommitParents implements Built<FileCommitCommitParents, FileCommitCommitParentsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    // Boilerplate code needed to wire-up generated code
    FileCommitCommitParents._();

    static void _initializeBuilder(FileCommitCommitParentsBuilder b) => b;

    factory FileCommitCommitParents([void updates(FileCommitCommitParentsBuilder b)]) = _$FileCommitCommitParents;
    static Serializer<FileCommitCommitParents> get serializer => _$fileCommitCommitParentsSerializer;
}

