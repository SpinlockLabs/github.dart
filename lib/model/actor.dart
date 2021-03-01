//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'actor.g.dart';

abstract class Actor implements Built<Actor, ActorBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'login')
    String get login;

    @nullable
    @BuiltValueField(wireName: r'display_login')
    String get displayLogin;

    @nullable
    @BuiltValueField(wireName: r'gravatar_id')
    String get gravatarId;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'avatar_url')
    String get avatarUrl;

    // Boilerplate code needed to wire-up generated code
    Actor._();

    static void _initializeBuilder(ActorBuilder b) => b;

    factory Actor([void updates(ActorBuilder b)]) = _$Actor;
    static Serializer<Actor> get serializer => _$actorSerializer;
}

