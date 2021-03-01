//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'simple_commit_status.g.dart';

abstract class SimpleCommitStatus implements Built<SimpleCommitStatus, SimpleCommitStatusBuilder> {

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

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
    @BuiltValueField(wireName: r'context')
    String get context;

    @nullable
    @BuiltValueField(wireName: r'target_url')
    String get targetUrl;

    @nullable
    @BuiltValueField(wireName: r'required')
    bool get required_;

    @nullable
    @BuiltValueField(wireName: r'avatar_url')
    String get avatarUrl;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    // Boilerplate code needed to wire-up generated code
    SimpleCommitStatus._();

    static void _initializeBuilder(SimpleCommitStatusBuilder b) => b;

    factory SimpleCommitStatus([void updates(SimpleCommitStatusBuilder b)]) = _$SimpleCommitStatus;
    static Serializer<SimpleCommitStatus> get serializer => _$simpleCommitStatusSerializer;
}

