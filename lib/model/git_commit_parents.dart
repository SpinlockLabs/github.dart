//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'git_commit_parents.g.dart';

abstract class GitCommitParents implements Built<GitCommitParents, GitCommitParentsBuilder> {

    /// SHA for the commit
    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    // Boilerplate code needed to wire-up generated code
    GitCommitParents._();

    static void _initializeBuilder(GitCommitParentsBuilder b) => b;

    factory GitCommitParents([void updates(GitCommitParentsBuilder b)]) = _$GitCommitParents;
    static Serializer<GitCommitParents> get serializer => _$gitCommitParentsSerializer;
}

