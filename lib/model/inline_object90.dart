//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/repos_owner_repo_contents_path_committer1.dart';
import 'package:github/model/repos_owner_repo_contents_path_author1.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object90.g.dart';

abstract class InlineObject90 implements Built<InlineObject90, InlineObject90Builder> {

    /// The commit message.
    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    /// The blob SHA of the file being replaced.
    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    /// The branch name. Default: the repository’s default branch (usually `master`)
    @nullable
    @BuiltValueField(wireName: r'branch')
    String get branch;

    @nullable
    @BuiltValueField(wireName: r'committer')
    ReposOwnerRepoContentsPathCommitter1 get committer;

    @nullable
    @BuiltValueField(wireName: r'author')
    ReposOwnerRepoContentsPathAuthor1 get author;

    // Boilerplate code needed to wire-up generated code
    InlineObject90._();

    static void _initializeBuilder(InlineObject90Builder b) => b;

    factory InlineObject90([void updates(InlineObject90Builder b)]) = _$InlineObject90;
    static Serializer<InlineObject90> get serializer => _$inlineObject90Serializer;
}

