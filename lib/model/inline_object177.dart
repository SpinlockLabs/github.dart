//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object177.g.dart';

abstract class InlineObject177 implements Built<InlineObject177, InlineObject177Builder> {

    /// A descriptive name for the new key.
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    /// The public SSH key to add to your GitHub account.
    @nullable
    @BuiltValueField(wireName: r'key')
    String get key;

    // Boilerplate code needed to wire-up generated code
    InlineObject177._();

    static void _initializeBuilder(InlineObject177Builder b) => b;

    factory InlineObject177([void updates(InlineObject177Builder b)]) = _$InlineObject177;
    static Serializer<InlineObject177> get serializer => _$inlineObject177Serializer;
}

