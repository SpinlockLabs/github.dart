//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/issue_simple.dart';
import 'package:github/model/issue_comment.dart';
import 'package:github/model/event_payload_pages.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_payload.g.dart';

abstract class EventPayload implements Built<EventPayload, EventPayloadBuilder> {

    @nullable
    @BuiltValueField(wireName: r'action')
    String get action;

    @nullable
    @BuiltValueField(wireName: r'issue')
    IssueSimple get issue;

    @nullable
    @BuiltValueField(wireName: r'comment')
    IssueComment get comment;

    @nullable
    @BuiltValueField(wireName: r'pages')
    BuiltList<EventPayloadPages> get pages;

    // Boilerplate code needed to wire-up generated code
    EventPayload._();

    static void _initializeBuilder(EventPayloadBuilder b) => b;

    factory EventPayload([void updates(EventPayloadBuilder b)]) = _$EventPayload;
    static Serializer<EventPayload> get serializer => _$eventPayloadSerializer;
}

