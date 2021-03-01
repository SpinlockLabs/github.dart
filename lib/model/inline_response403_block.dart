//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response403_block.g.dart';

abstract class InlineResponse403Block implements Built<InlineResponse403Block, InlineResponse403BlockBuilder> {

    @nullable
    @BuiltValueField(wireName: r'reason')
    String get reason;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    String get createdAt;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    // Boilerplate code needed to wire-up generated code
    InlineResponse403Block._();

    static void _initializeBuilder(InlineResponse403BlockBuilder b) => b;

    factory InlineResponse403Block([void updates(InlineResponse403BlockBuilder b)]) = _$InlineResponse403Block;
    static Serializer<InlineResponse403Block> get serializer => _$inlineResponse403BlockSerializer;
}

