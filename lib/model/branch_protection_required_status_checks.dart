//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_protection_required_status_checks.g.dart';

abstract class BranchProtectionRequiredStatusChecks implements Built<BranchProtectionRequiredStatusChecks, BranchProtectionRequiredStatusChecksBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'enforcement_level')
    String get enforcementLevel;

    @nullable
    @BuiltValueField(wireName: r'contexts')
    BuiltList<String> get contexts;

    @nullable
    @BuiltValueField(wireName: r'contexts_url')
    String get contextsUrl;

    // Boilerplate code needed to wire-up generated code
    BranchProtectionRequiredStatusChecks._();

    static void _initializeBuilder(BranchProtectionRequiredStatusChecksBuilder b) => b;

    factory BranchProtectionRequiredStatusChecks([void updates(BranchProtectionRequiredStatusChecksBuilder b)]) = _$BranchProtectionRequiredStatusChecks;
    static Serializer<BranchProtectionRequiredStatusChecks> get serializer => _$branchProtectionRequiredStatusChecksSerializer;
}

