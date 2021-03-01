//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/orgs_org_hooks_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object33.g.dart';

abstract class InlineObject33 implements Built<InlineObject33, InlineObject33Builder> {

    /// Must be passed as \"web\".
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'config')
    OrgsOrgHooksConfig get config;

    /// Determines what [events](https://docs.github.com/webhooks/event-payloads) the hook is triggered for.
    @nullable
    @BuiltValueField(wireName: r'events')
    BuiltList<String> get events;

    /// Determines if notifications are sent when the webhook is triggered. Set to `true` to send notifications.
    @nullable
    @BuiltValueField(wireName: r'active')
    bool get active;

    // Boilerplate code needed to wire-up generated code
    InlineObject33._();

    static void _initializeBuilder(InlineObject33Builder b) => b
        ..events = ListBuilder()
        ..active = true;

    factory InlineObject33([void updates(InlineObject33Builder b)]) = _$InlineObject33;
    static Serializer<InlineObject33> get serializer => _$inlineObject33Serializer;
}

