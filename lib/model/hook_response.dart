//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hook_response.g.dart';

abstract class HookResponse implements Built<HookResponse, HookResponseBuilder> {

    @nullable
    @BuiltValueField(wireName: r'code')
    int get code;

    @nullable
    @BuiltValueField(wireName: r'status')
    String get status;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    // Boilerplate code needed to wire-up generated code
    HookResponse._();

    static void _initializeBuilder(HookResponseBuilder b) => b;

    factory HookResponse([void updates(HookResponseBuilder b)]) = _$HookResponse;
    static Serializer<HookResponse> get serializer => _$hookResponseSerializer;
}

