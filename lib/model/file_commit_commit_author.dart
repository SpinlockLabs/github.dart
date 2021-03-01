//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_commit_commit_author.g.dart';

abstract class FileCommitCommitAuthor implements Built<FileCommitCommitAuthor, FileCommitCommitAuthorBuilder> {

    @nullable
    @BuiltValueField(wireName: r'date')
    String get date;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    // Boilerplate code needed to wire-up generated code
    FileCommitCommitAuthor._();

    static void _initializeBuilder(FileCommitCommitAuthorBuilder b) => b;

    factory FileCommitCommitAuthor([void updates(FileCommitCommitAuthorBuilder b)]) = _$FileCommitCommitAuthor;
    static Serializer<FileCommitCommitAuthor> get serializer => _$fileCommitCommitAuthorSerializer;
}

