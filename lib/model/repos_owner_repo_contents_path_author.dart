//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_contents_path_author.g.dart';

abstract class ReposOwnerRepoContentsPathAuthor implements Built<ReposOwnerRepoContentsPathAuthor, ReposOwnerRepoContentsPathAuthorBuilder> {

    /// The name of the author or committer of the commit. You'll receive a `422` status code if `name` is omitted.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The email of the author or committer of the commit. You'll receive a `422` status code if `email` is omitted.
    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    @nullable
    @BuiltValueField(wireName: r'date')
    String get date;

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoContentsPathAuthor._();

    static void _initializeBuilder(ReposOwnerRepoContentsPathAuthorBuilder b) => b;

    factory ReposOwnerRepoContentsPathAuthor([void updates(ReposOwnerRepoContentsPathAuthorBuilder b)]) = _$ReposOwnerRepoContentsPathAuthor;
    static Serializer<ReposOwnerRepoContentsPathAuthor> get serializer => _$reposOwnerRepoContentsPathAuthorSerializer;
}

