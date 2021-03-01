//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'deployment_branch_policy.g.dart';

abstract class DeploymentBranchPolicy implements Built<DeploymentBranchPolicy, DeploymentBranchPolicyBuilder> {

    /// Whether only branches with branch protection rules can deploy to this environment. If `protected_branches` is `true`, `custom_branch_policies` must be `false`; if `protected_branches` is `false`, `custom_branch_policies` must be `true`.
    @nullable
    @BuiltValueField(wireName: r'protected_branches')
    bool get protectedBranches;

    /// Whether only branches that match the specified name patterns can deploy to this environment.  If `custom_branch_policies` is `true`, `protected_branches` must be `false`; if `custom_branch_policies` is `false`, `protected_branches` must be `true`.
    @nullable
    @BuiltValueField(wireName: r'custom_branch_policies')
    bool get customBranchPolicies;

    // Boilerplate code needed to wire-up generated code
    DeploymentBranchPolicy._();

    static void _initializeBuilder(DeploymentBranchPolicyBuilder b) => b;

    factory DeploymentBranchPolicy([void updates(DeploymentBranchPolicyBuilder b)]) = _$DeploymentBranchPolicy;
    static Serializer<DeploymentBranchPolicy> get serializer => _$deploymentBranchPolicySerializer;
}

