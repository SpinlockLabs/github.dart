//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_hooks_config.g.dart';

abstract class ReposOwnerRepoHooksConfig implements Built<ReposOwnerRepoHooksConfig, ReposOwnerRepoHooksConfigBuilder> {

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

    @nullable
    @BuiltValueField(wireName: r'token')
    String get token;

    @nullable
    @BuiltValueField(wireName: r'digest')
    String get digest;

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoHooksConfig._();

    static void _initializeBuilder(ReposOwnerRepoHooksConfigBuilder b) => b;

    factory ReposOwnerRepoHooksConfig([void updates(ReposOwnerRepoHooksConfigBuilder b)]) = _$ReposOwnerRepoHooksConfig;
    static Serializer<ReposOwnerRepoHooksConfig> get serializer => _$reposOwnerRepoHooksConfigSerializer;
}

