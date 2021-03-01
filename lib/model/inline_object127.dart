//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object127.g.dart';

abstract class InlineObject127 implements Built<InlineObject127, InlineObject127Builder> {

    /// Describes the last point that notifications were checked. Anything updated since this time will not be marked as read. If you omit this parameter, all notifications are marked as read. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`. Default: The current timestamp.
    @nullable
    @BuiltValueField(wireName: r'last_read_at')
    String get lastReadAt;

    // Boilerplate code needed to wire-up generated code
    InlineObject127._();

    static void _initializeBuilder(InlineObject127Builder b) => b;

    factory InlineObject127([void updates(InlineObject127Builder b)]) = _$InlineObject127;
    static Serializer<InlineObject127> get serializer => _$inlineObject127Serializer;
}

