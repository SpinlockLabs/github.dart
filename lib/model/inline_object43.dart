//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object43.g.dart';

abstract class InlineObject43 implements Built<InlineObject43, InlineObject43Builder> {

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
    InlineObject43._();

    static void _initializeBuilder(InlineObject43Builder b) => b
        ..private = false;

    factory InlineObject43([void updates(InlineObject43Builder b)]) = _$InlineObject43;
    static Serializer<InlineObject43> get serializer => _$inlineObject43Serializer;
}

