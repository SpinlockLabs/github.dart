import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject94
void main() {
  final instance = InlineObject94();

  group('test InlineObject94', () {
    // The amount of time to delay a job after the job is initially triggered. The time (in minutes) must be an integer between 0 and 43,200 (30 days).
    // int waitTimer
    test('to test the property `waitTimer`', () async {
      // TODO
    });

    // The people or teams that may review jobs that reference the environment. You can list up to six users or teams as reviewers. The reviewers must have at least read access to the repository. Only one of the required reviewers needs to approve the job for it to proceed.
    // List<ReposOwnerRepoEnvironmentsEnvironmentNameReviewers> reviewers (default value: const [])
    test('to test the property `reviewers`', () async {
      // TODO
    });

    // DeploymentBranchPolicy deploymentBranchPolicy
    test('to test the property `deploymentBranchPolicy`', () async {
      // TODO
    });


  });

}
