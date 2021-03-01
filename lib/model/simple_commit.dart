//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/simple_commit_author.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'simple_commit.g.dart';

abstract class SimpleCommit implements Built<SimpleCommit, SimpleCommitBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'tree_id')
    String get treeId;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'timestamp')
    DateTime get timestamp;

    @nullable
    @BuiltValueField(wireName: r'author')
    SimpleCommitAuthor get author;

    @nullable
    @BuiltValueField(wireName: r'committer')
    SimpleCommitAuthor get committer;

    // Boilerplate code needed to wire-up generated code
    SimpleCommit._();

    static void _initializeBuilder(SimpleCommitBuilder b) => b;

    factory SimpleCommit([void updates(SimpleCommitBuilder b)]) = _$SimpleCommit;
    static Serializer<SimpleCommit> get serializer => _$simpleCommitSerializer;
}

