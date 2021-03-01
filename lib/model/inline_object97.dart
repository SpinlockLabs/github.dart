//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/repos_owner_repo_git_commits_committer.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/repos_owner_repo_git_commits_author.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object97.g.dart';

abstract class InlineObject97 implements Built<InlineObject97, InlineObject97Builder> {

    /// The commit message
    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    /// The SHA of the tree object this commit points to
    @nullable
    @BuiltValueField(wireName: r'tree')
    String get tree;

    /// The SHAs of the commits that were the parents of this commit. If omitted or empty, the commit will be written as a root commit. For a single parent, an array of one SHA should be provided; for a merge commit, an array of more than one should be provided.
    @nullable
    @BuiltValueField(wireName: r'parents')
    BuiltList<String> get parents;

    @nullable
    @BuiltValueField(wireName: r'author')
    ReposOwnerRepoGitCommitsAuthor get author;

    @nullable
    @BuiltValueField(wireName: r'committer')
    ReposOwnerRepoGitCommitsCommitter get committer;

    /// The [PGP signature](https://en.wikipedia.org/wiki/Pretty_Good_Privacy) of the commit. GitHub adds the signature to the `gpgsig` header of the created commit. For a commit signature to be verifiable by Git or GitHub, it must be an ASCII-armored detached PGP signature over the string commit as it would be written to the object database. To pass a `signature` parameter, you need to first manually create a valid PGP signature, which can be complicated. You may find it easier to [use the command line](https://git-scm.com/book/id/v2/Git-Tools-Signing-Your-Work) to create signed commits.
    @nullable
    @BuiltValueField(wireName: r'signature')
    String get signature;

    // Boilerplate code needed to wire-up generated code
    InlineObject97._();

    static void _initializeBuilder(InlineObject97Builder b) => b;

    factory InlineObject97([void updates(InlineObject97Builder b)]) = _$InlineObject97;
    static Serializer<InlineObject97> get serializer => _$inlineObject97Serializer;
}

