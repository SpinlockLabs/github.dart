//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object81.g.dart';

abstract class InlineObject81 implements Built<InlineObject81, InlineObject81Builder> {

    /// The sha of the head commit.
    @nullable
    @BuiltValueField(wireName: r'head_sha')
    String get headSha;

    // Boilerplate code needed to wire-up generated code
    InlineObject81._();

    static void _initializeBuilder(InlineObject81Builder b) => b;

    factory InlineObject81([void updates(InlineObject81Builder b)]) = _$InlineObject81;
    static Serializer<InlineObject81> get serializer => _$inlineObject81Serializer;
}

