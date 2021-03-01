//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'pages_source_hash.g.dart';

abstract class PagesSourceHash implements Built<PagesSourceHash, PagesSourceHashBuilder> {

    @nullable
    @BuiltValueField(wireName: r'branch')
    String get branch;

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    // Boilerplate code needed to wire-up generated code
    PagesSourceHash._();

    static void _initializeBuilder(PagesSourceHashBuilder b) => b;

    factory PagesSourceHash([void updates(PagesSourceHashBuilder b)]) = _$PagesSourceHash;
    static Serializer<PagesSourceHash> get serializer => _$pagesSourceHashSerializer;
}

