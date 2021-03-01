//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/repos_owner_repo_contents_path_committer.dart';
import 'package:github/model/repos_owner_repo_contents_path_author.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object89.g.dart';

abstract class InlineObject89 implements Built<InlineObject89, InlineObject89Builder> {

    /// The commit message.
    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    /// The new file content, using Base64 encoding.
    @nullable
    @BuiltValueField(wireName: r'content')
    String get content;

    /// **Required if you are updating a file**. The blob SHA of the file being replaced.
    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    /// The branch name. Default: the repository’s default branch (usually `master`)
    @nullable
    @BuiltValueField(wireName: r'branch')
    String get branch;

    @nullable
    @BuiltValueField(wireName: r'committer')
    ReposOwnerRepoContentsPathCommitter get committer;

    @nullable
    @BuiltValueField(wireName: r'author')
    ReposOwnerRepoContentsPathAuthor get author;

    // Boilerplate code needed to wire-up generated code
    InlineObject89._();

    static void _initializeBuilder(InlineObject89Builder b) => b;

    factory InlineObject89([void updates(InlineObject89Builder b)]) = _$InlineObject89;
    static Serializer<InlineObject89> get serializer => _$inlineObject89Serializer;
}

