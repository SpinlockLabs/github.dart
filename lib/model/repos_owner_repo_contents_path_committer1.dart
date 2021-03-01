//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_contents_path_committer1.g.dart';

abstract class ReposOwnerRepoContentsPathCommitter1 implements Built<ReposOwnerRepoContentsPathCommitter1, ReposOwnerRepoContentsPathCommitter1Builder> {

    /// The name of the author (or committer) of the commit
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The email of the author (or committer) of the commit
    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoContentsPathCommitter1._();

    static void _initializeBuilder(ReposOwnerRepoContentsPathCommitter1Builder b) => b;

    factory ReposOwnerRepoContentsPathCommitter1([void updates(ReposOwnerRepoContentsPathCommitter1Builder b)]) = _$ReposOwnerRepoContentsPathCommitter1;
    static Serializer<ReposOwnerRepoContentsPathCommitter1> get serializer => _$reposOwnerRepoContentsPathCommitter1Serializer;
}

