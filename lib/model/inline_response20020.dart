//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/code_search_result_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20020.g.dart';

abstract class InlineResponse20020 implements Built<InlineResponse20020, InlineResponse20020Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'incomplete_results')
    bool get incompleteResults;

    @nullable
    @BuiltValueField(wireName: r'items')
    BuiltList<CodeSearchResultItem> get items;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20020._();

    static void _initializeBuilder(InlineResponse20020Builder b) => b;

    factory InlineResponse20020([void updates(InlineResponse20020Builder b)]) = _$InlineResponse20020;
    static Serializer<InlineResponse20020> get serializer => _$inlineResponse20020Serializer;
}

