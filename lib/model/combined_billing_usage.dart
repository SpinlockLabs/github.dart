//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'combined_billing_usage.g.dart';

abstract class CombinedBillingUsage implements Built<CombinedBillingUsage, CombinedBillingUsageBuilder> {

    /// Numbers of days left in billing cycle.
    @nullable
    @BuiltValueField(wireName: r'days_left_in_billing_cycle')
    int get daysLeftInBillingCycle;

    /// Estimated storage space (GB) used in billing cycle.
    @nullable
    @BuiltValueField(wireName: r'estimated_paid_storage_for_month')
    int get estimatedPaidStorageForMonth;

    /// Estimated sum of free and paid storage space (GB) used in billing cycle.
    @nullable
    @BuiltValueField(wireName: r'estimated_storage_for_month')
    int get estimatedStorageForMonth;

    // Boilerplate code needed to wire-up generated code
    CombinedBillingUsage._();

    static void _initializeBuilder(CombinedBillingUsageBuilder b) => b;

    factory CombinedBillingUsage([void updates(CombinedBillingUsageBuilder b)]) = _$CombinedBillingUsage;
    static Serializer<CombinedBillingUsage> get serializer => _$combinedBillingUsageSerializer;
}

