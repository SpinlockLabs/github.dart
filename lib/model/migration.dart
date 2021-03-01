//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/repository.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'migration.g.dart';

abstract class Migration implements Built<Migration, MigrationBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'owner')
    SimpleUser get owner;

    @nullable
    @BuiltValueField(wireName: r'guid')
    String get guid;

    @nullable
    @BuiltValueField(wireName: r'state')
    String get state;

    @nullable
    @BuiltValueField(wireName: r'lock_repositories')
    bool get lockRepositories;

    @nullable
    @BuiltValueField(wireName: r'exclude_attachments')
    bool get excludeAttachments;

    @nullable
    @BuiltValueField(wireName: r'repositories')
    BuiltList<Repository> get repositories;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'archive_url')
    String get archiveUrl;

    @nullable
    @BuiltValueField(wireName: r'exclude')
    BuiltList<JsonObject> get exclude;

    // Boilerplate code needed to wire-up generated code
    Migration._();

    static void _initializeBuilder(MigrationBuilder b) => b;

    factory Migration([void updates(MigrationBuilder b)]) = _$Migration;
    static Serializer<Migration> get serializer => _$migrationSerializer;
}

