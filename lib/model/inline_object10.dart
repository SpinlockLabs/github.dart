//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object10.g.dart';

abstract class InlineObject10 implements Built<InlineObject10, InlineObject10Builder> {

    /// A list of scopes that this authorization is in.
    @nullable
    @BuiltValueField(wireName: r'scopes')
    BuiltList<String> get scopes;

    /// A list of scopes to add to this authorization.
    @nullable
    @BuiltValueField(wireName: r'add_scopes')
    BuiltList<String> get addScopes;

    /// A list of scopes to remove from this authorization.
    @nullable
    @BuiltValueField(wireName: r'remove_scopes')
    BuiltList<String> get removeScopes;

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
    InlineObject10._();

    static void _initializeBuilder(InlineObject10Builder b) => b;

    factory InlineObject10([void updates(InlineObject10Builder b)]) = _$InlineObject10;
    static Serializer<InlineObject10> get serializer => _$inlineObject10Serializer;
}

