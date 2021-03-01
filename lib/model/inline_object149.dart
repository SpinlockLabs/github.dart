//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object149.g.dart';

abstract class InlineObject149 implements Built<InlineObject149, InlineObject149Builder> {

    /// Determines if notifications should be received from this repository.
    @nullable
    @BuiltValueField(wireName: r'subscribed')
    bool get subscribed;

    /// Determines if all notifications should be blocked from this repository.
    @nullable
    @BuiltValueField(wireName: r'ignored')
    bool get ignored;

    // Boilerplate code needed to wire-up generated code
    InlineObject149._();

    static void _initializeBuilder(InlineObject149Builder b) => b;

    factory InlineObject149([void updates(InlineObject149Builder b)]) = _$InlineObject149;
    static Serializer<InlineObject149> get serializer => _$inlineObject149Serializer;
}

