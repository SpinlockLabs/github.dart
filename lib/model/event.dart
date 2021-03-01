//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/actor.dart';
import 'package:github/model/event_payload.dart';
import 'package:github/model/event_repo.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event.g.dart';

abstract class Event implements Built<Event, EventBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'actor')
    Actor get actor;

    @nullable
    @BuiltValueField(wireName: r'repo')
    EventRepo get repo;

    @nullable
    @BuiltValueField(wireName: r'org')
    Actor get org;

    @nullable
    @BuiltValueField(wireName: r'payload')
    EventPayload get payload;

    @nullable
    @BuiltValueField(wireName: r'public')
    bool get public;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    // Boilerplate code needed to wire-up generated code
    Event._();

    static void _initializeBuilder(EventBuilder b) => b;

    factory Event([void updates(EventBuilder b)]) = _$Event;
    static Serializer<Event> get serializer => _$eventSerializer;
}

