//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'git_tag_tagger.g.dart';

abstract class GitTagTagger implements Built<GitTagTagger, GitTagTaggerBuilder> {

    @nullable
    @BuiltValueField(wireName: r'date')
    String get date;

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    // Boilerplate code needed to wire-up generated code
    GitTagTagger._();

    static void _initializeBuilder(GitTagTaggerBuilder b) => b;

    factory GitTagTagger([void updates(GitTagTaggerBuilder b)]) = _$GitTagTagger;
    static Serializer<GitTagTagger> get serializer => _$gitTagTaggerSerializer;
}

