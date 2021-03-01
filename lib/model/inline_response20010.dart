//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/minimal_repository.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20010.g.dart';

abstract class InlineResponse20010 implements Built<InlineResponse20010, InlineResponse20010Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'repositories')
    BuiltList<MinimalRepository> get repositories;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20010._();

    static void _initializeBuilder(InlineResponse20010Builder b) => b;

    factory InlineResponse20010([void updates(InlineResponse20010Builder b)]) = _$InlineResponse20010;
    static Serializer<InlineResponse20010> get serializer => _$inlineResponse20010Serializer;
}

