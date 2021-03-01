import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject41
void main() {
  final instance = InlineObject41();

  group('test InlineObject41', () {
    // The name of the team.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The description of the team.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // List GitHub IDs for organization members who will become team maintainers.
    // List<String> maintainers (default value: const [])
    test('to test the property `maintainers`', () async {
      // TODO
    });

    // The full name (e.g., \"organization-name/repository-name\") of repositories to add the team to.
    // List<String> repoNames (default value: const [])
    test('to test the property `repoNames`', () async {
      // TODO
    });

    // The level of privacy this team should have. The options are:   **For a non-nested team:**   \\* `secret` - only visible to organization owners and members of this team.   \\* `closed` - visible to all members of this organization.   Default: `secret`   **For a parent or child team:**   \\* `closed` - visible to all members of this organization.   Default for child team: `closed`
    // String privacy
    test('to test the property `privacy`', () async {
      // TODO
    });

    // **Deprecated**. The permission that new repositories will be added to the team with when none is specified. Can be one of:   \\* `pull` - team members can pull, but not push to or administer newly-added repositories.   \\* `push` - team members can pull and push, but not administer newly-added repositories.   \\* `admin` - team members can pull, push and administer newly-added repositories.
    // String permission (default value: 'pull')
    test('to test the property `permission`', () async {
      // TODO
    });

    // The ID of a team to set as the parent team.
    // int parentTeamId
    test('to test the property `parentTeamId`', () async {
      // TODO
    });


  });

}
