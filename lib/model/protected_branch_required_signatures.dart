//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'protected_branch_required_signatures.g.dart';

abstract class ProtectedBranchRequiredSignatures implements Built<ProtectedBranchRequiredSignatures, ProtectedBranchRequiredSignaturesBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'enabled')
    bool get enabled;

    // Boilerplate code needed to wire-up generated code
    ProtectedBranchRequiredSignatures._();

    static void _initializeBuilder(ProtectedBranchRequiredSignaturesBuilder b) => b;

    factory ProtectedBranchRequiredSignatures([void updates(ProtectedBranchRequiredSignaturesBuilder b)]) = _$ProtectedBranchRequiredSignatures;
    static Serializer<ProtectedBranchRequiredSignatures> get serializer => _$protectedBranchRequiredSignaturesSerializer;
}

