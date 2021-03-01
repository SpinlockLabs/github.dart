//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object5.g.dart';

abstract class InlineObject5 implements Built<InlineObject5, InlineObject5Builder> {

    /// The access_token of the OAuth application.
    @nullable
    @BuiltValueField(wireName: r'access_token')
    String get accessToken;

    // Boilerplate code needed to wire-up generated code
    InlineObject5._();

    static void _initializeBuilder(InlineObject5Builder b) => b;

    factory InlineObject5([void updates(InlineObject5Builder b)]) = _$InlineObject5;
    static Serializer<InlineObject5> get serializer => _$inlineObject5Serializer;
}

