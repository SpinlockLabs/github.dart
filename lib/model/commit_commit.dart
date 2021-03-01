//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/git_user.dart';
import 'package:github/model/commit_commit_tree.dart';
import 'package:github/model/verification.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commit_commit.g.dart';

abstract class CommitCommit implements Built<CommitCommit, CommitCommitBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'author')
    GitUser get author;

    @nullable
    @BuiltValueField(wireName: r'committer')
    GitUser get committer;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'comment_count')
    int get commentCount;

    @nullable
    @BuiltValueField(wireName: r'tree')
    CommitCommitTree get tree;

    @nullable
    @BuiltValueField(wireName: r'verification')
    Verification get verification;

    // Boilerplate code needed to wire-up generated code
    CommitCommit._();

    static void _initializeBuilder(CommitCommitBuilder b) => b;

    factory CommitCommit([void updates(CommitCommitBuilder b)]) = _$CommitCommit;
    static Serializer<CommitCommit> get serializer => _$commitCommitSerializer;
}

