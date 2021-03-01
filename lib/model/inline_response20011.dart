//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/installation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20011.g.dart';

abstract class InlineResponse20011 implements Built<InlineResponse20011, InlineResponse20011Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'installations')
    BuiltList<Installation> get installations;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20011._();

    static void _initializeBuilder(InlineResponse20011Builder b) => b;

    factory InlineResponse20011([void updates(InlineResponse20011Builder b)]) = _$InlineResponse20011;
    static Serializer<InlineResponse20011> get serializer => _$inlineResponse20011Serializer;
}

