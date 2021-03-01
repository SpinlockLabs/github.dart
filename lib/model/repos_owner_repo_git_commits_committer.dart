//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_git_commits_committer.g.dart';

abstract class ReposOwnerRepoGitCommitsCommitter implements Built<ReposOwnerRepoGitCommitsCommitter, ReposOwnerRepoGitCommitsCommitterBuilder> {

    /// The name of the author (or committer) of the commit
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The email of the author (or committer) of the commit
    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    /// Indicates when this commit was authored (or committed). This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
    @nullable
    @BuiltValueField(wireName: r'date')
    String get date;

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoGitCommitsCommitter._();

    static void _initializeBuilder(ReposOwnerRepoGitCommitsCommitterBuilder b) => b;

    factory ReposOwnerRepoGitCommitsCommitter([void updates(ReposOwnerRepoGitCommitsCommitterBuilder b)]) = _$ReposOwnerRepoGitCommitsCommitter;
    static Serializer<ReposOwnerRepoGitCommitsCommitter> get serializer => _$reposOwnerRepoGitCommitsCommitterSerializer;
}

