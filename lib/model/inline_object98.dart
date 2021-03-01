//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object98.g.dart';

abstract class InlineObject98 implements Built<InlineObject98, InlineObject98Builder> {

    /// The name of the fully qualified reference (ie: `refs/heads/master`). If it doesn't start with 'refs' and have at least two slashes, it will be rejected.
    @nullable
    @BuiltValueField(wireName: r'ref')
    String get ref;

    /// The SHA1 value for this reference.
    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'key')
    String get key;

    // Boilerplate code needed to wire-up generated code
    InlineObject98._();

    static void _initializeBuilder(InlineObject98Builder b) => b;

    factory InlineObject98([void updates(InlineObject98Builder b)]) = _$InlineObject98;
    static Serializer<InlineObject98> get serializer => _$inlineObject98Serializer;
}

