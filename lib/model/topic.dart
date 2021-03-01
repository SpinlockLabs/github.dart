//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'topic.g.dart';

abstract class Topic implements Built<Topic, TopicBuilder> {

    @nullable
    @BuiltValueField(wireName: r'names')
    BuiltList<String> get names;

    // Boilerplate code needed to wire-up generated code
    Topic._();

    static void _initializeBuilder(TopicBuilder b) => b;

    factory Topic([void updates(TopicBuilder b)]) = _$Topic;
    static Serializer<Topic> get serializer => _$topicSerializer;
}

