//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/inline_response4033_errors.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response4033.g.dart';

abstract class InlineResponse4033 implements Built<InlineResponse4033, InlineResponse4033Builder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'documentation_url')
    String get documentationUrl;

    @nullable
    @BuiltValueField(wireName: r'errors')
    BuiltList<InlineResponse4033Errors> get errors;

    // Boilerplate code needed to wire-up generated code
    InlineResponse4033._();

    static void _initializeBuilder(InlineResponse4033Builder b) => b;

    factory InlineResponse4033([void updates(InlineResponse4033Builder b)]) = _$InlineResponse4033;
    static Serializer<InlineResponse4033> get serializer => _$inlineResponse4033Serializer;
}

