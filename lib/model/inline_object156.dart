//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object156.g.dart';

abstract class InlineObject156 implements Built<InlineObject156, InlineObject156Builder> {

    /// The SCIM schema URIs.
    @nullable
    @BuiltValueField(wireName: r'schemas')
    BuiltList<String> get schemas;

    /// Array of [SCIM operations](https://tools.ietf.org/html/rfc7644#section-3.5.2).
    @nullable
    @BuiltValueField(wireName: r'Operations')
    BuiltList<JsonObject> get operations;

    // Boilerplate code needed to wire-up generated code
    InlineObject156._();

    static void _initializeBuilder(InlineObject156Builder b) => b;

    factory InlineObject156([void updates(InlineObject156Builder b)]) = _$InlineObject156;
    static Serializer<InlineObject156> get serializer => _$inlineObject156Serializer;
}

