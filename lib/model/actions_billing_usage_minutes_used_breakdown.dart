//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'actions_billing_usage_minutes_used_breakdown.g.dart';

abstract class ActionsBillingUsageMinutesUsedBreakdown implements Built<ActionsBillingUsageMinutesUsedBreakdown, ActionsBillingUsageMinutesUsedBreakdownBuilder> {

    /// Total minutes used on Ubuntu runner machines.
    @nullable
    @BuiltValueField(wireName: r'UBUNTU')
    int get UBUNTU;

    /// Total minutes used on macOS runner machines.
    @nullable
    @BuiltValueField(wireName: r'MACOS')
    int get MACOS;

    /// Total minutes used on Windows runner machines.
    @nullable
    @BuiltValueField(wireName: r'WINDOWS')
    int get WINDOWS;

    // Boilerplate code needed to wire-up generated code
    ActionsBillingUsageMinutesUsedBreakdown._();

    static void _initializeBuilder(ActionsBillingUsageMinutesUsedBreakdownBuilder b) => b;

    factory ActionsBillingUsageMinutesUsedBreakdown([void updates(ActionsBillingUsageMinutesUsedBreakdownBuilder b)]) = _$ActionsBillingUsageMinutesUsedBreakdown;
    static Serializer<ActionsBillingUsageMinutesUsedBreakdown> get serializer => _$actionsBillingUsageMinutesUsedBreakdownSerializer;
}

