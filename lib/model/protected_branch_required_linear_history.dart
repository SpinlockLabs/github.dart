//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'protected_branch_required_linear_history.g.dart';

abstract class ProtectedBranchRequiredLinearHistory implements Built<ProtectedBranchRequiredLinearHistory, ProtectedBranchRequiredLinearHistoryBuilder> {

    @nullable
    @BuiltValueField(wireName: r'enabled')
    bool get enabled;

    // Boilerplate code needed to wire-up generated code
    ProtectedBranchRequiredLinearHistory._();

    static void _initializeBuilder(ProtectedBranchRequiredLinearHistoryBuilder b) => b;

    factory ProtectedBranchRequiredLinearHistory([void updates(ProtectedBranchRequiredLinearHistoryBuilder b)]) = _$ProtectedBranchRequiredLinearHistory;
    static Serializer<ProtectedBranchRequiredLinearHistory> get serializer => _$protectedBranchRequiredLinearHistorySerializer;
}

