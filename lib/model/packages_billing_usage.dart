//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'packages_billing_usage.g.dart';

abstract class PackagesBillingUsage implements Built<PackagesBillingUsage, PackagesBillingUsageBuilder> {

    /// Sum of the free and paid storage space (GB) for GitHuub Packages.
    @nullable
    @BuiltValueField(wireName: r'total_gigabytes_bandwidth_used')
    int get totalGigabytesBandwidthUsed;

    /// Total paid storage space (GB) for GitHuub Packages.
    @nullable
    @BuiltValueField(wireName: r'total_paid_gigabytes_bandwidth_used')
    int get totalPaidGigabytesBandwidthUsed;

    /// Free storage space (GB) for GitHub Packages.
    @nullable
    @BuiltValueField(wireName: r'included_gigabytes_bandwidth')
    int get includedGigabytesBandwidth;

    // Boilerplate code needed to wire-up generated code
    PackagesBillingUsage._();

    static void _initializeBuilder(PackagesBillingUsageBuilder b) => b;

    factory PackagesBillingUsage([void updates(PackagesBillingUsageBuilder b)]) = _$PackagesBillingUsage;
    static Serializer<PackagesBillingUsage> get serializer => _$packagesBillingUsageSerializer;
}

