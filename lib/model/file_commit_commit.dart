//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/file_commit_commit_tree.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/file_commit_commit_parents.dart';
import 'package:github/model/file_commit_commit_author.dart';
import 'package:github/model/file_commit_commit_verification.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_commit_commit.g.dart';

abstract class FileCommitCommit implements Built<FileCommitCommit, FileCommitCommitBuilder> {

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'author')
    FileCommitCommitAuthor get author;

    @nullable
    @BuiltValueField(wireName: r'committer')
    FileCommitCommitAuthor get committer;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'tree')
    FileCommitCommitTree get tree;

    @nullable
    @BuiltValueField(wireName: r'parents')
    BuiltList<FileCommitCommitParents> get parents;

    @nullable
    @BuiltValueField(wireName: r'verification')
    FileCommitCommitVerification get verification;

    // Boilerplate code needed to wire-up generated code
    FileCommitCommit._();

    static void _initializeBuilder(FileCommitCommitBuilder b) => b;

    factory FileCommitCommit([void updates(FileCommitCommitBuilder b)]) = _$FileCommitCommit;
    static Serializer<FileCommitCommit> get serializer => _$fileCommitCommitSerializer;
}

