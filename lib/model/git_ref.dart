//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/git_ref_object.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'git_ref.g.dart';

abstract class GitRef implements Built<GitRef, GitRefBuilder> {

    @nullable
    @BuiltValueField(wireName: r'ref')
    String get ref;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'object')
    GitRefObject get object;

    // Boilerplate code needed to wire-up generated code
    GitRef._();

    static void _initializeBuilder(GitRefBuilder b) => b;

    factory GitRef([void updates(GitRefBuilder b)]) = _$GitRef;
    static Serializer<GitRef> get serializer => _$gitRefSerializer;
}

