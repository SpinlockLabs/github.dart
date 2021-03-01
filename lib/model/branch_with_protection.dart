//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/commit.dart';
import 'package:github/model/branch_protection.dart';
import 'package:github/model/branch_with_protection_links.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_with_protection.g.dart';

abstract class BranchWithProtection implements Built<BranchWithProtection, BranchWithProtectionBuilder> {

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'commit')
    Commit get commit;

    @nullable
    @BuiltValueField(wireName: r'_links')
    BranchWithProtectionLinks get links;

    @nullable
    @BuiltValueField(wireName: r'protected')
    bool get protected;

    @nullable
    @BuiltValueField(wireName: r'protection')
    BranchProtection get protection;

    @nullable
    @BuiltValueField(wireName: r'protection_url')
    String get protectionUrl;

    @nullable
    @BuiltValueField(wireName: r'pattern')
    String get pattern;

    @nullable
    @BuiltValueField(wireName: r'required_approving_review_count')
    int get requiredApprovingReviewCount;

    // Boilerplate code needed to wire-up generated code
    BranchWithProtection._();

    static void _initializeBuilder(BranchWithProtectionBuilder b) => b;

    factory BranchWithProtection([void updates(BranchWithProtectionBuilder b)]) = _$BranchWithProtection;
    static Serializer<BranchWithProtection> get serializer => _$branchWithProtectionSerializer;
}

