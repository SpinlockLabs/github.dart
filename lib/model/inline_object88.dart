//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object88.g.dart';

abstract class InlineObject88 implements Built<InlineObject88, InlineObject88Builder> {

    /// The contents of the comment.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    /// Relative path of the file to comment on.
    @nullable
    @BuiltValueField(wireName: r'path')
    String get path;

    /// Line index in the diff to comment on.
    @nullable
    @BuiltValueField(wireName: r'position')
    int get position;

    /// **Deprecated**. Use **position** parameter instead. Line number in the file to comment on.
    @nullable
    @BuiltValueField(wireName: r'line')
    int get line;

    // Boilerplate code needed to wire-up generated code
    InlineObject88._();

    static void _initializeBuilder(InlineObject88Builder b) => b;

    factory InlineObject88([void updates(InlineObject88Builder b)]) = _$InlineObject88;
    static Serializer<InlineObject88> get serializer => _$inlineObject88Serializer;
}

