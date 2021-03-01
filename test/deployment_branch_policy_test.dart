import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for DeploymentBranchPolicy
void main() {
  final instance = DeploymentBranchPolicy();

  group('test DeploymentBranchPolicy', () {
    // Whether only branches with branch protection rules can deploy to this environment. If `protected_branches` is `true`, `custom_branch_policies` must be `false`; if `protected_branches` is `false`, `custom_branch_policies` must be `true`.
    // bool protectedBranches
    test('to test the property `protectedBranches`', () async {
      // TODO
    });

    // Whether only branches that match the specified name patterns can deploy to this environment.  If `custom_branch_policies` is `true`, `protected_branches` must be `false`; if `custom_branch_policies` is `false`, `protected_branches` must be `true`.
    // bool customBranchPolicies
    test('to test the property `customBranchPolicies`', () async {
      // TODO
    });


  });

}
