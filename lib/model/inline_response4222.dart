//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/inline_response422_errors.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response4222.g.dart';

abstract class InlineResponse4222 implements Built<InlineResponse4222, InlineResponse4222Builder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'errors')
    BuiltList<InlineResponse422Errors> get errors;

    @nullable
    @BuiltValueField(wireName: r'documentation_url')
    String get documentationUrl;

    // Boilerplate code needed to wire-up generated code
    InlineResponse4222._();

    static void _initializeBuilder(InlineResponse4222Builder b) => b;

    factory InlineResponse4222([void updates(InlineResponse4222Builder b)]) = _$InlineResponse4222;
    static Serializer<InlineResponse4222> get serializer => _$inlineResponse4222Serializer;
}

