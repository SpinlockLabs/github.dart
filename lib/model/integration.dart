//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'integration.g.dart';

abstract class Integration implements Built<Integration, IntegrationBuilder> {

    /// Unique identifier of the GitHub app
    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    /// The slug name of the GitHub app
    @nullable
    @BuiltValueField(wireName: r'slug')
    String get slug;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'owner')
    SimpleUser get owner;

    /// The name of the GitHub app
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'external_url')
    String get externalUrl;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    /// The set of permissions for the GitHub app
    @nullable
    @BuiltValueField(wireName: r'permissions')
    BuiltMap<String, String> get permissions;

    /// The list of events for the GitHub app
    @nullable
    @BuiltValueField(wireName: r'events')
    BuiltList<String> get events;

    /// The number of installations associated with the GitHub app
    @nullable
    @BuiltValueField(wireName: r'installations_count')
    int get installationsCount;

    @nullable
    @BuiltValueField(wireName: r'client_id')
    String get clientId;

    @nullable
    @BuiltValueField(wireName: r'client_secret')
    String get clientSecret;

    @nullable
    @BuiltValueField(wireName: r'webhook_secret')
    String get webhookSecret;

    @nullable
    @BuiltValueField(wireName: r'pem')
    String get pem;

    // Boilerplate code needed to wire-up generated code
    Integration._();

    static void _initializeBuilder(IntegrationBuilder b) => b;

    factory Integration([void updates(IntegrationBuilder b)]) = _$Integration;
    static Serializer<Integration> get serializer => _$integrationSerializer;
}

