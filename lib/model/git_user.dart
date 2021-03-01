//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'git_user.g.dart';

abstract class GitUser implements Built<GitUser, GitUserBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'email')
    String get email;

    @nullable
    @BuiltValueField(wireName: r'date')
    String get date;

    // Boilerplate code needed to wire-up generated code
    GitUser._();

    static void _initializeBuilder(GitUserBuilder b) => b;

    factory GitUser([void updates(GitUserBuilder b)]) = _$GitUser;
    static Serializer<GitUser> get serializer => _$gitUserSerializer;
}

