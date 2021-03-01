//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_protection_required_linear_history.g.dart';

abstract class BranchProtectionRequiredLinearHistory implements Built<BranchProtectionRequiredLinearHistory, BranchProtectionRequiredLinearHistoryBuilder> {

    @nullable
    @BuiltValueField(wireName: r'enabled')
    bool get enabled;

    // Boilerplate code needed to wire-up generated code
    BranchProtectionRequiredLinearHistory._();

    static void _initializeBuilder(BranchProtectionRequiredLinearHistoryBuilder b) => b;

    factory BranchProtectionRequiredLinearHistory([void updates(BranchProtectionRequiredLinearHistoryBuilder b)]) = _$BranchProtectionRequiredLinearHistory;
    static Serializer<BranchProtectionRequiredLinearHistory> get serializer => _$branchProtectionRequiredLinearHistorySerializer;
}

