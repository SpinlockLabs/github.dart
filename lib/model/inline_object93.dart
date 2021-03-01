//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object93.g.dart';

abstract class InlineObject93 implements Built<InlineObject93, InlineObject93Builder> {

    /// A custom webhook event name.
    @nullable
    @BuiltValueField(wireName: r'event_type')
    String get eventType;

    /// JSON payload with extra information about the webhook event that your action or worklow may use.
    @nullable
    @BuiltValueField(wireName: r'client_payload')
    BuiltMap<String, JsonObject> get clientPayload;

    // Boilerplate code needed to wire-up generated code
    InlineObject93._();

    static void _initializeBuilder(InlineObject93Builder b) => b;

    factory InlineObject93([void updates(InlineObject93Builder b)]) = _$InlineObject93;
    static Serializer<InlineObject93> get serializer => _$inlineObject93Serializer;
}

