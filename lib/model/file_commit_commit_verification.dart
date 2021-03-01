//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'file_commit_commit_verification.g.dart';

abstract class FileCommitCommitVerification implements Built<FileCommitCommitVerification, FileCommitCommitVerificationBuilder> {

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
    FileCommitCommitVerification._();

    static void _initializeBuilder(FileCommitCommitVerificationBuilder b) => b;

    factory FileCommitCommitVerification([void updates(FileCommitCommitVerificationBuilder b)]) = _$FileCommitCommitVerification;
    static Serializer<FileCommitCommitVerification> get serializer => _$fileCommitCommitVerificationSerializer;
}

