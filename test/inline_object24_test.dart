import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject24
void main() {
  final instance = InlineObject24();

  group('test InlineObject24', () {
    // Billing email address. This address is not publicized.
    // String billingEmail
    test('to test the property `billingEmail`', () async {
      // TODO
    });

    // The company name.
    // String company
    test('to test the property `company`', () async {
      // TODO
    });

    // The publicly visible email address.
    // String email
    test('to test the property `email`', () async {
      // TODO
    });

    // The Twitter username of the company.
    // String twitterUsername
    test('to test the property `twitterUsername`', () async {
      // TODO
    });

    // The location.
    // String location
    test('to test the property `location`', () async {
      // TODO
    });

    // The shorthand name of the company.
    // String name
    test('to test the property `name`', () async {
      // TODO
    });

    // The description of the company.
    // String description
    test('to test the property `description`', () async {
      // TODO
    });

    // Toggles whether an organization can use organization projects.
    // bool hasOrganizationProjects
    test('to test the property `hasOrganizationProjects`', () async {
      // TODO
    });

    // Toggles whether repositories that belong to the organization can use repository projects.
    // bool hasRepositoryProjects
    test('to test the property `hasRepositoryProjects`', () async {
      // TODO
    });

    // Default permission level members have for organization repositories:   \\* `read` - can pull, but not push to or administer this repository.   \\* `write` - can pull and push, but not administer this repository.   \\* `admin` - can pull, push, and administer this repository.   \\* `none` - no permissions granted by default.
    // String defaultRepositoryPermission (default value: 'read')
    test('to test the property `defaultRepositoryPermission`', () async {
      // TODO
    });

    // Toggles the ability of non-admin organization members to create repositories. Can be one of:   \\* `true` - all organization members can create repositories.   \\* `false` - only organization owners can create repositories.   Default: `true`   **Note:** A parameter can override this parameter. See `members_allowed_repository_creation_type` in this table for details. **Note:** A parameter can override this parameter. See `members_allowed_repository_creation_type` in this table for details.
    // bool membersCanCreateRepositories (default value: true)
    test('to test the property `membersCanCreateRepositories`', () async {
      // TODO
    });

    // Toggles whether organization members can create internal repositories, which are visible to all enterprise members. You can only allow members to create internal repositories if your organization is associated with an enterprise account using GitHub Enterprise Cloud or GitHub Enterprise Server 2.20+. Can be one of:   \\* `true` - all organization members can create internal repositories.   \\* `false` - only organization owners can create internal repositories.   Default: `true`. For more information, see \"[Restricting repository creation in your organization](https://help.github.com/github/setting-up-and-managing-organizations-and-teams/restricting-repository-creation-in-your-organization)\" in the GitHub Help documentation.
    // bool membersCanCreateInternalRepositories
    test('to test the property `membersCanCreateInternalRepositories`', () async {
      // TODO
    });

    // Toggles whether organization members can create private repositories, which are visible to organization members with permission. Can be one of:   \\* `true` - all organization members can create private repositories.   \\* `false` - only organization owners can create private repositories.   Default: `true`. For more information, see \"[Restricting repository creation in your organization](https://help.github.com/github/setting-up-and-managing-organizations-and-teams/restricting-repository-creation-in-your-organization)\" in the GitHub Help documentation.
    // bool membersCanCreatePrivateRepositories
    test('to test the property `membersCanCreatePrivateRepositories`', () async {
      // TODO
    });

    // Toggles whether organization members can create public repositories, which are visible to anyone. Can be one of:   \\* `true` - all organization members can create public repositories.   \\* `false` - only organization owners can create public repositories.   Default: `true`. For more information, see \"[Restricting repository creation in your organization](https://help.github.com/github/setting-up-and-managing-organizations-and-teams/restricting-repository-creation-in-your-organization)\" in the GitHub Help documentation.
    // bool membersCanCreatePublicRepositories
    test('to test the property `membersCanCreatePublicRepositories`', () async {
      // TODO
    });

    // Specifies which types of repositories non-admin organization members can create. Can be one of:   \\* `all` - all organization members can create public and private repositories.   \\* `private` - members can create private repositories. This option is only available to repositories that are part of an organization on GitHub Enterprise Cloud.   \\* `none` - only admin members can create repositories.   **Note:** This parameter is deprecated and will be removed in the future. Its return value ignores internal repositories. Using this parameter overrides values set in `members_can_create_repositories`. See the parameter deprecation notice in the operation description for details.
    // String membersAllowedRepositoryCreationType
    test('to test the property `membersAllowedRepositoryCreationType`', () async {
      // TODO
    });

    // Toggles whether organization members can create GitHub Pages sites. Can be one of:   \\* `true` - all organization members can create GitHub Pages sites.   \\* `false` - no organization members can create GitHub Pages sites. Existing published sites will not be impacted.
    // bool membersCanCreatePages (default value: true)
    test('to test the property `membersCanCreatePages`', () async {
      // TODO
    });

    // Toggles whether organization members can create public GitHub Pages sites. Can be one of:   \\* `true` - all organization members can create public GitHub Pages sites.   \\* `false` - no organization members can create public GitHub Pages sites. Existing published sites will not be impacted.
    // bool membersCanCreatePublicPages (default value: true)
    test('to test the property `membersCanCreatePublicPages`', () async {
      // TODO
    });

    // Toggles whether organization members can create private GitHub Pages sites. Can be one of:   \\* `true` - all organization members can create private GitHub Pages sites.   \\* `false` - no organization members can create private GitHub Pages sites. Existing published sites will not be impacted.
    // bool membersCanCreatePrivatePages (default value: true)
    test('to test the property `membersCanCreatePrivatePages`', () async {
      // TODO
    });

    // String blog
    test('to test the property `blog`', () async {
      // TODO
    });


  });

}
