//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'git_commit_verification.g.dart';

abstract class GitCommitVerification implements Built<GitCommitVerification, GitCommitVerificationBuilder> {

    @nullable
    @BuiltValueField(wireName: r'verified')
    bool get verified;

    @nullable
    @BuiltValueField(wireName: r'reason')
    String get reason;

    @nullable
    @BuiltValueField(wireName: r'signature')
    String get signature;

    @nullable
    @BuiltValueField(wireName: r'payload')
    String get payload;

    // Boilerplate code needed to wire-up generated code
    GitCommitVerification._();

    static void _initializeBuilder(GitCommitVerificationBuilder b) => b;

    factory GitCommitVerification([void updates(GitCommitVerificationBuilder b)]) = _$GitCommitVerification;
    static Serializer<GitCommitVerification> get serializer => _$gitCommitVerificationSerializer;
}

