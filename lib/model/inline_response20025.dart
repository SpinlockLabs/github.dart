//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/topic_search_result_item.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20025.g.dart';

abstract class InlineResponse20025 implements Built<InlineResponse20025, InlineResponse20025Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'incomplete_results')
    bool get incompleteResults;

    @nullable
    @BuiltValueField(wireName: r'items')
    BuiltList<TopicSearchResultItem> get items;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20025._();

    static void _initializeBuilder(InlineResponse20025Builder b) => b;

    factory InlineResponse20025([void updates(InlineResponse20025Builder b)]) = _$InlineResponse20025;
    static Serializer<InlineResponse20025> get serializer => _$inlineResponse20025Serializer;
}

