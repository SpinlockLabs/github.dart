//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/label_search_result_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20023.g.dart';

abstract class InlineResponse20023 implements Built<InlineResponse20023, InlineResponse20023Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'incomplete_results')
    bool get incompleteResults;

    @nullable
    @BuiltValueField(wireName: r'items')
    BuiltList<LabelSearchResultItem> get items;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20023._();

    static void _initializeBuilder(InlineResponse20023Builder b) => b;

    factory InlineResponse20023([void updates(InlineResponse20023Builder b)]) = _$InlineResponse20023;
    static Serializer<InlineResponse20023> get serializer => _$inlineResponse20023Serializer;
}

