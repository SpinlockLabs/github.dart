//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object23.g.dart';

abstract class InlineObject23 implements Built<InlineObject23, InlineObject23Builder> {

    /// Whether to block all notifications from a thread.
    @nullable
    @BuiltValueField(wireName: r'ignored')
    bool get ignored;

    // Boilerplate code needed to wire-up generated code
    InlineObject23._();

    static void _initializeBuilder(InlineObject23Builder b) => b
        ..ignored = false;

    factory InlineObject23([void updates(InlineObject23Builder b)]) = _$InlineObject23;
    static Serializer<InlineObject23> get serializer => _$inlineObject23Serializer;
}

