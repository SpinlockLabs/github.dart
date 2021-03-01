//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/orgs_org_hooks_hook_id_config.dart';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object34.g.dart';

abstract class InlineObject34 implements Built<InlineObject34, InlineObject34Builder> {

    @nullable
    @BuiltValueField(wireName: r'config')
    OrgsOrgHooksHookIdConfig get config;

    /// Determines what [events](https://docs.github.com/webhooks/event-payloads) the hook is triggered for.
    @nullable
    @BuiltValueField(wireName: r'events')
    BuiltList<String> get events;

    /// Determines if notifications are sent when the webhook is triggered. Set to `true` to send notifications.
    @nullable
    @BuiltValueField(wireName: r'active')
    bool get active;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    // Boilerplate code needed to wire-up generated code
    InlineObject34._();

    static void _initializeBuilder(InlineObject34Builder b) => b
        ..events = ListBuilder()
        ..active = true;

    factory InlineObject34([void updates(InlineObject34Builder b)]) = _$InlineObject34;
    static Serializer<InlineObject34> get serializer => _$inlineObject34Serializer;
}

