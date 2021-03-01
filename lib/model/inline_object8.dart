//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object8.g.dart';

abstract class InlineObject8 implements Built<InlineObject8, InlineObject8Builder> {

    /// The OAuth app client secret for which to create the token.
    @nullable
    @BuiltValueField(wireName: r'client_secret')
    String get clientSecret;

    /// A list of scopes that this authorization is in.
    @nullable
    @BuiltValueField(wireName: r'scopes')
    BuiltList<String> get scopes;

    /// A note to remind you what the OAuth token is for.
    @nullable
    @BuiltValueField(wireName: r'note')
    String get note;

    /// A URL to remind you what app the OAuth token is for.
    @nullable
    @BuiltValueField(wireName: r'note_url')
    String get noteUrl;

    /// A unique string to distinguish an authorization from others created for the same client ID and user.
    @nullable
    @BuiltValueField(wireName: r'fingerprint')
    String get fingerprint;

    // Boilerplate code needed to wire-up generated code
    InlineObject8._();

    static void _initializeBuilder(InlineObject8Builder b) => b;

    factory InlineObject8([void updates(InlineObject8Builder b)]) = _$InlineObject8;
    static Serializer<InlineObject8> get serializer => _$inlineObject8Serializer;
}

