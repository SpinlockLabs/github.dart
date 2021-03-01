//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/hovercard_contexts.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'hovercard.g.dart';

abstract class Hovercard implements Built<Hovercard, HovercardBuilder> {

    @nullable
    @BuiltValueField(wireName: r'contexts')
    BuiltList<HovercardContexts> get contexts;

    // Boilerplate code needed to wire-up generated code
    Hovercard._();

    static void _initializeBuilder(HovercardBuilder b) => b;

    factory Hovercard([void updates(HovercardBuilder b)]) = _$Hovercard;
    static Serializer<Hovercard> get serializer => _$hovercardSerializer;
}

