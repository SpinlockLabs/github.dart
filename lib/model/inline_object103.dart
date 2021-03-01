//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/repos_owner_repo_hooks_hook_id_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object103.g.dart';

abstract class InlineObject103 implements Built<InlineObject103, InlineObject103Builder> {

    @nullable
    @BuiltValueField(wireName: r'config')
    ReposOwnerRepoHooksHookIdConfig get config;

    /// Determines what [events](https://docs.github.com/webhooks/event-payloads) the hook is triggered for. This replaces the entire array of events.
    @nullable
    @BuiltValueField(wireName: r'events')
    BuiltList<String> get events;

    /// Determines a list of events to be added to the list of events that the Hook triggers for.
    @nullable
    @BuiltValueField(wireName: r'add_events')
    BuiltList<String> get addEvents;

    /// Determines a list of events to be removed from the list of events that the Hook triggers for.
    @nullable
    @BuiltValueField(wireName: r'remove_events')
    BuiltList<String> get removeEvents;

    /// Determines if notifications are sent when the webhook is triggered. Set to `true` to send notifications.
    @nullable
    @BuiltValueField(wireName: r'active')
    bool get active;

    // Boilerplate code needed to wire-up generated code
    InlineObject103._();

    static void _initializeBuilder(InlineObject103Builder b) => b
        ..events = ListBuilder()
        ..active = true;

    factory InlineObject103([void updates(InlineObject103Builder b)]) = _$InlineObject103;
    static Serializer<InlineObject103> get serializer => _$inlineObject103Serializer;
}

