//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/inline_response422_errors.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response422.g.dart';

abstract class InlineResponse422 implements Built<InlineResponse422, InlineResponse422Builder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'errors')
    BuiltList<InlineResponse422Errors> get errors;

    // Boilerplate code needed to wire-up generated code
    InlineResponse422._();

    static void _initializeBuilder(InlineResponse422Builder b) => b;

    factory InlineResponse422([void updates(InlineResponse422Builder b)]) = _$InlineResponse422;
    static Serializer<InlineResponse422> get serializer => _$inlineResponse422Serializer;
}

