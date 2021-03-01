//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'commit_parents.g.dart';

abstract class CommitParents implements Built<CommitParents, CommitParentsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'sha')
    String get sha;

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    // Boilerplate code needed to wire-up generated code
    CommitParents._();

    static void _initializeBuilder(CommitParentsBuilder b) => b;

    factory CommitParents([void updates(CommitParentsBuilder b)]) = _$CommitParents;
    static Serializer<CommitParents> get serializer => _$commitParentsSerializer;
}

