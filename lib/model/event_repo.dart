//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_repo.g.dart';

abstract class EventRepo implements Built<EventRepo, EventRepoBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    // Boilerplate code needed to wire-up generated code
    EventRepo._();

    static void _initializeBuilder(EventRepoBuilder b) => b;

    factory EventRepo([void updates(EventRepoBuilder b)]) = _$EventRepo;
    static Serializer<EventRepo> get serializer => _$eventRepoSerializer;
}

