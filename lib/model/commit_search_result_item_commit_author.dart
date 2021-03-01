//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commit_search_result_item_commit_author.g.dart';

abstract class CommitSearchResultItemCommitAuthor implements Built<CommitSearchResultItemCommitAuthor, CommitSearchResultItemCommitAuthorBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    @nullable
    @BuiltValueField(wireName: r'date')
    DateTime get date;

    // Boilerplate code needed to wire-up generated code
    CommitSearchResultItemCommitAuthor._();

    static void _initializeBuilder(CommitSearchResultItemCommitAuthorBuilder b) => b;

    factory CommitSearchResultItemCommitAuthor([void updates(CommitSearchResultItemCommitAuthorBuilder b)]) = _$CommitSearchResultItemCommitAuthor;
    static Serializer<CommitSearchResultItemCommitAuthor> get serializer => _$commitSearchResultItemCommitAuthorSerializer;
}

