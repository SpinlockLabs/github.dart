//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'simple_commit_author.g.dart';

abstract class SimpleCommitAuthor implements Built<SimpleCommitAuthor, SimpleCommitAuthorBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    // Boilerplate code needed to wire-up generated code
    SimpleCommitAuthor._();

    static void _initializeBuilder(SimpleCommitAuthorBuilder b) => b;

    factory SimpleCommitAuthor([void updates(SimpleCommitAuthorBuilder b)]) = _$SimpleCommitAuthor;
    static Serializer<SimpleCommitAuthor> get serializer => _$simpleCommitAuthorSerializer;
}

