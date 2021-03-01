//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repository_subscription.g.dart';

abstract class RepositorySubscription implements Built<RepositorySubscription, RepositorySubscriptionBuilder> {

    /// Determines if notifications should be received from this repository.
    @nullable
    @BuiltValueField(wireName: r'subscribed')
    bool get subscribed;

    /// Determines if all notifications should be blocked from this repository.
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
    @BuiltValueField(wireName: r'repository_url')
    String get repositoryUrl;

    // Boilerplate code needed to wire-up generated code
    RepositorySubscription._();

    static void _initializeBuilder(RepositorySubscriptionBuilder b) => b;

    factory RepositorySubscription([void updates(RepositorySubscriptionBuilder b)]) = _$RepositorySubscription;
    static Serializer<RepositorySubscription> get serializer => _$repositorySubscriptionSerializer;
}

