//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object22.g.dart';

abstract class InlineObject22 implements Built<InlineObject22, InlineObject22Builder> {

    /// Describes the last point that notifications were checked.
    @nullable
    @BuiltValueField(wireName: r'last_read_at')
    DateTime get lastReadAt;

    /// Whether the notification has been read.
    @nullable
    @BuiltValueField(wireName: r'read')
    bool get read;

    // Boilerplate code needed to wire-up generated code
    InlineObject22._();

    static void _initializeBuilder(InlineObject22Builder b) => b;

    factory InlineObject22([void updates(InlineObject22Builder b)]) = _$InlineObject22;
    static Serializer<InlineObject22> get serializer => _$inlineObject22Serializer;
}

