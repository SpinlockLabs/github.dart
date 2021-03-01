//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/actions_secret.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20015.g.dart';

abstract class InlineResponse20015 implements Built<InlineResponse20015, InlineResponse20015Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'secrets')
    BuiltList<ActionsSecret> get secrets;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20015._();

    static void _initializeBuilder(InlineResponse20015Builder b) => b;

    factory InlineResponse20015([void updates(InlineResponse20015Builder b)]) = _$InlineResponse20015;
    static Serializer<InlineResponse20015> get serializer => _$inlineResponse20015Serializer;
}

