//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'porter_large_file.g.dart';

abstract class PorterLargeFile implements Built<PorterLargeFile, PorterLargeFileBuilder> {

    @nullable
    @BuiltValueField(wireName: r'ref_name')
    String get refName;

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    @nullable
    @BuiltValueField(wireName: r'oid')
    String get oid;

    @nullable
    @BuiltValueField(wireName: r'size')
    int get size;

    // Boilerplate code needed to wire-up generated code
    PorterLargeFile._();

    static void _initializeBuilder(PorterLargeFileBuilder b) => b;

    factory PorterLargeFile([void updates(PorterLargeFileBuilder b)]) = _$PorterLargeFile;
    static Serializer<PorterLargeFile> get serializer => _$porterLargeFileSerializer;
}

