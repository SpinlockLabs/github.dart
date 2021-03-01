//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link.g.dart';

abstract class Link implements Built<Link, LinkBuilder> {

    @nullable
    @BuiltValueField(wireName: r'href')
    String get href;

    // Boilerplate code needed to wire-up generated code
    Link._();

    static void _initializeBuilder(LinkBuilder b) => b;

    factory Link([void updates(LinkBuilder b)]) = _$Link;
    static Serializer<Link> get serializer => _$linkSerializer;
}

