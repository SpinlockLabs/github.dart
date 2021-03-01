//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/topic_search_result_item_related.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'topic_search_result_item.g.dart';

abstract class TopicSearchResultItem implements Built<TopicSearchResultItem, TopicSearchResultItemBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'display_name')
    String get displayName;

    @nullable
    @BuiltValueField(wireName: r'short_description')
    String get shortDescription;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'created_by')
    String get createdBy;

    @nullable
    @BuiltValueField(wireName: r'released')
    String get released;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'featured')
    bool get featured;

    @nullable
    @BuiltValueField(wireName: r'curated')
    bool get curated;

    @nullable
    @BuiltValueField(wireName: r'score')
    int get score;

    @nullable
    @BuiltValueField(wireName: r'repository_count')
    int get repositoryCount;

    @nullable
    @BuiltValueField(wireName: r'logo_url')
    String get logoUrl;

    @nullable
    @BuiltValueField(wireName: r'text_matches')
    BuiltList<JsonObject> get textMatches;

    @nullable
    @BuiltValueField(wireName: r'related')
    BuiltList<TopicSearchResultItemRelated> get related;

    @nullable
    @BuiltValueField(wireName: r'aliases')
    BuiltList<TopicSearchResultItemRelated> get aliases;

    // Boilerplate code needed to wire-up generated code
    TopicSearchResultItem._();

    static void _initializeBuilder(TopicSearchResultItemBuilder b) => b;

    factory TopicSearchResultItem([void updates(TopicSearchResultItemBuilder b)]) = _$TopicSearchResultItem;
    static Serializer<TopicSearchResultItem> get serializer => _$topicSearchResultItemSerializer;
}

