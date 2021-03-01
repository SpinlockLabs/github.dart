//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_contents_path_author1.g.dart';

abstract class ReposOwnerRepoContentsPathAuthor1 implements Built<ReposOwnerRepoContentsPathAuthor1, ReposOwnerRepoContentsPathAuthor1Builder> {

    /// The name of the author (or committer) of the commit
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The email of the author (or committer) of the commit
    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoContentsPathAuthor1._();

    static void _initializeBuilder(ReposOwnerRepoContentsPathAuthor1Builder b) => b;

    factory ReposOwnerRepoContentsPathAuthor1([void updates(ReposOwnerRepoContentsPathAuthor1Builder b)]) = _$ReposOwnerRepoContentsPathAuthor1;
    static Serializer<ReposOwnerRepoContentsPathAuthor1> get serializer => _$reposOwnerRepoContentsPathAuthor1Serializer;
}

