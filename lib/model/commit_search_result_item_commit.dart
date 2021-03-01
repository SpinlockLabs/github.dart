//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/git_user.dart';
import 'package:github/model/short_branch_commit.dart';
import 'package:github/model/commit_search_result_item_commit_author.dart';
import 'package:github/model/verification.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commit_search_result_item_commit.g.dart';

abstract class CommitSearchResultItemCommit implements Built<CommitSearchResultItemCommit, CommitSearchResultItemCommitBuilder> {

    @nullable
    @BuiltValueField(wireName: r'author')
    CommitSearchResultItemCommitAuthor get author;

    @nullable
    @BuiltValueField(wireName: r'committer')
    GitUser get committer;

    @nullable
    @BuiltValueField(wireName: r'comment_count')
    int get commentCount;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'tree')
    ShortBranchCommit get tree;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'verification')
    Verification get verification;

    // Boilerplate code needed to wire-up generated code
    CommitSearchResultItemCommit._();

    static void _initializeBuilder(CommitSearchResultItemCommitBuilder b) => b;

    factory CommitSearchResultItemCommit([void updates(CommitSearchResultItemCommitBuilder b)]) = _$CommitSearchResultItemCommit;
    static Serializer<CommitSearchResultItemCommit> get serializer => _$commitSearchResultItemCommitSerializer;
}

