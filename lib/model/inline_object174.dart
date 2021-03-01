//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object174.g.dart';

abstract class InlineObject174 implements Built<InlineObject174, InlineObject174Builder> {

    /// The new name of the user.
    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    /// The publicly visible email address of the user.
    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    /// The new blog URL of the user.
    @nullable
    @BuiltValueField(wireName: r'blog')
    String get blog;

    /// The new Twitter username of the user.
    @nullable
    @BuiltValueField(wireName: r'twitter_username')
    String get twitterUsername;

    /// The new company of the user.
    @nullable
    @BuiltValueField(wireName: r'company')
    String get company;

    /// The new location of the user.
    @nullable
    @BuiltValueField(wireName: r'location')
    String get location;

    /// The new hiring availability of the user.
    @nullable
    @BuiltValueField(wireName: r'hireable')
    bool get hireable;

    /// The new short biography of the user.
    @nullable
    @BuiltValueField(wireName: r'bio')
    String get bio;

    // Boilerplate code needed to wire-up generated code
    InlineObject174._();

    static void _initializeBuilder(InlineObject174Builder b) => b;

    factory InlineObject174([void updates(InlineObject174Builder b)]) = _$InlineObject174;
    static Serializer<InlineObject174> get serializer => _$inlineObject174Serializer;
}

