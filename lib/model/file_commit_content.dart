//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/file_commit_content_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_commit_content.g.dart';

abstract class FileCommitContent implements Built<FileCommitContent, FileCommitContentBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'size')
    int get size;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'git_url')
    String get gitUrl;

    @nullable
    @BuiltValueField(wireName: r'download_url')
    String get downloadUrl;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'_links')
    FileCommitContentLinks get links;

    // Boilerplate code needed to wire-up generated code
    FileCommitContent._();

    static void _initializeBuilder(FileCommitContentBuilder b) => b;

    factory FileCommitContent([void updates(FileCommitContentBuilder b)]) = _$FileCommitContent;
    static Serializer<FileCommitContent> get serializer => _$fileCommitContentSerializer;
}

