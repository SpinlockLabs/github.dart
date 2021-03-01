//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:github/model/branch_restriction_policy_teams.dart';
import 'package:built_collection/built_collection.dart';
import 'package:github/model/branch_restriction_policy_apps.dart';
import 'package:github/model/repository_template_repository_owner.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'branch_restriction_policy.g.dart';

abstract class BranchRestrictionPolicy implements Built<BranchRestrictionPolicy, BranchRestrictionPolicyBuilder> {

    @nullable
    @BuiltValueField(wireName: r'url')
    String get url;

    @nullable
    @BuiltValueField(wireName: r'users_url')
    String get usersUrl;

    @nullable
    @BuiltValueField(wireName: r'teams_url')
    String get teamsUrl;

    @nullable
    @BuiltValueField(wireName: r'apps_url')
    String get appsUrl;

    @nullable
    @BuiltValueField(wireName: r'users')
    BuiltList<RepositoryTemplateRepositoryOwner> get users;

    @nullable
    @BuiltValueField(wireName: r'teams')
    BuiltList<BranchRestrictionPolicyTeams> get teams;

    @nullable
    @BuiltValueField(wireName: r'apps')
    BuiltList<BranchRestrictionPolicyApps> get apps;

    // Boilerplate code needed to wire-up generated code
    BranchRestrictionPolicy._();

    static void _initializeBuilder(BranchRestrictionPolicyBuilder b) => b;

    factory BranchRestrictionPolicy([void updates(BranchRestrictionPolicyBuilder b)]) = _$BranchRestrictionPolicy;
    static Serializer<BranchRestrictionPolicy> get serializer => _$branchRestrictionPolicySerializer;
}

