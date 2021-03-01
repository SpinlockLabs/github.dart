//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/inline_response5031_errors.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response5031.g.dart';

abstract class InlineResponse5031 implements Built<InlineResponse5031, InlineResponse5031Builder> {

    @nullable
    @BuiltValueField(wireName: r'code')
    String get code;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'documentation_url')
    String get documentationUrl;

    @nullable
    @BuiltValueField(wireName: r'errors')
    BuiltList<InlineResponse5031Errors> get errors;

    // Boilerplate code needed to wire-up generated code
    InlineResponse5031._();

    static void _initializeBuilder(InlineResponse5031Builder b) => b;

    factory InlineResponse5031([void updates(InlineResponse5031Builder b)]) = _$InlineResponse5031;
    static Serializer<InlineResponse5031> get serializer => _$inlineResponse5031Serializer;
}

