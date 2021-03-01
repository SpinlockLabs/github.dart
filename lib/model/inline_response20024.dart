//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/repo_search_result_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20024.g.dart';

abstract class InlineResponse20024 implements Built<InlineResponse20024, InlineResponse20024Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'incomplete_results')
    bool get incompleteResults;

    @nullable
    @BuiltValueField(wireName: r'items')
    BuiltList<RepoSearchResultItem> get items;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20024._();

    static void _initializeBuilder(InlineResponse20024Builder b) => b;

    factory InlineResponse20024([void updates(InlineResponse20024Builder b)]) = _$InlineResponse20024;
    static Serializer<InlineResponse20024> get serializer => _$inlineResponse20024Serializer;
}

