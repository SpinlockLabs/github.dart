//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object176.g.dart';

abstract class InlineObject176 implements Built<InlineObject176, InlineObject176Builder> {

    /// A GPG key in ASCII-armored format.
    @nullable
    @BuiltValueField(wireName: r'armored_public_key')
    String get armoredPublicKey;

    // Boilerplate code needed to wire-up generated code
    InlineObject176._();

    static void _initializeBuilder(InlineObject176Builder b) => b;

    factory InlineObject176([void updates(InlineObject176Builder b)]) = _$InlineObject176;
    static Serializer<InlineObject176> get serializer => _$inlineObject176Serializer;
}

