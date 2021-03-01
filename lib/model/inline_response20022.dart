//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/issue_search_result_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20022.g.dart';

abstract class InlineResponse20022 implements Built<InlineResponse20022, InlineResponse20022Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'incomplete_results')
    bool get incompleteResults;

    @nullable
    @BuiltValueField(wireName: r'items')
    BuiltList<IssueSearchResultItem> get items;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20022._();

    static void _initializeBuilder(InlineResponse20022Builder b) => b;

    factory InlineResponse20022([void updates(InlineResponse20022Builder b)]) = _$InlineResponse20022;
    static Serializer<InlineResponse20022> get serializer => _$inlineResponse20022Serializer;
}

