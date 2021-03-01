//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'content_traffic.g.dart';

abstract class ContentTraffic implements Built<ContentTraffic, ContentTrafficBuilder> {

    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    @nullable
    @BuiltValueField(wireName: r'count')
    int get count;

    @nullable
    @BuiltValueField(wireName: r'uniques')
    int get uniques;

    // Boilerplate code needed to wire-up generated code
    ContentTraffic._();

    static void _initializeBuilder(ContentTrafficBuilder b) => b;

    factory ContentTraffic([void updates(ContentTrafficBuilder b)]) = _$ContentTraffic;
    static Serializer<ContentTraffic> get serializer => _$contentTrafficSerializer;
}

