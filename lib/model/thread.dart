//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/minimal_repository.dart';
import 'package:github/model/thread_subject.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'thread.g.dart';

abstract class Thread implements Built<Thread, ThreadBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    String get id;

    @nullable
    @BuiltValueField(wireName: r'repository')
    MinimalRepository get repository;

    @nullable
    @BuiltValueField(wireName: r'subject')
    ThreadSubject get subject;

    @nullable
    @BuiltValueField(wireName: r'reason')
    String get reason;

    @nullable
    @BuiltValueField(wireName: r'unread')
    bool get unread;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    String get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'last_read_at')
    String get lastReadAt;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'subscription_url')
    String get subscriptionUrl;

    // Boilerplate code needed to wire-up generated code
    Thread._();

    static void _initializeBuilder(ThreadBuilder b) => b;

    factory Thread([void updates(ThreadBuilder b)]) = _$Thread;
    static Serializer<Thread> get serializer => _$threadSerializer;
}

