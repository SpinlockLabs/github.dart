//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/branch_restriction_policy_permissions.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/branch_restriction_policy_owner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_restriction_policy_apps.g.dart';

abstract class BranchRestrictionPolicyApps implements Built<BranchRestrictionPolicyApps, BranchRestrictionPolicyAppsBuilder> {

    @nullable
    @BuiltValueField(wireName: r'id')
    int get id;

    @nullable
    @BuiltValueField(wireName: r'slug')
    String get slug;

    @nullable
    @BuiltValueField(wireName: r'node_id')
    String get nodeId;

    @nullable
    @BuiltValueField(wireName: r'owner')
    BranchRestrictionPolicyOwner get owner;

    @nullable
    @BuiltValueField(wireName: r'name')
    String get name;

    @nullable
    @BuiltValueField(wireName: r'description')
    String get description;

    @nullable
    @BuiltValueField(wireName: r'external_url')
    String get externalUrl;

    @nullable
    @BuiltValueField(wireName: r'html_url')
    String get htmlUrl;

    @nullable
    @BuiltValueField(wireName: r'created_at')
    String get createdAt;

    @nullable
    @BuiltValueField(wireName: r'updated_at')
    String get updatedAt;

    @nullable
    @BuiltValueField(wireName: r'permissions')
    BranchRestrictionPolicyPermissions get permissions;

    @nullable
    @BuiltValueField(wireName: r'events')
    BuiltList<String> get events;

    // Boilerplate code needed to wire-up generated code
    BranchRestrictionPolicyApps._();

    static void _initializeBuilder(BranchRestrictionPolicyAppsBuilder b) => b;

    factory BranchRestrictionPolicyApps([void updates(BranchRestrictionPolicyAppsBuilder b)]) = _$BranchRestrictionPolicyApps;
    static Serializer<BranchRestrictionPolicyApps> get serializer => _$branchRestrictionPolicyAppsSerializer;
}

