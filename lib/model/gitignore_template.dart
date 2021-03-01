//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'gitignore_template.g.dart';

abstract class GitignoreTemplate implements Built<GitignoreTemplate, GitignoreTemplateBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'source')
    String get source_;

    // Boilerplate code needed to wire-up generated code
    GitignoreTemplate._();

    static void _initializeBuilder(GitignoreTemplateBuilder b) => b;

    factory GitignoreTemplate([void updates(GitignoreTemplateBuilder b)]) = _$GitignoreTemplate;
    static Serializer<GitignoreTemplate> get serializer => _$gitignoreTemplateSerializer;
}

