//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'git_tag_object.g.dart';

abstract class GitTagObject implements Built<GitTagObject, GitTagObjectBuilder> {

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    // Boilerplate code needed to wire-up generated code
    GitTagObject._();

    static void _initializeBuilder(GitTagObjectBuilder b) => b;

    factory GitTagObject([void updates(GitTagObjectBuilder b)]) = _$GitTagObject;
    static Serializer<GitTagObject> get serializer => _$gitTagObjectSerializer;
}

