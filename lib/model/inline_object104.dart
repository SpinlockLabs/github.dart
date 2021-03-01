//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_object104.g.dart';

abstract class InlineObject104 implements Built<InlineObject104, InlineObject104Builder> {

    /// The URL to which the payloads will be delivered.
    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    /// The media type used to serialize the payloads. Supported values include `json` and `form`. The default is `form`.
    @nullable
    @BuiltValueField(wireName: r'content_type')
    String get contentType;

    /// If provided, the `secret` will be used as the `key` to generate the HMAC hex digest value for [delivery signature headers](https://docs.github.com/webhooks/event-payloads/#delivery-headers).
    @nullable
    @BuiltValueField(wireName: r'secret')
    String get secret;

    /// Determines whether the SSL certificate of the host for `url` will be verified when delivering payloads. Supported values include `0` (verification is performed) and `1` (verification is not performed). The default is `0`. **We strongly recommend not setting this to `1` as you are subject to man-in-the-middle and other attacks.**
    @nullable
    @BuiltValueField(wireName: r'insecure_ssl')
    String get insecureSsl;

    // Boilerplate code needed to wire-up generated code
    InlineObject104._();

    static void _initializeBuilder(InlineObject104Builder b) => b;

    factory InlineObject104([void updates(InlineObject104Builder b)]) = _$InlineObject104;
    static Serializer<InlineObject104> get serializer => _$inlineObject104Serializer;
}

