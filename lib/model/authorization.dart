//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/application_grant_app.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/scoped_installation.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'authorization.g.dart';

abstract class Authorization implements Built<Authorization, AuthorizationBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    /// A list of scopes that this authorization is in.
    @nullable
    @BuiltValueField(wireName: r'scopes')
    BuiltList<String> get scopes;

    @nullable
    @BuiltValueField(wireName: r'token')
    String get token;

    @nullable
    @BuiltValueField(wireName: r'token_last_eight')
    String get tokenLastEight;

    @nullable
    @BuiltValueField(wireName: r'hashed_token')
    String get hashedToken;

    @nullable
    @BuiltValueField(wireName: r'app')
    ApplicationGrantApp get app;

    @nullable
    @BuiltValueField(wireName: r'note')
    String get note;

    @nullable
    @BuiltValueField(wireName: r'note_url')
    String get noteUrl;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'fingerprint')
    String get fingerprint;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    @nullable
    @BuiltValueField(wireName: r'installation')
    ScopedInstallation get installation;

    // Boilerplate code needed to wire-up generated code
    Authorization._();

    static void _initializeBuilder(AuthorizationBuilder b) => b;

    factory Authorization([void updates(AuthorizationBuilder b)]) = _$Authorization;
    static Serializer<Authorization> get serializer => _$authorizationSerializer;
}

