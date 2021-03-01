import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for PendingDeployment
void main() {
  final instance = PendingDeployment();

  group('test PendingDeployment', () {
    // PendingDeploymentEnvironment environment
    test('to test the property `environment`', () async {
      // TODO
    });

    // The set duration of the wait timer
    // int waitTimer
    test('to test the property `waitTimer`', () async {
      // TODO
    });

    // The time that the wait timer began.
    // DateTime waitTimerStartedAt
    test('to test the property `waitTimerStartedAt`', () async {
      // TODO
    });

    // Whether the currently authenticated user can approve the deployment
    // bool currentUserCanApprove
    test('to test the property `currentUserCanApprove`', () async {
      // TODO
    });

    // The people or teams that may approve jobs that reference the environment. You can list up to six users or teams as reviewers. The reviewers must have at least read access to the repository. Only one of the required reviewers needs to approve the job for it to proceed.
    // List<PendingDeploymentReviewers> reviewers (default value: const [])
    test('to test the property `reviewers`', () async {
      // TODO
    });


  });

}
