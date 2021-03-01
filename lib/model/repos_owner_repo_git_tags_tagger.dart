//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_git_tags_tagger.g.dart';

abstract class ReposOwnerRepoGitTagsTagger implements Built<ReposOwnerRepoGitTagsTagger, ReposOwnerRepoGitTagsTaggerBuilder> {

    /// The name of the author of the tag
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The email of the author of the tag
    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    /// When this object was tagged. This is a timestamp in [ISO 8601](https://en.wikipedia.org/wiki/ISO_8601) format: `YYYY-MM-DDTHH:MM:SSZ`.
    @nullable
    @BuiltValueField(wireName: r'date')
    String get date;

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoGitTagsTagger._();

    static void _initializeBuilder(ReposOwnerRepoGitTagsTaggerBuilder b) => b;

    factory ReposOwnerRepoGitTagsTagger([void updates(ReposOwnerRepoGitTagsTaggerBuilder b)]) = _$ReposOwnerRepoGitTagsTagger;
    static Serializer<ReposOwnerRepoGitTagsTagger> get serializer => _$reposOwnerRepoGitTagsTaggerSerializer;
}

