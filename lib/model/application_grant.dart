//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/application_grant_app.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'application_grant.g.dart';

abstract class ApplicationGrant implements Built<ApplicationGrant, ApplicationGrantBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'app')
    ApplicationGrantApp get app;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'scopes')
    BuiltList<String> get scopes;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    // Boilerplate code needed to wire-up generated code
    ApplicationGrant._();

    static void _initializeBuilder(ApplicationGrantBuilder b) => b;

    factory ApplicationGrant([void updates(ApplicationGrantBuilder b)]) = _$ApplicationGrant;
    static Serializer<ApplicationGrant> get serializer => _$applicationGrantSerializer;
}

