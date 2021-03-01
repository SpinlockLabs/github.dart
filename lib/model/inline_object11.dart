//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object11.g.dart';

abstract class InlineObject11 implements Built<InlineObject11, InlineObject11Builder> {

    /// The title of the attachment
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    /// The body of the attachment
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    // Boilerplate code needed to wire-up generated code
    InlineObject11._();

    static void _initializeBuilder(InlineObject11Builder b) => b;

    factory InlineObject11([void updates(InlineObject11Builder b)]) = _$InlineObject11;
    static Serializer<InlineObject11> get serializer => _$inlineObject11Serializer;
}

