//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/base_gist_files.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'base_gist.g.dart';

abstract class BaseGist implements Built<BaseGist, BaseGistBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'forks_url')
    String get forksUrl;

    @nullable
    @BuiltValueField(wireName: r'commits_url')
    String get commitsUrl;

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'git_pull_url')
    String get gitPullUrl;

    @nullable
    @BuiltValueField(wireName: r'git_push_url')
    String get gitPushUrl;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'files')
    BuiltMap<String, BaseGistFiles> get files;

    @nullable
    @BuiltValueField(wireName: r'public')
    bool get public;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    DateTime get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    DateTime get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'comments')
    int get comments;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    @nullable
    @BuiltValueField(wireName: r'comments_url')
    String get commentsUrl;

    @nullable
    @BuiltValueField(wireName: r'owner')
    SimpleUser get owner;

    @nullable
    @BuiltValueField(wireName: r'truncated')
    bool get truncated;

    @nullable
    @BuiltValueField(wireName: r'forks')
    BuiltList<JsonObject> get forks;

    @nullable
    @BuiltValueField(wireName: r'history')
    BuiltList<JsonObject> get history;

    // Boilerplate code needed to wire-up generated code
    BaseGist._();

    static void _initializeBuilder(BaseGistBuilder b) => b;

    factory BaseGist([void updates(BaseGistBuilder b)]) = _$BaseGist;
    static Serializer<BaseGist> get serializer => _$baseGistSerializer;
}

