//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object53.g.dart';

abstract class InlineObject53 implements Built<InlineObject53, InlineObject53Builder> {

    /// The project card's note
    @nullable
    @BuiltValueField(wireName: r'note')
    String get note;

    /// Whether or not the card is archived
    @nullable
    @BuiltValueField(wireName: r'archived')
    bool get archived;

    // Boilerplate code needed to wire-up generated code
    InlineObject53._();

    static void _initializeBuilder(InlineObject53Builder b) => b;

    factory InlineObject53([void updates(InlineObject53Builder b)]) = _$InlineObject53;
    static Serializer<InlineObject53> get serializer => _$inlineObject53Serializer;
}

