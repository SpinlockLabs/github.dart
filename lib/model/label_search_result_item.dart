//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'label_search_result_item.g.dart';

abstract class LabelSearchResultItem implements Built<LabelSearchResultItem, LabelSearchResultItemBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'color')
    String get color;

    @nullable
    @BuiltValueField(wireName: r'default')
    bool get default_;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'score')
    int get score;

    @nullable
    @BuiltValueField(wireName: r'text_matches')
    BuiltList<JsonObject> get textMatches;

    // Boilerplate code needed to wire-up generated code
    LabelSearchResultItem._();

    static void _initializeBuilder(LabelSearchResultItemBuilder b) => b;

    factory LabelSearchResultItem([void updates(LabelSearchResultItemBuilder b)]) = _$LabelSearchResultItem;
    static Serializer<LabelSearchResultItem> get serializer => _$labelSearchResultItemSerializer;
}

