//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'status.g.dart';

abstract class Status implements Built<Status, StatusBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'avatar_url')
    String get avatarUrl;

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'target_url')
    String get targetUrl;

    @nullable
    @BuiltValueField(wireName: r'context')
    String get context;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    String get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    String get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'creator')
    SimpleUser get creator;

    // Boilerplate code needed to wire-up generated code
    Status._();

    static void _initializeBuilder(StatusBuilder b) => b;

    factory Status([void updates(StatusBuilder b)]) = _$Status;
    static Serializer<Status> get serializer => _$statusSerializer;
}

