//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'short_blob.g.dart';

abstract class ShortBlob implements Built<ShortBlob, ShortBlobBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    // Boilerplate code needed to wire-up generated code
    ShortBlob._();

    static void _initializeBuilder(ShortBlobBuilder b) => b;

    factory ShortBlob([void updates(ShortBlobBuilder b)]) = _$ShortBlob;
    static Serializer<ShortBlob> get serializer => _$shortBlobSerializer;
}

