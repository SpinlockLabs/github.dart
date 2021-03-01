import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject36
void main() {
  final instance = InlineObject36();

  group('test InlineObject36', () {
    // **Required unless you provide `email`**. GitHub user ID for the person you are inviting.
    // int inviteeId
    test('to test the property `inviteeId`', () async {
      // TODO
    });

    // **Required unless you provide `invitee_id`**. Email address of the person you are inviting, which can be an existing GitHub user.
    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // Specify role for new member. Can be one of:   \\* `admin` - Organization owners with full administrative rights to the organization and complete access to all repositories and teams.   \\* `direct_member` - Non-owner organization members with ability to see other members and join teams by invitation.   \\* `billing_manager` - Non-owner organization members with ability to manage the billing settings of your organization.
    // String role (default value: 'direct_member')
    test('to test the property `role`', () async {
      // TODO
    });

    // Specify IDs for the teams you want to invite new members to.
    // List<int> teamIds (default value: const [])
    test('to test the property `teamIds`', () async {
      // TODO
    });


  });

}
