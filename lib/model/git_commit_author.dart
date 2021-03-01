//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'git_commit_author.g.dart';

abstract class GitCommitAuthor implements Built<GitCommitAuthor, GitCommitAuthorBuilder> {

    /// Timestamp of the commit
    @nullable
    @BuiltValueField(wireName: r'date')
    DateTime get date;

    /// Git email address of the user
    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    /// Name of the git user
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    // Boilerplate code needed to wire-up generated code
    GitCommitAuthor._();

    static void _initializeBuilder(GitCommitAuthorBuilder b) => b;

    factory GitCommitAuthor([void updates(GitCommitAuthorBuilder b)]) = _$GitCommitAuthor;
    static Serializer<GitCommitAuthor> get serializer => _$gitCommitAuthorSerializer;
}

