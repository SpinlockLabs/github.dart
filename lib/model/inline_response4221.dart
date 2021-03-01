//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/inline_response422_errors.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response4221.g.dart';

abstract class InlineResponse4221 implements Built<InlineResponse4221, InlineResponse4221Builder> {

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
    InlineResponse4221._();

    static void _initializeBuilder(InlineResponse4221Builder b) => b;

    factory InlineResponse4221([void updates(InlineResponse4221Builder b)]) = _$InlineResponse4221;
    static Serializer<InlineResponse4221> get serializer => _$inlineResponse4221Serializer;
}

