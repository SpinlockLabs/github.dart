//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object4.g.dart';

abstract class InlineObject4 implements Built<InlineObject4, InlineObject4Builder> {

    /// The OAuth access token used to authenticate to the GitHub API.
    @nullable
    @BuiltValueField(wireName: r'access_token')
    String get accessToken;

    // Boilerplate code needed to wire-up generated code
    InlineObject4._();

    static void _initializeBuilder(InlineObject4Builder b) => b;

    factory InlineObject4([void updates(InlineObject4Builder b)]) = _$InlineObject4;
    static Serializer<InlineObject4> get serializer => _$inlineObject4Serializer;
}

