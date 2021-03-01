//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object7.g.dart';

abstract class InlineObject7 implements Built<InlineObject7, InlineObject7Builder> {

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

    /// The OAuth app client key for which to create the token.
    @nullable
    @BuiltValueField(wireName: r'client_id')
    String get clientId;

    /// The OAuth app client secret for which to create the token.
    @nullable
    @BuiltValueField(wireName: r'client_secret')
    String get clientSecret;

    /// A unique string to distinguish an authorization from others created for the same client ID and user.
    @nullable
    @BuiltValueField(wireName: r'fingerprint')
    String get fingerprint;

    // Boilerplate code needed to wire-up generated code
    InlineObject7._();

    static void _initializeBuilder(InlineObject7Builder b) => b;

    factory InlineObject7([void updates(InlineObject7Builder b)]) = _$InlineObject7;
    static Serializer<InlineObject7> get serializer => _$inlineObject7Serializer;
}

