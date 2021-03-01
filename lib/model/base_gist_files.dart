//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_gist_files.g.dart';

abstract class BaseGistFiles implements Built<BaseGistFiles, BaseGistFilesBuilder> {

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

    // Boilerplate code needed to wire-up generated code
    BaseGistFiles._();

    static void _initializeBuilder(BaseGistFilesBuilder b) => b;

    factory BaseGistFiles([void updates(BaseGistFilesBuilder b)]) = _$BaseGistFiles;
    static Serializer<BaseGistFiles> get serializer => _$baseGistFilesSerializer;
}

