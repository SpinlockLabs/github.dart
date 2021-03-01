//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object141.g.dart';

abstract class InlineObject141 implements Built<InlineObject141, InlineObject141Builder> {

    /// The message for the pull request review dismissal
    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'event')
    String get event;

    // Boilerplate code needed to wire-up generated code
    InlineObject141._();

    static void _initializeBuilder(InlineObject141Builder b) => b;

    factory InlineObject141([void updates(InlineObject141Builder b)]) = _$InlineObject141;
    static Serializer<InlineObject141> get serializer => _$inlineObject141Serializer;
}

