//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/commit_search_result_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20021.g.dart';

abstract class InlineResponse20021 implements Built<InlineResponse20021, InlineResponse20021Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'incomplete_results')
    bool get incompleteResults;

    @nullable
    @BuiltValueField(wireName: r'items')
    BuiltList<CommitSearchResultItem> get items;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20021._();

    static void _initializeBuilder(InlineResponse20021Builder b) => b;

    factory InlineResponse20021([void updates(InlineResponse20021Builder b)]) = _$InlineResponse20021;
    static Serializer<InlineResponse20021> get serializer => _$inlineResponse20021Serializer;
}

