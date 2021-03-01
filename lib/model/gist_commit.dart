//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/simple_user.dart';
import 'package:github/model/gist_commit_change_status.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gist_commit.g.dart';

abstract class GistCommit implements Built<GistCommit, GistCommitBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'version')
    String get version;

    @nullable
    @BuiltValueField(wireName: r'user')
    SimpleUser get user;

    @nullable
    @BuiltValueField(wireName: r'change_status')
    GistCommitChangeStatus get changeStatus;

    @nullable
    @BuiltValueField(wireName: r'committed_at')
    DateTime get committedAt;

    // Boilerplate code needed to wire-up generated code
    GistCommit._();

    static void _initializeBuilder(GistCommitBuilder b) => b;

    factory GistCommit([void updates(GistCommitBuilder b)]) = _$GistCommit;
    static Serializer<GistCommit> get serializer => _$gistCommitSerializer;
}

