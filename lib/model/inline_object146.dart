//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object146.g.dart';

abstract class InlineObject146 implements Built<InlineObject146, InlineObject146Builder> {

    /// The name of the tag.
    @nullable
    @BuiltValueField(wireName: r'tag_name')
    String get tagName;

    /// Specifies the commitish value that determines where the Git tag is created from. Can be any branch or commit SHA. Unused if the Git tag already exists. Default: the repository's default branch (usually `master`).
    @nullable
    @BuiltValueField(wireName: r'target_commitish')
    String get targetCommitish;

    /// The name of the release.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// Text describing the contents of the tag.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    /// `true` makes the release a draft, and `false` publishes the release.
    @nullable
    @BuiltValueField(wireName: r'draft')
    bool get draft;

    /// `true` to identify the release as a prerelease, `false` to identify the release as a full release.
    @nullable
    @BuiltValueField(wireName: r'prerelease')
    bool get prerelease;

    // Boilerplate code needed to wire-up generated code
    InlineObject146._();

    static void _initializeBuilder(InlineObject146Builder b) => b;

    factory InlineObject146([void updates(InlineObject146Builder b)]) = _$InlineObject146;
    static Serializer<InlineObject146> get serializer => _$inlineObject146Serializer;
}

