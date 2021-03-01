//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object9.g.dart';

abstract class InlineObject9 implements Built<InlineObject9, InlineObject9Builder> {

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

    // Boilerplate code needed to wire-up generated code
    InlineObject9._();

    static void _initializeBuilder(InlineObject9Builder b) => b;

    factory InlineObject9([void updates(InlineObject9Builder b)]) = _$InlineObject9;
    static Serializer<InlineObject9> get serializer => _$inlineObject9Serializer;
}

