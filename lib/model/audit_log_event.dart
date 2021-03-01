//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'audit_log_event.g.dart';

abstract class AuditLogEvent implements Built<AuditLogEvent, AuditLogEventBuilder> {

    /// The time the audit log event occurred, given as a [Unix timestamp](http://en.wikipedia.org/wiki/Unix_time).
    @nullable
    @BuiltValueField(wireName: r'@timestamp')
    int get atTimestamp;

    /// The name of the action that was performed, for example `user.login` or `repo.create`.
    @nullable
    @BuiltValueField(wireName: r'action')
    String get action;

    @nullable
    @BuiltValueField(wireName: r'active')
    bool get active;

    @nullable
    @BuiltValueField(wireName: r'active_was')
    bool get activeWas;

    /// The actor who performed the action.
    @nullable
    @BuiltValueField(wireName: r'actor')
    String get actor;

    /// The username of the account being blocked.
    @nullable
    @BuiltValueField(wireName: r'blocked_user')
    String get blockedUser;

    @nullable
    @BuiltValueField(wireName: r'business')
    String get business;

    @nullable
    @BuiltValueField(wireName: r'config')
    BuiltList get config;

    @nullable
    @BuiltValueField(wireName: r'config_was')
    BuiltList get configWas;

    @nullable
    @BuiltValueField(wireName: r'content_type')
    String get contentType;

    /// The time the audit log event was recorded, given as a [Unix timestamp](http://en.wikipedia.org/wiki/Unix_time).
    @nullable
    @BuiltValueField(wireName: r'created_at')
    int get createdAt;

    @nullable
    @BuiltValueField(wireName: r'deploy_key_fingerprint')
    String get deployKeyFingerprint;

    @nullable
    @BuiltValueField(wireName: r'emoji')
    String get emoji;

    @nullable
    @BuiltValueField(wireName: r'events')
    BuiltList get events;

    @nullable
    @BuiltValueField(wireName: r'events_were')
    BuiltList get eventsWere;

    @nullable
    @BuiltValueField(wireName: r'explanation')
    String get explanation;

    @nullable
    @BuiltValueField(wireName: r'fingerprint')
    String get fingerprint;

    @nullable
    @BuiltValueField(wireName: r'hook_id')
    int get hookId;

    @nullable
    @BuiltValueField(wireName: r'limited_availability')
    bool get limitedAvailability;

    @nullable
    @BuiltValueField(wireName: r'message')
    String get message;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'old_user')
    String get oldUser;

    @nullable
    @BuiltValueField(wireName: r'openssh_public_key')
    String get opensshPublicKey;

    @nullable
    @BuiltValueField(wireName: r'org')
    String get org;

    @nullable
    @BuiltValueField(wireName: r'previous_visibility')
    String get previousVisibility;

    @nullable
    @BuiltValueField(wireName: r'read_only')
    bool get readOnly;

    /// The name of the repository.
    @nullable
    @BuiltValueField(wireName: r'repo')
    String get repo;

    /// The name of the repository.
    @nullable
    @BuiltValueField(wireName: r'repository')
    String get repository;

    @nullable
    @BuiltValueField(wireName: r'repository_public')
    bool get repositoryPublic;

    @nullable
    @BuiltValueField(wireName: r'target_login')
    String get targetLogin;

    @nullable
    @BuiltValueField(wireName: r'team')
    String get team;

    /// The type of protocol (for example, HTTP or SSH) used to transfer Git data.
    @nullable
    @BuiltValueField(wireName: r'transport_protocol')
    int get transportProtocol;

    /// A human readable name for the protocol (for example, HTTP or SSH) used to transfer Git data.
    @nullable
    @BuiltValueField(wireName: r'transport_protocol_name')
    String get transportProtocolName;

    /// The user that was affected by the action performed (if available).
    @nullable
    @BuiltValueField(wireName: r'user')
    String get user;

    /// The repository visibility, for example `public` or `private`.
    @nullable
    @BuiltValueField(wireName: r'visibility')
    String get visibility;

    // Boilerplate code needed to wire-up generated code
    AuditLogEvent._();

    static void _initializeBuilder(AuditLogEventBuilder b) => b;

    factory AuditLogEvent([void updates(AuditLogEventBuilder b)]) = _$AuditLogEvent;
    static Serializer<AuditLogEvent> get serializer => _$auditLogEventSerializer;
}

