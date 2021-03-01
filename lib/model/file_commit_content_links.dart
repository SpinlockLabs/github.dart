//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_commit_content_links.g.dart';

abstract class FileCommitContentLinks implements Built<FileCommitContentLinks, FileCommitContentLinksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'self')
    String get self;

    @nullable
    @BuiltValueField(wireName: r'git')
    String get git;

    @nullable
    @BuiltValueField(wireName: r'html')
    String get html;

    // Boilerplate code needed to wire-up generated code
    FileCommitContentLinks._();

    static void _initializeBuilder(FileCommitContentLinksBuilder b) => b;

    factory FileCommitContentLinks([void updates(FileCommitContentLinksBuilder b)]) = _$FileCommitContentLinks;
    static Serializer<FileCommitContentLinks> get serializer => _$fileCommitContentLinksSerializer;
}

