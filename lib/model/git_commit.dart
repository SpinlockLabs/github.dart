//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/git_commit_verification.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/git_commit_parents.dart';
import 'package:github/model/git_commit_author.dart';
import 'package:github/model/git_commit_tree.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'git_commit.g.dart';

abstract class GitCommit implements Built<GitCommit, GitCommitBuilder> {

    /// SHA for the commit
    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'author')
    GitCommitAuthor get author;

    @nullable
    @BuiltValueField(wireName: r'committer')
    GitCommitAuthor get committer;

    /// Message describing the purpose of the commit
    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'tree')
    GitCommitTree get tree;

    @nullable
    @BuiltValueField(wireName: r'parents')
    BuiltList<GitCommitParents> get parents;

    @nullable
    @BuiltValueField(wireName: r'verification')
    GitCommitVerification get verification;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    // Boilerplate code needed to wire-up generated code
    GitCommit._();

    static void _initializeBuilder(GitCommitBuilder b) => b;

    factory GitCommit([void updates(GitCommitBuilder b)]) = _$GitCommit;
    static Serializer<GitCommit> get serializer => _$gitCommitSerializer;
}

