//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/environment.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20019.g.dart';

abstract class InlineResponse20019 implements Built<InlineResponse20019, InlineResponse20019Builder> {

    /// The number of environments in this repository
    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'environments')
    BuiltList<Environment> get environments;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20019._();

    static void _initializeBuilder(InlineResponse20019Builder b) => b;

    factory InlineResponse20019([void updates(InlineResponse20019Builder b)]) = _$InlineResponse20019;
    static Serializer<InlineResponse20019> get serializer => _$inlineResponse20019Serializer;
}

