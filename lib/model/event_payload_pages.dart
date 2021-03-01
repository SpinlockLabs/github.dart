//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'event_payload_pages.g.dart';

abstract class EventPayloadPages implements Built<EventPayloadPages, EventPayloadPagesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'page_name')
    String get pageName;

    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    @nullable
    @BuiltValueField(wireName: r'summary')
    String get summary;

    @nullable
    @BuiltValueField(wireName: r'action')
    String get action;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    // Boilerplate code needed to wire-up generated code
    EventPayloadPages._();

    static void _initializeBuilder(EventPayloadPagesBuilder b) => b;

    factory EventPayloadPages([void updates(EventPayloadPagesBuilder b)]) = _$EventPayloadPages;
    static Serializer<EventPayloadPages> get serializer => _$eventPayloadPagesSerializer;
}

