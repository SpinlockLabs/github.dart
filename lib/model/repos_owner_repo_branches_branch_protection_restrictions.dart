//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'repos_owner_repo_branches_branch_protection_restrictions.g.dart';

abstract class ReposOwnerRepoBranchesBranchProtectionRestrictions implements Built<ReposOwnerRepoBranchesBranchProtectionRestrictions, ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder> {

    /// The list of user `login`s with push access
    @nullable
    @BuiltValueField(wireName: r'users')
    BuiltList<String> get users;

    /// The list of team `slug`s with push access
    @nullable
    @BuiltValueField(wireName: r'teams')
    BuiltList<String> get teams;

    /// The list of app `slug`s with push access
    @nullable
    @BuiltValueField(wireName: r'apps')
    BuiltList<String> get apps;

    // Boilerplate code needed to wire-up generated code
    ReposOwnerRepoBranchesBranchProtectionRestrictions._();

    static void _initializeBuilder(ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder b) => b;

    factory ReposOwnerRepoBranchesBranchProtectionRestrictions([void updates(ReposOwnerRepoBranchesBranchProtectionRestrictionsBuilder b)]) = _$ReposOwnerRepoBranchesBranchProtectionRestrictions;
    static Serializer<ReposOwnerRepoBranchesBranchProtectionRestrictions> get serializer => _$reposOwnerRepoBranchesBranchProtectionRestrictionsSerializer;
}

