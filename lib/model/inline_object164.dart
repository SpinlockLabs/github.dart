//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object164.g.dart';

abstract class InlineObject164 implements Built<InlineObject164, InlineObject164Builder> {

    /// The discussion post's title.
    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    /// The discussion post's body text.
    @nullable
    @BuiltValueField(wireName: r'body')
    String get body;

    /// Private posts are only visible to team members, organization owners, and team maintainers. Public posts are visible to all members of the organization. Set to `true` to create a private post.
    @nullable
    @BuiltValueField(wireName: r'private')
    bool get private;

    // Boilerplate code needed to wire-up generated code
    InlineObject164._();

    static void _initializeBuilder(InlineObject164Builder b) => b
        ..private = false;

    factory InlineObject164([void updates(InlineObject164Builder b)]) = _$InlineObject164;
    static Serializer<InlineObject164> get serializer => _$inlineObject164Serializer;
}

