import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for EnvironmentApprovals
void main() {
  final instance = EnvironmentApprovals();

  group('test EnvironmentApprovals', () {
    // The list of environments that were approved or rejected
    // List<EnvironmentApprovalsEnvironments> environments (default value: const [])
    test('to test the property `environments`', () async {
      // TODO
    });

    // Whether deployment to the environment(s) was approved or rejected
    // String state
    test('to test the property `state`', () async {
      // TODO
    });

    // SimpleUser user
    test('to test the property `user`', () async {
      // TODO
    });

    // The comment submitted with the deployment review
    // String comment
    test('to test the property `comment`', () async {
      // TODO
    });


  });

}
