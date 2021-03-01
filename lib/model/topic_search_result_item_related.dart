//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/topic_search_result_item_topic_relation.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'topic_search_result_item_related.g.dart';

abstract class TopicSearchResultItemRelated implements Built<TopicSearchResultItemRelated, TopicSearchResultItemRelatedBuilder> {

    @nullable
    @BuiltValueField(wireName: r'topic_relation')
    TopicSearchResultItemTopicRelation get topicRelation;

    // Boilerplate code needed to wire-up generated code
    TopicSearchResultItemRelated._();

    static void _initializeBuilder(TopicSearchResultItemRelatedBuilder b) => b;

    factory TopicSearchResultItemRelated([void updates(TopicSearchResultItemRelatedBuilder b)]) = _$TopicSearchResultItemRelated;
    static Serializer<TopicSearchResultItemRelated> get serializer => _$topicSearchResultItemRelatedSerializer;
}

