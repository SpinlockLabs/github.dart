//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'thread_subscription.g.dart';

abstract class ThreadSubscription implements Built<ThreadSubscription, ThreadSubscriptionBuilder> {

    @nullable
    @BuiltValueField(wireName: r'subscribed')
    bool get subscribed;

    @nullable
    @BuiltValueField(wireName: r'ignored')
    bool get ignored;

    @nullable
    @BuiltValueField(wireName: r'reason')
    String get reason;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'thread_url')
    String get threadUrl;

    @nullable
    @BuiltValueField(wireName: r'repository_url')
    String get repositoryUrl;

    // Boilerplate code needed to wire-up generated code
    ThreadSubscription._();

    static void _initializeBuilder(ThreadSubscriptionBuilder b) => b;

    factory ThreadSubscription([void updates(ThreadSubscriptionBuilder b)]) = _$ThreadSubscription;
    static Serializer<ThreadSubscription> get serializer => _$threadSubscriptionSerializer;
}

