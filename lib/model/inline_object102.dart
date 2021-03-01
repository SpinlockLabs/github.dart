//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/repos_owner_repo_hooks_config.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object102.g.dart';

abstract class InlineObject102 implements Built<InlineObject102, InlineObject102Builder> {

    /// Use `web` to create a webhook. Default: `web`. This parameter only accepts the value `web`.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'config')
    ReposOwnerRepoHooksConfig get config;

    /// Determines what [events](https://docs.github.com/webhooks/event-payloads) the hook is triggered for.
    @nullable
    @BuiltValueField(wireName: r'events')
    BuiltList<String> get events;

    /// Determines if notifications are sent when the webhook is triggered. Set to `true` to send notifications.
    @nullable
    @BuiltValueField(wireName: r'active')
    bool get active;

    // Boilerplate code needed to wire-up generated code
    InlineObject102._();

    static void _initializeBuilder(InlineObject102Builder b) => b
        ..events = ListBuilder()
        ..active = true;

    factory InlineObject102([void updates(InlineObject102Builder b)]) = _$InlineObject102;
    static Serializer<InlineObject102> get serializer => _$inlineObject102Serializer;
}

