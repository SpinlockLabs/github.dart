//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gist_simple_files.g.dart';

abstract class GistSimpleFiles implements Built<GistSimpleFiles, GistSimpleFilesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'filename')
    String get filename;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'language')
    String get language;

    @nullable
    @BuiltValueField(wireName: r'raw_url')
    String get rawUrl;

    @nullable
    @BuiltValueField(wireName: r'size')
    int get size;

    @nullable
    @BuiltValueField(wireName: r'truncated')
    bool get truncated;

    @nullable
    @BuiltValueField(wireName: r'content')
    String get content;

    // Boilerplate code needed to wire-up generated code
    GistSimpleFiles._();

    static void _initializeBuilder(GistSimpleFilesBuilder b) => b;

    factory GistSimpleFiles([void updates(GistSimpleFilesBuilder b)]) = _$GistSimpleFiles;
    static Serializer<GistSimpleFiles> get serializer => _$gistSimpleFilesSerializer;
}

