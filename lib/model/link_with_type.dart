//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'link_with_type.g.dart';

abstract class LinkWithType implements Built<LinkWithType, LinkWithTypeBuilder> {

    @nullable
    @BuiltValueField(wireName: r'href')
    String get href;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    // Boilerplate code needed to wire-up generated code
    LinkWithType._();

    static void _initializeBuilder(LinkWithTypeBuilder b) => b;

    factory LinkWithType([void updates(LinkWithTypeBuilder b)]) = _$LinkWithType;
    static Serializer<LinkWithType> get serializer => _$linkWithTypeSerializer;
}

