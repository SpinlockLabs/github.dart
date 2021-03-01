//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/git_tag_object.dart';
import 'package:github/model/git_tag_tagger.dart';
import 'package:github/model/verification.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'git_tag.g.dart';

abstract class GitTag implements Built<GitTag, GitTagBuilder> {

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    /// Name of the tag
    @nullable
    @BuiltValueField(wireName: r'tag')
    String get tag;

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    /// URL for the tag
    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    /// Message describing the purpose of the tag
    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'tagger')
    GitTagTagger get tagger;

    @nullable
    @BuiltValueField(wireName: r'object')
    GitTagObject get object;

    @nullable
    @BuiltValueField(wireName: r'verification')
    Verification get verification;

    // Boilerplate code needed to wire-up generated code
    GitTag._();

    static void _initializeBuilder(GitTagBuilder b) => b;

    factory GitTag([void updates(GitTagBuilder b)]) = _$GitTag;
    static Serializer<GitTag> get serializer => _$gitTagSerializer;
}

