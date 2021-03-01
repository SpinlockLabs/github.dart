//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/artifact.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20012.g.dart';

abstract class InlineResponse20012 implements Built<InlineResponse20012, InlineResponse20012Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'artifacts')
    BuiltList<Artifact> get artifacts;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20012._();

    static void _initializeBuilder(InlineResponse20012Builder b) => b;

    factory InlineResponse20012([void updates(InlineResponse20012Builder b)]) = _$InlineResponse20012;
    static Serializer<InlineResponse20012> get serializer => _$inlineResponse20012Serializer;
}

