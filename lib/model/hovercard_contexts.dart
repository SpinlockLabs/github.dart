//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hovercard_contexts.g.dart';

abstract class HovercardContexts implements Built<HovercardContexts, HovercardContextsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'octicon')
    String get octicon;

    // Boilerplate code needed to wire-up generated code
    HovercardContexts._();

    static void _initializeBuilder(HovercardContextsBuilder b) => b;

    factory HovercardContexts([void updates(HovercardContextsBuilder b)]) = _$HovercardContexts;
    static Serializer<HovercardContexts> get serializer => _$hovercardContextsSerializer;
}

