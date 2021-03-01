//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'thread_subject.g.dart';

abstract class ThreadSubject implements Built<ThreadSubject, ThreadSubjectBuilder> {

    @nullable
    @BuiltValueField(wireName: r'title')
    String get title;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'latest_comment_url')
    String get latestCommentUrl;

    @nullable
    @BuiltValueField(wireName: r'type')
    String get type;

    // Boilerplate code needed to wire-up generated code
    ThreadSubject._();

    static void _initializeBuilder(ThreadSubjectBuilder b) => b;

    factory ThreadSubject([void updates(ThreadSubjectBuilder b)]) = _$ThreadSubject;
    static Serializer<ThreadSubject> get serializer => _$threadSubjectSerializer;
}

