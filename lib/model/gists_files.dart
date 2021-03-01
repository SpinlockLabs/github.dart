//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gists_files.g.dart';

abstract class GistsFiles implements Built<GistsFiles, GistsFilesBuilder> {

    /// Content of the file
    @nullable
    @BuiltValueField(wireName: r'content')
    String get content;

    // Boilerplate code needed to wire-up generated code
    GistsFiles._();

    static void _initializeBuilder(GistsFilesBuilder b) => b;

    factory GistsFiles([void updates(GistsFilesBuilder b)]) = _$GistsFiles;
    static Serializer<GistsFiles> get serializer => _$gistsFilesSerializer;
}

