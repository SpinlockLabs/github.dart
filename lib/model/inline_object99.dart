//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object99.g.dart';

abstract class InlineObject99 implements Built<InlineObject99, InlineObject99Builder> {

    /// The SHA1 value to set this reference to
    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    /// Indicates whether to force the update or to make sure the update is a fast-forward update. Leaving this out or setting it to `false` will make sure you're not overwriting work.
    @nullable
    @BuiltValueField(wireName: r'force')
    bool get force;

    // Boilerplate code needed to wire-up generated code
    InlineObject99._();

    static void _initializeBuilder(InlineObject99Builder b) => b
        ..force = false;

    factory InlineObject99([void updates(InlineObject99Builder b)]) = _$InlineObject99;
    static Serializer<InlineObject99> get serializer => _$inlineObject99Serializer;
}

