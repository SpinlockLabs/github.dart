//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'topic_search_result_item_topic_relation.g.dart';

abstract class TopicSearchResultItemTopicRelation implements Built<TopicSearchResultItemTopicRelation, TopicSearchResultItemTopicRelationBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'topic_id')
    int get topicId;

    @nullable
    @BuiltValueField(wireName: r'relation_type')
    String get relationType;

    // Boilerplate code needed to wire-up generated code
    TopicSearchResultItemTopicRelation._();

    static void _initializeBuilder(TopicSearchResultItemTopicRelationBuilder b) => b;

    factory TopicSearchResultItemTopicRelation([void updates(TopicSearchResultItemTopicRelationBuilder b)]) = _$TopicSearchResultItemTopicRelation;
    static Serializer<TopicSearchResultItemTopicRelation> get serializer => _$topicSearchResultItemTopicRelationSerializer;
}

