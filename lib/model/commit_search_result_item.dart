//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/minimal_repository.dart';
import 'package:github/model/git_user.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/simple_user.dart';
import 'package:github/model/commit_search_result_item_commit.dart';
import 'package:github/model/file_commit_commit_parents.dart';
import 'package:built_value/json_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commit_search_result_item.g.dart';

abstract class CommitSearchResultItem implements Built<CommitSearchResultItem, CommitSearchResultItemBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'comments_url')
    String get commentsUrl;

    @nullable
    @BuiltValueField(wireName: r'commit')
    CommitSearchResultItemCommit get commit;

    @nullable
    @BuiltValueField(wireName: r'author')
    SimpleUser get author;

    @nullable
    @BuiltValueField(wireName: r'committer')
    GitUser get committer;

    @nullable
    @BuiltValueField(wireName: r'parents')
    BuiltList<FileCommitCommitParents> get parents;

    @nullable
    @BuiltValueField(wireName: r'repository')
    MinimalRepository get repository;

    @nullable
    @BuiltValueField(wireName: r'score')
    int get score;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'text_matches')
    BuiltList<JsonObject> get textMatches;

    // Boilerplate code needed to wire-up generated code
    CommitSearchResultItem._();

    static void _initializeBuilder(CommitSearchResultItemBuilder b) => b;

    factory CommitSearchResultItem([void updates(CommitSearchResultItemBuilder b)]) = _$CommitSearchResultItem;
    static Serializer<CommitSearchResultItem> get serializer => _$commitSearchResultItemSerializer;
}

