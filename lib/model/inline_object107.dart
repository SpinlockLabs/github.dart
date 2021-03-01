//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object107.g.dart';

abstract class InlineObject107 implements Built<InlineObject107, InlineObject107Builder> {

    /// The new Git author email.
    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    /// The new Git author name.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'remote_id')
    String get remoteId;

    // Boilerplate code needed to wire-up generated code
    InlineObject107._();

    static void _initializeBuilder(InlineObject107Builder b) => b;

    factory InlineObject107([void updates(InlineObject107Builder b)]) = _$InlineObject107;
    static Serializer<InlineObject107> get serializer => _$inlineObject107Serializer;
}

