//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'blob.g.dart';

abstract class Blob implements Built<Blob, BlobBuilder> {

    @nullable
    @BuiltValueField(wireName: r'content')
    String get content;

    @nullable
    @BuiltValueField(wireName: r'encoding')
    String get encoding;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'size')
    int get size;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'highlighted_content')
    String get highlightedContent;

    // Boilerplate code needed to wire-up generated code
    Blob._();

    static void _initializeBuilder(BlobBuilder b) => b;

    factory Blob([void updates(BlobBuilder b)]) = _$Blob;
    static Serializer<Blob> get serializer => _$blobSerializer;
}

