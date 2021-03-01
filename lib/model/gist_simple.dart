//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:github/model/gist_simple_files.dart';
import 'package:github/model/simple_user.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gist_simple.g.dart';

abstract class GistSimple implements Built<GistSimple, GistSimpleBuilder> {

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
    BuiltMap<String, GistSimpleFiles> get files;

    @nullable
    @BuiltValueField(wireName: r'public')
    bool get public;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    String get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    String get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'comments')
    int get comments;

    @nullable
    @BuiltValueField(wireName: r'user')
    String get user;

    @nullable
    @BuiltValueField(wireName: r'comments_url')
    String get commentsUrl;

    @nullable
    @BuiltValueField(wireName: r'owner')
    SimpleUser get owner;

    @nullable
    @BuiltValueField(wireName: r'truncated')
    bool get truncated;

    // Boilerplate code needed to wire-up generated code
    GistSimple._();

    static void _initializeBuilder(GistSimpleBuilder b) => b;

    factory GistSimple([void updates(GistSimpleBuilder b)]) = _$GistSimple;
    static Serializer<GistSimple> get serializer => _$gistSimpleSerializer;
}

