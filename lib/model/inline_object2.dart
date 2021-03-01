//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object2.g.dart';

abstract class InlineObject2 implements Built<InlineObject2, InlineObject2Builder> {

    /// The OAuth access token used to authenticate to the GitHub API.
    @nullable
    @BuiltValueField(wireName: r'access_token')
    String get accessToken;

    // Boilerplate code needed to wire-up generated code
    InlineObject2._();

    static void _initializeBuilder(InlineObject2Builder b) => b;

    factory InlineObject2([void updates(InlineObject2Builder b)]) = _$InlineObject2;
    static Serializer<InlineObject2> get serializer => _$inlineObject2Serializer;
}

