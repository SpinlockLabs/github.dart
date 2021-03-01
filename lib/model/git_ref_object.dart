//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'git_ref_object.g.dart';

abstract class GitRefObject implements Built<GitRefObject, GitRefObjectBuilder> {

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    /// SHA for the reference
    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    // Boilerplate code needed to wire-up generated code
    GitRefObject._();

    static void _initializeBuilder(GitRefObjectBuilder b) => b;

    factory GitRefObject([void updates(GitRefObjectBuilder b)]) = _$GitRefObject;
    static Serializer<GitRefObject> get serializer => _$gitRefObjectSerializer;
}

