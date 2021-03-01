//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/actions_billing_usage_minutes_used_breakdown.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'actions_billing_usage.g.dart';

abstract class ActionsBillingUsage implements Built<ActionsBillingUsage, ActionsBillingUsageBuilder> {

    /// The sum of the free and paid GitHub Actions minutes used.
    @nullable
    @BuiltValueField(wireName: r'total_minutes_used')
    int get totalMinutesUsed;

    /// The total paid GitHub Actions minutes used.
    @nullable
    @BuiltValueField(wireName: r'total_paid_minutes_used')
    int get totalPaidMinutesUsed;

    /// The amount of free GitHub Actions minutes available.
    @nullable
    @BuiltValueField(wireName: r'included_minutes')
    int get includedMinutes;

    @nullable
    @BuiltValueField(wireName: r'minutes_used_breakdown')
    ActionsBillingUsageMinutesUsedBreakdown get minutesUsedBreakdown;

    // Boilerplate code needed to wire-up generated code
    ActionsBillingUsage._();

    static void _initializeBuilder(ActionsBillingUsageBuilder b) => b;

    factory ActionsBillingUsage([void updates(ActionsBillingUsageBuilder b)]) = _$ActionsBillingUsage;
    static Serializer<ActionsBillingUsage> get serializer => _$actionsBillingUsageSerializer;
}

