//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/user_search_result_item.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response20026.g.dart';

abstract class InlineResponse20026 implements Built<InlineResponse20026, InlineResponse20026Builder> {

    @nullable
    @BuiltValueField(wireName: r'total_count')
    int get totalCount;

    @nullable
    @BuiltValueField(wireName: r'incomplete_results')
    bool get incompleteResults;

    @nullable
    @BuiltValueField(wireName: r'items')
    BuiltList<UserSearchResultItem> get items;

    // Boilerplate code needed to wire-up generated code
    InlineResponse20026._();

    static void _initializeBuilder(InlineResponse20026Builder b) => b;

    factory InlineResponse20026([void updates(InlineResponse20026Builder b)]) = _$InlineResponse20026;
    static Serializer<InlineResponse20026> get serializer => _$inlineResponse20026Serializer;
}

