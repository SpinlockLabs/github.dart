//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/inline_response403_block.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response403.g.dart';

abstract class InlineResponse403 implements Built<InlineResponse403, InlineResponse403Builder> {

    @nullable
    @BuiltValueField(wireName: r'block')
    InlineResponse403Block get block;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'documentation_url')
    String get documentationUrl;

    // Boilerplate code needed to wire-up generated code
    InlineResponse403._();

    static void _initializeBuilder(InlineResponse403Builder b) => b;

    factory InlineResponse403([void updates(InlineResponse403Builder b)]) = _$InlineResponse403;
    static Serializer<InlineResponse403> get serializer => _$inlineResponse403Serializer;
}

