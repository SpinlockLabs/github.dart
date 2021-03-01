//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/commit_files.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/commit_parents.dart';
import 'package:github/model/commit_stats.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/commit_commit.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commit.g.dart';

abstract class Commit implements Built<Commit, CommitBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'comments_url')
    String get commentsUrl;

    @nullable
    @BuiltValueField(wireName: r'commit')
    CommitCommit get commit;

    @nullable
    @BuiltValueField(wireName: r'author')
    SimpleUser get author;

    @nullable
    @BuiltValueField(wireName: r'committer')
    SimpleUser get committer;

    @nullable
    @BuiltValueField(wireName: r'parents')
    BuiltList<CommitParents> get parents;

    @nullable
    @BuiltValueField(wireName: r'stats')
    CommitStats get stats;

    @nullable
    @BuiltValueField(wireName: r'files')
    BuiltList<CommitFiles> get files;

    // Boilerplate code needed to wire-up generated code
    Commit._();

    static void _initializeBuilder(CommitBuilder b) => b;

    factory Commit([void updates(CommitBuilder b)]) = _$Commit;
    static Serializer<Commit> get serializer => _$commitSerializer;
}

