//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for ReposApi
void main() {
  final instance = ReposApi();

  group('tests for ReposApi', () {
    // Accept a repository invitation
    //
    //Future reposAcceptInvitation(int invitationId) async
    test('test reposAcceptInvitation', () async {
      // TODO
    });

    // Add app access restrictions
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Grants the specified apps push access for this branch. Only installed GitHub Apps with `write` access to the `contents` permission can be added as authorized actors on a protected branch.  | Type    | Description                                                                                                                                                | | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | | `array` | The GitHub Apps that have push access to this branch. Use the app's `slug`. **Note**: The list of users, apps, and teams in total is limited to 100 items. |
    //
    //Future<List<Integration>> reposAddAppAccessRestrictions(String owner, String repo, String branch, { InlineObject72 inlineObject72 }) async
    test('test reposAddAppAccessRestrictions', () async {
      // TODO
    });

    // Add a repository collaborator
    //
    // This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-rate-limits)\" for details.  For more information the permission levels, see \"[Repository permission levels for an organization](https://help.github.com/en/github/setting-up-and-managing-organizations-and-teams/repository-permission-levels-for-an-organization#permission-levels-for-repositories-owned-by-an-organization)\".  Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"  The invitee will receive a notification that they have been invited to the repository, which they must accept or decline. They may do this via the notifications page, the email they receive, or by using the [repository invitations API endpoints](https://docs.github.com/rest/reference/repos#invitations).  **Rate limits**  To prevent abuse, you are limited to sending 50 invitations to a repository per 24 hour period. Note there is no limit if you are inviting organization members to an organization repository.
    //
    //Future<RepositoryInvitation> reposAddCollaborator(String owner, String repo, String username, { InlineObject85 inlineObject85 }) async
    test('test reposAddCollaborator', () async {
      // TODO
    });

    // Add status check contexts
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
    //
    //Future<List<String>> reposAddStatusCheckContexts(String owner, String repo, String branch, { InlineObject69 inlineObject69 }) async
    test('test reposAddStatusCheckContexts', () async {
      // TODO
    });

    // Add team access restrictions
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Grants the specified teams push access for this branch. You can also give push access to child teams.  | Type    | Description                                                                                                                                | | ------- | ------------------------------------------------------------------------------------------------------------------------------------------ | | `array` | The teams that can have push access. Use the team's `slug`. **Note**: The list of users, apps, and teams in total is limited to 100 items. |
    //
    //Future<List<Team>> reposAddTeamAccessRestrictions(String owner, String repo, String branch, { InlineObject75 inlineObject75 }) async
    test('test reposAddTeamAccessRestrictions', () async {
      // TODO
    });

    // Add user access restrictions
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Grants the specified people push access for this branch.  | Type    | Description                                                                                                                   | | ------- | ----------------------------------------------------------------------------------------------------------------------------- | | `array` | Usernames for people who can have push access. **Note**: The list of users, apps, and teams in total is limited to 100 items. |
    //
    //Future<List<SimpleUser>> reposAddUserAccessRestrictions(String owner, String repo, String branch, { InlineObject78 inlineObject78 }) async
    test('test reposAddUserAccessRestrictions', () async {
      // TODO
    });

    // Check if a user is a repository collaborator
    //
    // For organization-owned repositories, the list of collaborators includes outside collaborators, organization members that are direct collaborators, organization members with access through team memberships, organization members with access through default organization permissions, and organization owners.  Team members will include the members of child teams.
    //
    //Future reposCheckCollaborator(String owner, String repo, String username) async
    test('test reposCheckCollaborator', () async {
      // TODO
    });

    // Check if vulnerability alerts are enabled for a repository
    //
    // Shows whether dependency alerts are enabled or disabled for a repository. The authenticated user must have admin access to the repository. For more information, see \"[About security alerts for vulnerable dependencies](https://help.github.com/en/articles/about-security-alerts-for-vulnerable-dependencies)\".
    //
    //Future reposCheckVulnerabilityAlerts(String owner, String repo) async
    test('test reposCheckVulnerabilityAlerts', () async {
      // TODO
    });

    // Compare two commits
    //
    // Both `:base` and `:head` must be branch names in `:repo`. To compare branches across other repositories in the same network as `:repo`, use the format `<USERNAME>:branch`.  The response from the API is equivalent to running the `git log base..head` command; however, commits are returned in chronological order. Pass the appropriate [media type](https://docs.github.com/rest/overview/media-types/#commits-commit-comparison-and-pull-requests) to fetch diff and patch formats.  The response also includes details on the files that were changed between the two commits. This includes the status of the change (for example, if a file was added, removed, modified, or renamed), and details of the change itself. For example, files with a `renamed` status have a `previous_filename` field showing the previous filename of the file, and files with a `modified` status have a `patch` field showing the changes made to the file.  **Working with large comparisons**  The response will include a comparison of up to 250 commits. If you are working with a larger commit range, you can use the [List commits](https://docs.github.com/rest/reference/repos#list-commits) to enumerate all commits in the range.  For comparisons with extremely large diffs, you may receive an error response indicating that the diff took too long to generate. You can typically resolve this error by using a smaller commit range.  **Signature verification object**  The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:  | Name | Type | Description | | ---- | ---- | ----------- | | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. | | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in table below. | | `signature` | `string` | The signature that was extracted from the commit. | | `payload` | `string` | The value that was signed. |  These are the possible values for `reason` in the `verification` object:  | Value | Description | | ----- | ----------- | | `expired_key` | The key that made the signature is expired. | | `not_signing_key` | The \"signing\" flag is not among the usage flags in the GPG key that made the signature. | | `gpgverify_error` | There was an error communicating with the signature verification service. | | `gpgverify_unavailable` | The signature verification service is currently unavailable. | | `unsigned` | The object does not include a signature. | | `unknown_signature_type` | A non-PGP signature was found in the commit. | | `no_user` | No user was associated with the `committer` email address in the commit. | | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on her/his account. | | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. | | `unknown_key` | The key that made the signature has not been registered with any user's account. | | `malformed_signature` | There was an error parsing the signature. | | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. | | `valid` | None of the above errors applied, so the signature is considered to be verified. |
    //
    //Future<CommitComparison> reposCompareCommits(String owner, String repo, String base, String head) async
    test('test reposCompareCommits', () async {
      // TODO
    });

    // Create a commit comment
    //
    // Create a comment for a commit using its `:commit_sha`.  This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-rate-limits)\" for details.
    //
    //Future<CommitComment> reposCreateCommitComment(String owner, String repo, String commitSha, { InlineObject88 inlineObject88 }) async
    test('test reposCreateCommitComment', () async {
      // TODO
    });

    // Create commit signature protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  When authenticated with admin or owner permissions to the repository, you can use this endpoint to require signed commits on a branch. You must enable branch protection to require signed commits.
    //
    //Future<ProtectedBranchAdminEnforced> reposCreateCommitSignatureProtection(String owner, String repo, String branch) async
    test('test reposCreateCommitSignatureProtection', () async {
      // TODO
    });

    // Create a commit status
    //
    // Users with push access in a repository can create commit statuses for a given SHA.  Note: there is a limit of 1000 statuses per `sha` and `context` within a repository. Attempts to create more than 1000 statuses will result in a validation error.
    //
    //Future<Status> reposCreateCommitStatus(String owner, String repo, String sha, { InlineObject148 inlineObject148 }) async
    test('test reposCreateCommitStatus', () async {
      // TODO
    });

    // Create a deploy key
    //
    // You can create a read-only deploy key.
    //
    //Future<DeployKey> reposCreateDeployKey(String owner, String repo, { InlineObject121 inlineObject121 }) async
    test('test reposCreateDeployKey', () async {
      // TODO
    });

    // Create a deployment
    //
    // Deployments offer a few configurable parameters with certain defaults.  The `ref` parameter can be any named branch, tag, or SHA. At GitHub we often deploy branches and verify them before we merge a pull request.  The `environment` parameter allows deployments to be issued to different runtime environments. Teams often have multiple environments for verifying their applications, such as `production`, `staging`, and `qa`. This parameter makes it easier to track which environments have requested deployments. The default environment is `production`.  The `auto_merge` parameter is used to ensure that the requested ref is not behind the repository's default branch. If the ref _is_ behind the default branch for the repository, we will attempt to merge it for you. If the merge succeeds, the API will return a successful merge commit. If merge conflicts prevent the merge from succeeding, the API will return a failure response.  By default, [commit statuses](https://docs.github.com/rest/reference/repos#statuses) for every submitted context must be in a `success` state. The `required_contexts` parameter allows you to specify a subset of contexts that must be `success`, or to specify contexts that have not yet been submitted. You are not required to use commit statuses to deploy. If you do not require any contexts or create any commit statuses, the deployment will always succeed.  The `payload` parameter is available for any extra information that a deployment system might need. It is a JSON text field that will be passed on when a deployment event is dispatched.  The `task` parameter is used by the deployment system to allow different execution paths. In the web world this might be `deploy:migrations` to run schema changes on the system. In the compiled world this could be a flag to compile an application with debugging enabled.  Users with `repo` or `repo_deployment` scopes can create a deployment for a given ref.  #### Merged branch response You will see this response when GitHub automatically merges the base branch into the topic branch instead of creating a deployment. This auto-merge happens when: *   Auto-merge option is enabled in the repository *   Topic branch does not include the latest changes on the base branch, which is `master` in the response example *   There are no merge conflicts  If there are no new commits in the base branch, a new request to create a deployment should give a successful response.  #### Merge conflict response This error happens when the `auto_merge` option is enabled and when the default branch (in this case `master`), can't be merged into the branch that's being deployed (in this case `topic-branch`), due to merge conflicts.  #### Failed commit status checks This error happens when the `required_contexts` parameter indicates that one or more contexts need to have a `success` status for the commit to be deployed, but one or more of the required contexts do not have a state of `success`.
    //
    //Future<Deployment> reposCreateDeployment(String owner, String repo, { InlineObject91 inlineObject91 }) async
    test('test reposCreateDeployment', () async {
      // TODO
    });

    // Create a deployment status
    //
    // Users with `push` access can create deployment statuses for a given deployment.  GitHub Apps require `read & write` access to \"Deployments\" and `read-only` access to \"Repo contents\" (for private repos). OAuth Apps require the `repo_deployment` scope.
    //
    //Future<DeploymentStatus> reposCreateDeploymentStatus(String owner, String repo, int deploymentId, { InlineObject92 inlineObject92 }) async
    test('test reposCreateDeploymentStatus', () async {
      // TODO
    });

    // Create a repository dispatch event
    //
    // You can use this endpoint to trigger a webhook event called `repository_dispatch` when you want activity that happens outside of GitHub to trigger a GitHub Actions workflow or GitHub App webhook. You must configure your GitHub Actions workflow or GitHub App to run when the `repository_dispatch` event occurs. For an example `repository_dispatch` webhook payload, see \"[RepositoryDispatchEvent](https://docs.github.com/webhooks/event-payloads/#repository_dispatch).\"  The `client_payload` parameter is available for any extra information that your workflow might need. This parameter is a JSON payload that will be passed on when the webhook event is dispatched. For example, the `client_payload` can include a message that a user would like to send using a GitHub Actions workflow. Or the `client_payload` can be used as a test to debug your workflow.  This endpoint requires write access to the repository by providing either:    - Personal access tokens with `repo` scope. For more information, see \"[Creating a personal access token for the command line](https://help.github.com/articles/creating-a-personal-access-token-for-the-command-line)\" in the GitHub Help documentation.   - GitHub Apps with both `metadata:read` and `contents:read&write` permissions.  This input example shows how you can use the `client_payload` as a test to debug your workflow.
    //
    //Future reposCreateDispatchEvent(String owner, String repo, { InlineObject93 inlineObject93 }) async
    test('test reposCreateDispatchEvent', () async {
      // TODO
    });

    // Create a repository for the authenticated user
    //
    // Creates a new repository for the authenticated user.  **OAuth scope requirements**  When using [OAuth](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/), authorizations must include:  *   `public_repo` scope or `repo` scope to create a public repository *   `repo` scope to create a private repository
    //
    //Future<Repository> reposCreateForAuthenticatedUser({ InlineObject181 inlineObject181 }) async
    test('test reposCreateForAuthenticatedUser', () async {
      // TODO
    });

    // Create a fork
    //
    // Create a fork for the authenticated user.  **Note**: Forking a Repository happens asynchronously. You may have to wait a short period of time before you can access the git objects. If this takes longer than 5 minutes, be sure to contact [GitHub Support](https://support.github.com/contact) or [GitHub Premium Support](https://premium.githubsupport.com).
    //
    //Future<Repository> reposCreateFork(String owner, String repo, { InlineObject95 inlineObject95 }) async
    test('test reposCreateFork', () async {
      // TODO
    });

    // Create an organization repository
    //
    // Creates a new repository in the specified organization. The authenticated user must be a member of the organization.  **OAuth scope requirements**  When using [OAuth](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/), authorizations must include:  *   `public_repo` scope or `repo` scope to create a public repository *   `repo` scope to create a private repository
    //
    //Future<Repository> reposCreateInOrg(String org, { InlineObject40 inlineObject40 }) async
    test('test reposCreateInOrg', () async {
      // TODO
    });

    // Create or update an environment
    //
    // Create or update an environment with protection rules, such as required reviewers. For more information about environment protection rules, see \"[Environments](/actions/reference/environments#environment-protection-rules).\"  **Note:** Although you can use this operation to specify that only branches that match specified name patterns can deploy to this environment, you must use the UI to set the name patterns. For more information, see \"[Environments](/actions/reference/environments#deployment-branches).\"  **Note:** To create or update secrets for an environment, see \"[Secrets](/rest/reference/actions#secrets).\"  You must authenticate using an access token with the repo scope to use this endpoint.
    //
    //Future<Environment> reposCreateOrUpdateEnvironment(String owner, String repo, String environmentName, { InlineObject94 inlineObject94 }) async
    test('test reposCreateOrUpdateEnvironment', () async {
      // TODO
    });

    // Create or update file contents
    //
    // Creates a new file or replaces an existing file in a repository.
    //
    //Future<FileCommit> reposCreateOrUpdateFileContents(String owner, String repo, String path, { InlineObject89 inlineObject89 }) async
    test('test reposCreateOrUpdateFileContents', () async {
      // TODO
    });

    // Create a GitHub Pages site
    //
    // Configures a GitHub Pages site. For more information, see \"[About GitHub Pages](/github/working-with-github-pages/about-github-pages).\"
    //
    //Future<Page> reposCreatePagesSite(String owner, String repo, { InlineObject129 inlineObject129 }) async
    test('test reposCreatePagesSite', () async {
      // TODO
    });

    // Create a release
    //
    // Users with push access to the repository can create a release.  This endpoint triggers [notifications](https://docs.github.com/en/github/managing-subscriptions-and-notifications-on-github/about-notifications). Creating content too quickly using this endpoint may result in abuse rate limiting. See \"[Abuse rate limits](https://docs.github.com/rest/overview/resources-in-the-rest-api#abuse-rate-limits)\" and \"[Dealing with abuse rate limits](https://docs.github.com/rest/guides/best-practices-for-integrators#dealing-with-rate-limits)\" for details.
    //
    //Future<Release> reposCreateRelease(String owner, String repo, { InlineObject144 inlineObject144 }) async
    test('test reposCreateRelease', () async {
      // TODO
    });

    // Create a repository using a template
    //
    // Creates a new repository using a repository template. Use the `template_owner` and `template_repo` route parameters to specify the repository to use as the template. The authenticated user must own or be a member of an organization that owns the repository. To check if a repository is available to use as a template, get the repository's information using the [Get a repository](https://docs.github.com/rest/reference/repos#get-a-repository) endpoint and check that the `is_template` key is `true`.  **OAuth scope requirements**  When using [OAuth](https://docs.github.com/apps/building-oauth-apps/understanding-scopes-for-oauth-apps/), authorizations must include:  *   `public_repo` scope or `repo` scope to create a public repository *   `repo` scope to create a private repository
    //
    //Future<Repository> reposCreateUsingTemplate(String templateOwner, String templateRepo, { InlineObject152 inlineObject152 }) async
    test('test reposCreateUsingTemplate', () async {
      // TODO
    });

    // Create a repository webhook
    //
    // Repositories can have multiple webhooks installed. Each webhook should have a unique `config`. Multiple webhooks can share the same `config` as long as those webhooks do not have any `events` that overlap.
    //
    //Future<Hook> reposCreateWebhook(String owner, String repo, { InlineObject102 inlineObject102 }) async
    test('test reposCreateWebhook', () async {
      // TODO
    });

    // Decline a repository invitation
    //
    //Future reposDeclineInvitation(int invitationId) async
    test('test reposDeclineInvitation', () async {
      // TODO
    });

    // Delete a repository
    //
    // Deleting a repository requires admin access. If OAuth is used, the `delete_repo` scope is required.  If an organization owner has configured the organization to prevent members from deleting organization-owned repositories, you will get a `403 Forbidden` response.
    //
    //Future reposDelete(String owner, String repo) async
    test('test reposDelete', () async {
      // TODO
    });

    // Delete access restrictions
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Disables the ability to restrict who can push to this branch.
    //
    //Future reposDeleteAccessRestrictions(String owner, String repo, String branch) async
    test('test reposDeleteAccessRestrictions', () async {
      // TODO
    });

    // Delete admin branch protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Removing admin enforcement requires admin or owner permissions to the repository and branch protection to be enabled.
    //
    //Future reposDeleteAdminBranchProtection(String owner, String repo, String branch) async
    test('test reposDeleteAdminBranchProtection', () async {
      // TODO
    });

    // Delete an environment
    //
    // You must authenticate using an access token with the repo scope to use this endpoint.
    //
    //Future reposDeleteAnEnvironment(String owner, String repo, String environmentName) async
    test('test reposDeleteAnEnvironment', () async {
      // TODO
    });

    // Delete branch protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
    //
    //Future reposDeleteBranchProtection(String owner, String repo, String branch) async
    test('test reposDeleteBranchProtection', () async {
      // TODO
    });

    // Delete a commit comment
    //
    //Future reposDeleteCommitComment(String owner, String repo, int commentId) async
    test('test reposDeleteCommitComment', () async {
      // TODO
    });

    // Delete commit signature protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  When authenticated with admin or owner permissions to the repository, you can use this endpoint to disable required signed commits on a branch. You must enable branch protection to require signed commits.
    //
    //Future reposDeleteCommitSignatureProtection(String owner, String repo, String branch) async
    test('test reposDeleteCommitSignatureProtection', () async {
      // TODO
    });

    // Delete a deploy key
    //
    // Deploy keys are immutable. If you need to update a key, remove the key and create a new one instead.
    //
    //Future reposDeleteDeployKey(String owner, String repo, int keyId) async
    test('test reposDeleteDeployKey', () async {
      // TODO
    });

    // Delete a deployment
    //
    // To ensure there can always be an active deployment, you can only delete an _inactive_ deployment. Anyone with `repo` or `repo_deployment` scopes can delete an inactive deployment.  To set a deployment as inactive, you must:  *   Create a new deployment that is active so that the system has a record of the current state, then delete the previously active deployment. *   Mark the active deployment as inactive by adding any non-successful deployment status.  For more information, see \"[Create a deployment](https://docs.github.com/rest/reference/repos/#create-a-deployment)\" and \"[Create a deployment status](https://docs.github.com/rest/reference/repos#create-a-deployment-status).\"
    //
    //Future reposDeleteDeployment(String owner, String repo, int deploymentId) async
    test('test reposDeleteDeployment', () async {
      // TODO
    });

    // Delete a file
    //
    // Deletes a file in a repository.  You can provide an additional `committer` parameter, which is an object containing information about the committer. Or, you can provide an `author` parameter, which is an object containing information about the author.  The `author` section is optional and is filled in with the `committer` information if omitted. If the `committer` information is omitted, the authenticated user's information is used.  You must provide values for both `name` and `email`, whether you choose to use `author` or `committer`. Otherwise, you'll receive a `422` status code.
    //
    //Future<FileCommit> reposDeleteFile(String owner, String repo, String path, { InlineObject90 inlineObject90 }) async
    test('test reposDeleteFile', () async {
      // TODO
    });

    // Delete a repository invitation
    //
    //Future reposDeleteInvitation(String owner, String repo, int invitationId) async
    test('test reposDeleteInvitation', () async {
      // TODO
    });

    // Delete a GitHub Pages site
    //
    //Future reposDeletePagesSite(String owner, String repo) async
    test('test reposDeletePagesSite', () async {
      // TODO
    });

    // Delete pull request review protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
    //
    //Future reposDeletePullRequestReviewProtection(String owner, String repo, String branch) async
    test('test reposDeletePullRequestReviewProtection', () async {
      // TODO
    });

    // Delete a release
    //
    // Users with push access to the repository can delete a release.
    //
    //Future reposDeleteRelease(String owner, String repo, int releaseId) async
    test('test reposDeleteRelease', () async {
      // TODO
    });

    // Delete a release asset
    //
    //Future reposDeleteReleaseAsset(String owner, String repo, int assetId) async
    test('test reposDeleteReleaseAsset', () async {
      // TODO
    });

    // Delete a repository webhook
    //
    //Future reposDeleteWebhook(String owner, String repo, int hookId) async
    test('test reposDeleteWebhook', () async {
      // TODO
    });

    // Disable automated security fixes
    //
    // Disables automated security fixes for a repository. The authenticated user must have admin access to the repository. For more information, see \"[Configuring automated security fixes](https://help.github.com/en/articles/configuring-automated-security-fixes)\".
    //
    //Future reposDisableAutomatedSecurityFixes(String owner, String repo) async
    test('test reposDisableAutomatedSecurityFixes', () async {
      // TODO
    });

    // Disable vulnerability alerts
    //
    // Disables dependency alerts and the dependency graph for a repository. The authenticated user must have admin access to the repository. For more information, see \"[About security alerts for vulnerable dependencies](https://help.github.com/en/articles/about-security-alerts-for-vulnerable-dependencies)\".
    //
    //Future reposDisableVulnerabilityAlerts(String owner, String repo) async
    test('test reposDisableVulnerabilityAlerts', () async {
      // TODO
    });

    // Download a repository archive (tar)
    //
    // Gets a redirect URL to download a tar archive for a repository. If you omit `:ref`, the repository’s default branch (usually `master`) will be used. Please make sure your HTTP framework is configured to follow redirects or you will need to use the `Location` header to make a second `GET` request. **Note**: For private repositories, these links are temporary and expire after five minutes.
    //
    //Future reposDownloadTarballArchive(String owner, String repo, String ref) async
    test('test reposDownloadTarballArchive', () async {
      // TODO
    });

    // Download a repository archive (zip)
    //
    // Gets a redirect URL to download a zip archive for a repository. If you omit `:ref`, the repository’s default branch (usually `master`) will be used. Please make sure your HTTP framework is configured to follow redirects or you will need to use the `Location` header to make a second `GET` request. **Note**: For private repositories, these links are temporary and expire after five minutes.
    //
    //Future reposDownloadZipballArchive(String owner, String repo, String ref) async
    test('test reposDownloadZipballArchive', () async {
      // TODO
    });

    // Enable automated security fixes
    //
    // Enables automated security fixes for a repository. The authenticated user must have admin access to the repository. For more information, see \"[Configuring automated security fixes](https://help.github.com/en/articles/configuring-automated-security-fixes)\".
    //
    //Future reposEnableAutomatedSecurityFixes(String owner, String repo) async
    test('test reposEnableAutomatedSecurityFixes', () async {
      // TODO
    });

    // Enable vulnerability alerts
    //
    // Enables dependency alerts and the dependency graph for a repository. The authenticated user must have admin access to the repository. For more information, see \"[About security alerts for vulnerable dependencies](https://help.github.com/en/articles/about-security-alerts-for-vulnerable-dependencies)\".
    //
    //Future reposEnableVulnerabilityAlerts(String owner, String repo) async
    test('test reposEnableVulnerabilityAlerts', () async {
      // TODO
    });

    // Get a repository
    //
    // When you pass the `scarlet-witch-preview` media type, requests to get a repository will also return the repository's code of conduct if it can be detected from the repository's code of conduct file.  The `parent` and `source` objects are present when the repository is a fork. `parent` is the repository this repository was forked from, `source` is the ultimate source for the network.
    //
    //Future<FullRepository> reposGet(String owner, String repo) async
    test('test reposGet', () async {
      // TODO
    });

    // Get access restrictions
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Lists who has access to this protected branch.  **Note**: Users, apps, and teams `restrictions` are only available for organization-owned repositories.
    //
    //Future<BranchRestrictionPolicy> reposGetAccessRestrictions(String owner, String repo, String branch) async
    test('test reposGetAccessRestrictions', () async {
      // TODO
    });

    // Get admin branch protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
    //
    //Future<ProtectedBranchAdminEnforced> reposGetAdminBranchProtection(String owner, String repo, String branch) async
    test('test reposGetAdminBranchProtection', () async {
      // TODO
    });

    // Get all environments
    //
    // Get all environments for a repository.  Anyone with read access to the repository can use this endpoint. If the repository is private, you must use an access token with the `repo` scope. GitHub Apps must have the `actions:read` permission to use this endpoint.
    //
    //Future<InlineResponse20019> reposGetAllEnvironments(String owner, String repo) async
    test('test reposGetAllEnvironments', () async {
      // TODO
    });

    // Get all status check contexts
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
    //
    //Future<List<String>> reposGetAllStatusCheckContexts(String owner, String repo, String branch) async
    test('test reposGetAllStatusCheckContexts', () async {
      // TODO
    });

    // Get all repository topics
    //
    //Future<Topic> reposGetAllTopics(String owner, String repo) async
    test('test reposGetAllTopics', () async {
      // TODO
    });

    // Get apps with access to the protected branch
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Lists the GitHub Apps that have push access to this branch. Only installed GitHub Apps with `write` access to the `contents` permission can be added as authorized actors on a protected branch.
    //
    //Future<List<Integration>> reposGetAppsWithAccessToProtectedBranch(String owner, String repo, String branch) async
    test('test reposGetAppsWithAccessToProtectedBranch', () async {
      // TODO
    });

    // Get a branch
    //
    //Future<BranchWithProtection> reposGetBranch(String owner, String repo, String branch) async
    test('test reposGetBranch', () async {
      // TODO
    });

    // Get branch protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
    //
    //Future<BranchProtection> reposGetBranchProtection(String owner, String repo, String branch) async
    test('test reposGetBranchProtection', () async {
      // TODO
    });

    // Get repository clones
    //
    // Get the total number of clones and breakdown per day or week for the last 14 days. Timestamps are aligned to UTC midnight of the beginning of the day or week. Week begins on Monday.
    //
    //Future<CloneTraffic> reposGetClones(String owner, String repo, { String per }) async
    test('test reposGetClones', () async {
      // TODO
    });

    // Get the weekly commit activity
    //
    // Returns a weekly aggregate of the number of additions and deletions pushed to a repository.
    //
    //Future<List<List<int>>> reposGetCodeFrequencyStats(String owner, String repo) async
    test('test reposGetCodeFrequencyStats', () async {
      // TODO
    });

    // Get repository permissions for a user
    //
    // Checks the repository permission of a collaborator. The possible repository permissions are `admin`, `write`, `read`, and `none`.
    //
    //Future<RepositoryCollaboratorPermission> reposGetCollaboratorPermissionLevel(String owner, String repo, String username) async
    test('test reposGetCollaboratorPermissionLevel', () async {
      // TODO
    });

    // Get the combined status for a specific reference
    //
    // Users with pull access in a repository can access a combined view of commit statuses for a given ref. The ref can be a SHA, a branch name, or a tag name.  The most recent status for each context is returned, up to 100. This field [paginates](https://docs.github.com/rest/overview/resources-in-the-rest-api#pagination) if there are over 100 contexts.  Additionally, a combined `state` is returned. The `state` is one of:  *   **failure** if any of the contexts report as `error` or `failure` *   **pending** if there are no statuses or a context is `pending` *   **success** if the latest status for all contexts is `success`
    //
    //Future<CombinedCommitStatus> reposGetCombinedStatusForRef(String owner, String repo, String ref) async
    test('test reposGetCombinedStatusForRef', () async {
      // TODO
    });

    // Get a commit
    //
    // Returns the contents of a single commit reference. You must have `read` access for the repository to use this endpoint.  **Note:** If there are more than 300 files in the commit diff, the response will include pagination link headers for the remaining files, up to a limit of 3000 files. Each page contains the static commit information, and the only changes are to the file listing.  You can pass the appropriate [media type](https://docs.github.com/rest/overview/media-types/#commits-commit-comparison-and-pull-requests) to  fetch `diff` and `patch` formats. Diffs with binary data will have no `patch` property.  To return only the SHA-1 hash of the commit reference, you can provide the `sha` custom [media type](https://docs.github.com/rest/overview/media-types/#commits-commit-comparison-and-pull-requests) in the `Accept` header. You can use this endpoint to check if a remote reference's SHA-1 hash is the same as your local reference's SHA-1 hash by providing the local SHA-1 reference as the ETag.  **Signature verification object**  The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:  | Name | Type | Description | | ---- | ---- | ----------- | | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. | | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in table below. | | `signature` | `string` | The signature that was extracted from the commit. | | `payload` | `string` | The value that was signed. |  These are the possible values for `reason` in the `verification` object:  | Value | Description | | ----- | ----------- | | `expired_key` | The key that made the signature is expired. | | `not_signing_key` | The \"signing\" flag is not among the usage flags in the GPG key that made the signature. | | `gpgverify_error` | There was an error communicating with the signature verification service. | | `gpgverify_unavailable` | The signature verification service is currently unavailable. | | `unsigned` | The object does not include a signature. | | `unknown_signature_type` | A non-PGP signature was found in the commit. | | `no_user` | No user was associated with the `committer` email address in the commit. | | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on her/his account. | | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. | | `unknown_key` | The key that made the signature has not been registered with any user's account. | | `malformed_signature` | There was an error parsing the signature. | | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. | | `valid` | None of the above errors applied, so the signature is considered to be verified. |
    //
    //Future<Commit> reposGetCommit(String owner, String repo, String ref) async
    test('test reposGetCommit', () async {
      // TODO
    });

    // Get the last year of commit activity
    //
    // Returns the last year of commit activity grouped by week. The `days` array is a group of commits per day, starting on `Sunday`.
    //
    //Future<List<CommitActivity>> reposGetCommitActivityStats(String owner, String repo) async
    test('test reposGetCommitActivityStats', () async {
      // TODO
    });

    // Get a commit comment
    //
    //Future<CommitComment> reposGetCommitComment(String owner, String repo, int commentId) async
    test('test reposGetCommitComment', () async {
      // TODO
    });

    // Get commit signature protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  When authenticated with admin or owner permissions to the repository, you can use this endpoint to check whether a branch requires signed commits. An enabled status of `true` indicates you must sign commits on this branch. For more information, see [Signing commits with GPG](https://help.github.com/articles/signing-commits-with-gpg) in GitHub Help.  **Note**: You must enable branch protection to require signed commits.
    //
    //Future<ProtectedBranchAdminEnforced> reposGetCommitSignatureProtection(String owner, String repo, String branch) async
    test('test reposGetCommitSignatureProtection', () async {
      // TODO
    });

    // Get community profile metrics
    //
    // This endpoint will return all community profile metrics, including an overall health score, repository description, the presence of documentation, detected code of conduct, detected license, and the presence of ISSUE\\_TEMPLATE, PULL\\_REQUEST\\_TEMPLATE, README, and CONTRIBUTING files.  The `health_percentage` score is defined as a percentage of how many of these four documents are present: README, CONTRIBUTING, LICENSE, and CODE_OF_CONDUCT. For example, if all four documents are present, then the `health_percentage` is `100`. If only one is present, then the `health_percentage` is `25`.  `content_reports_enabled` is only returned for organization-owned repositories.
    //
    //Future<CommunityProfile> reposGetCommunityProfileMetrics(String owner, String repo) async
    test('test reposGetCommunityProfileMetrics', () async {
      // TODO
    });

    // Get repository content
    //
    // Gets the contents of a file or directory in a repository. Specify the file path or directory in `:path`. If you omit `:path`, you will receive the contents of the repository's root directory. See the description below regarding what the API response includes for directories.   Files and symlinks support [a custom media type](https://docs.github.com/rest/reference/repos#custom-media-types) for retrieving the raw content or rendered HTML (when supported). All content types support [a custom media type](https://docs.github.com/rest/reference/repos#custom-media-types) to ensure the content is returned in a consistent object format.  **Note**: *   To get a repository's contents recursively, you can [recursively get the tree](https://docs.github.com/rest/reference/git#trees). *   This API has an upper limit of 1,000 files for a directory. If you need to retrieve more files, use the [Git Trees API](https://docs.github.com/rest/reference/git#get-a-tree). *   This API supports files up to 1 megabyte in size.  #### If the content is a directory The response will be an array of objects, one object for each item in the directory. When listing the contents of a directory, submodules have their \"type\" specified as \"file\". Logically, the value _should_ be \"submodule\". This behavior exists in API v3 [for backwards compatibility purposes](https://git.io/v1YCW). In the next major version of the API, the type will be returned as \"submodule\".  #### If the content is a symlink  If the requested `:path` points to a symlink, and the symlink's target is a normal file in the repository, then the API responds with the content of the file (in the format shown in the example. Otherwise, the API responds with an object  describing the symlink itself.  #### If the content is a submodule The `submodule_git_url` identifies the location of the submodule repository, and the `sha` identifies a specific commit within the submodule repository. Git uses the given URL when cloning the submodule repository, and checks out the submodule at that specific commit.  If the submodule repository is not hosted on github.com, the Git URLs (`git_url` and `_links[\"git\"]`) and the github.com URLs (`html_url` and `_links[\"html\"]`) will have null values.
    //
    //Future<ContentTree> reposGetContent(String owner, String repo, String path, { String ref }) async
    test('test reposGetContent', () async {
      // TODO
    });

    // Get all contributor commit activity
    //
    //  Returns the `total` number of commits authored by the contributor. In addition, the response includes a Weekly Hash (`weeks` array) with the following information:  *   `w` - Start of the week, given as a [Unix timestamp](http://en.wikipedia.org/wiki/Unix_time). *   `a` - Number of additions *   `d` - Number of deletions *   `c` - Number of commits
    //
    //Future<List<ContributorActivity>> reposGetContributorsStats(String owner, String repo) async
    test('test reposGetContributorsStats', () async {
      // TODO
    });

    // Get a deploy key
    //
    //Future<DeployKey> reposGetDeployKey(String owner, String repo, int keyId) async
    test('test reposGetDeployKey', () async {
      // TODO
    });

    // Get a deployment
    //
    //Future<Deployment> reposGetDeployment(String owner, String repo, int deploymentId) async
    test('test reposGetDeployment', () async {
      // TODO
    });

    // Get a deployment status
    //
    // Users with pull access can view a deployment status for a deployment:
    //
    //Future<DeploymentStatus> reposGetDeploymentStatus(String owner, String repo, int deploymentId, int statusId) async
    test('test reposGetDeploymentStatus', () async {
      // TODO
    });

    // Get an environment
    //
    // Anyone with read access to the repository can use this endpoint. If the repository is private, you must use an access token with the `repo` scope. GitHub Apps must have the `actions:read` permission to use this endpoint.
    //
    //Future<Environment> reposGetEnvironment(String owner, String repo, String environmentName) async
    test('test reposGetEnvironment', () async {
      // TODO
    });

    // Get latest Pages build
    //
    //Future<PageBuild> reposGetLatestPagesBuild(String owner, String repo) async
    test('test reposGetLatestPagesBuild', () async {
      // TODO
    });

    // Get the latest release
    //
    // View the latest published full release for the repository.  The latest release is the most recent non-prerelease, non-draft release, sorted by the `created_at` attribute. The `created_at` attribute is the date of the commit used for the release, and not the date when the release was drafted or published.
    //
    //Future<Release> reposGetLatestRelease(String owner, String repo) async
    test('test reposGetLatestRelease', () async {
      // TODO
    });

    // Get a GitHub Pages site
    //
    //Future<Page> reposGetPages(String owner, String repo) async
    test('test reposGetPages', () async {
      // TODO
    });

    // Get GitHub Pages build
    //
    //Future<PageBuild> reposGetPagesBuild(String owner, String repo, int buildId) async
    test('test reposGetPagesBuild', () async {
      // TODO
    });

    // Get the weekly commit count
    //
    // Returns the total commit counts for the `owner` and total commit counts in `all`. `all` is everyone combined, including the `owner` in the last 52 weeks. If you'd like to get the commit counts for non-owners, you can subtract `owner` from `all`.  The array order is oldest week (index 0) to most recent week.
    //
    //Future<ParticipationStats> reposGetParticipationStats(String owner, String repo) async
    test('test reposGetParticipationStats', () async {
      // TODO
    });

    // Get pull request review protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
    //
    //Future<ProtectedBranchPullRequestReview> reposGetPullRequestReviewProtection(String owner, String repo, String branch) async
    test('test reposGetPullRequestReviewProtection', () async {
      // TODO
    });

    // Get the hourly commit count for each day
    //
    // Each array contains the day number, hour number, and number of commits:  *   `0-6`: Sunday - Saturday *   `0-23`: Hour of day *   Number of commits  For example, `[2, 14, 25]` indicates that there were 25 total commits, during the 2:00pm hour on Tuesdays. All times are based on the time zone of individual commits.
    //
    //Future<List<List<int>>> reposGetPunchCardStats(String owner, String repo) async
    test('test reposGetPunchCardStats', () async {
      // TODO
    });

    // Get a repository README
    //
    // Gets the preferred README for a repository.  READMEs support [custom media types](https://docs.github.com/rest/reference/repos#custom-media-types) for retrieving the raw content or rendered HTML.
    //
    //Future<ContentFile> reposGetReadme(String owner, String repo, { String ref }) async
    test('test reposGetReadme', () async {
      // TODO
    });

    // Get a release
    //
    // **Note:** This returns an `upload_url` key corresponding to the endpoint for uploading release assets. This key is a [hypermedia resource](https://docs.github.com/rest/overview/resources-in-the-rest-api#hypermedia).
    //
    //Future<Release> reposGetRelease(String owner, String repo, int releaseId) async
    test('test reposGetRelease', () async {
      // TODO
    });

    // Get a release asset
    //
    // To download the asset's binary content, set the `Accept` header of the request to [`application/octet-stream`](https://docs.github.com/rest/overview/media-types). The API will either redirect the client to the location, or stream it directly if possible. API clients should handle both a `200` or `302` response.
    //
    //Future<ReleaseAsset> reposGetReleaseAsset(String owner, String repo, int assetId) async
    test('test reposGetReleaseAsset', () async {
      // TODO
    });

    // Get a release by tag name
    //
    // Get a published release with the specified tag.
    //
    //Future<Release> reposGetReleaseByTag(String owner, String repo, String tag) async
    test('test reposGetReleaseByTag', () async {
      // TODO
    });

    // Get status checks protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
    //
    //Future<StatusCheckPolicy> reposGetStatusChecksProtection(String owner, String repo, String branch) async
    test('test reposGetStatusChecksProtection', () async {
      // TODO
    });

    // Get teams with access to the protected branch
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Lists the teams who have push access to this branch. The list includes child teams.
    //
    //Future<List<Team>> reposGetTeamsWithAccessToProtectedBranch(String owner, String repo, String branch) async
    test('test reposGetTeamsWithAccessToProtectedBranch', () async {
      // TODO
    });

    // Get top referral paths
    //
    // Get the top 10 popular contents over the last 14 days.
    //
    //Future<List<ContentTraffic>> reposGetTopPaths(String owner, String repo) async
    test('test reposGetTopPaths', () async {
      // TODO
    });

    // Get top referral sources
    //
    // Get the top 10 referrers over the last 14 days.
    //
    //Future<List<ReferrerTraffic>> reposGetTopReferrers(String owner, String repo) async
    test('test reposGetTopReferrers', () async {
      // TODO
    });

    // Get users with access to the protected branch
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Lists the people who have push access to this branch.
    //
    //Future<List<SimpleUser>> reposGetUsersWithAccessToProtectedBranch(String owner, String repo, String branch) async
    test('test reposGetUsersWithAccessToProtectedBranch', () async {
      // TODO
    });

    // Get page views
    //
    // Get the total number of views and breakdown per day or week for the last 14 days. Timestamps are aligned to UTC midnight of the beginning of the day or week. Week begins on Monday.
    //
    //Future<ViewTraffic> reposGetViews(String owner, String repo, { String per }) async
    test('test reposGetViews', () async {
      // TODO
    });

    // Get a repository webhook
    //
    // Returns a webhook configured in a repository. To get only the webhook `config` properties, see \"[Get a webhook configuration for a repository](/rest/reference/repos#get-a-webhook-configuration-for-a-repository).\"
    //
    //Future<Hook> reposGetWebhook(String owner, String repo, int hookId) async
    test('test reposGetWebhook', () async {
      // TODO
    });

    // Get a webhook configuration for a repository
    //
    // Returns the webhook configuration for a repository. To get more information about the webhook, including the `active` state and `events`, use \"[Get a repository webhook](/rest/reference/orgs#get-a-repository-webhook).\"  Access tokens must have the `read:repo_hook` or `repo` scope, and GitHub Apps must have the `repository_hooks:read` permission.
    //
    //Future<WebhookConfig> reposGetWebhookConfigForRepo(String owner, String repo, int hookId) async
    test('test reposGetWebhookConfigForRepo', () async {
      // TODO
    });

    // List branches
    //
    //Future<List<ShortBranch>> reposListBranches(String owner, String repo, { bool protected, int perPage, int page }) async
    test('test reposListBranches', () async {
      // TODO
    });

    // List branches for HEAD commit
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Returns all branches where the given commit SHA is the HEAD, or latest commit for the branch.
    //
    //Future<List<BranchShort>> reposListBranchesForHeadCommit(String owner, String repo, String commitSha) async
    test('test reposListBranchesForHeadCommit', () async {
      // TODO
    });

    // List repository collaborators
    //
    // For organization-owned repositories, the list of collaborators includes outside collaborators, organization members that are direct collaborators, organization members with access through team memberships, organization members with access through default organization permissions, and organization owners.  Team members will include the members of child teams.
    //
    //Future<List<Collaborator>> reposListCollaborators(String owner, String repo, { String affiliation, int perPage, int page }) async
    test('test reposListCollaborators', () async {
      // TODO
    });

    // List commit comments
    //
    // Use the `:commit_sha` to specify the commit that will have its comments listed.
    //
    //Future<List<CommitComment>> reposListCommentsForCommit(String owner, String repo, String commitSha, { int perPage, int page }) async
    test('test reposListCommentsForCommit', () async {
      // TODO
    });

    // List commit comments for a repository
    //
    // Commit Comments use [these custom media types](https://docs.github.com/rest/reference/repos#custom-media-types). You can read more about the use of media types in the API [here](https://docs.github.com/rest/overview/media-types/).  Comments are ordered by ascending ID.
    //
    //Future<List<CommitComment>> reposListCommitCommentsForRepo(String owner, String repo, { int perPage, int page }) async
    test('test reposListCommitCommentsForRepo', () async {
      // TODO
    });

    // List commit statuses for a reference
    //
    // Users with pull access in a repository can view commit statuses for a given ref. The ref can be a SHA, a branch name, or a tag name. Statuses are returned in reverse chronological order. The first status in the list will be the latest one.  This resource is also available via a legacy route: `GET /repos/:owner/:repo/statuses/:ref`.
    //
    //Future<List<Status>> reposListCommitStatusesForRef(String owner, String repo, String ref, { int perPage, int page }) async
    test('test reposListCommitStatusesForRef', () async {
      // TODO
    });

    // List commits
    //
    // **Signature verification object**  The response will include a `verification` object that describes the result of verifying the commit's signature. The following fields are included in the `verification` object:  | Name | Type | Description | | ---- | ---- | ----------- | | `verified` | `boolean` | Indicates whether GitHub considers the signature in this commit to be verified. | | `reason` | `string` | The reason for verified value. Possible values and their meanings are enumerated in table below. | | `signature` | `string` | The signature that was extracted from the commit. | | `payload` | `string` | The value that was signed. |  These are the possible values for `reason` in the `verification` object:  | Value | Description | | ----- | ----------- | | `expired_key` | The key that made the signature is expired. | | `not_signing_key` | The \"signing\" flag is not among the usage flags in the GPG key that made the signature. | | `gpgverify_error` | There was an error communicating with the signature verification service. | | `gpgverify_unavailable` | The signature verification service is currently unavailable. | | `unsigned` | The object does not include a signature. | | `unknown_signature_type` | A non-PGP signature was found in the commit. | | `no_user` | No user was associated with the `committer` email address in the commit. | | `unverified_email` | The `committer` email address in the commit was associated with a user, but the email address is not verified on her/his account. | | `bad_email` | The `committer` email address in the commit is not included in the identities of the PGP key that made the signature. | | `unknown_key` | The key that made the signature has not been registered with any user's account. | | `malformed_signature` | There was an error parsing the signature. | | `invalid` | The signature could not be cryptographically verified using the key whose key-id was found in the signature. | | `valid` | None of the above errors applied, so the signature is considered to be verified. |
    //
    //Future<List<Commit>> reposListCommits(String owner, String repo, { String sha, String path, String author, String since, String until, int perPage, int page }) async
    test('test reposListCommits', () async {
      // TODO
    });

    // List repository contributors
    //
    // Lists contributors to the specified repository and sorts them by the number of commits per contributor in descending order. This endpoint may return information that is a few hours old because the GitHub REST API v3 caches contributor data to improve performance.  GitHub identifies contributors by author email address. This endpoint groups contribution counts by GitHub user, which includes all associated email addresses. To improve performance, only the first 500 author email addresses in the repository link to GitHub users. The rest will appear as anonymous contributors without associated GitHub user information.
    //
    //Future<List<Contributor>> reposListContributors(String owner, String repo, { String anon, int perPage, int page }) async
    test('test reposListContributors', () async {
      // TODO
    });

    // List deploy keys
    //
    //Future<List<DeployKey>> reposListDeployKeys(String owner, String repo, { int perPage, int page }) async
    test('test reposListDeployKeys', () async {
      // TODO
    });

    // List deployment statuses
    //
    // Users with pull access can view deployment statuses for a deployment:
    //
    //Future<List<DeploymentStatus>> reposListDeploymentStatuses(String owner, String repo, int deploymentId, { int perPage, int page }) async
    test('test reposListDeploymentStatuses', () async {
      // TODO
    });

    // List deployments
    //
    // Simple filtering of deployments is available via query parameters:
    //
    //Future<List<Deployment>> reposListDeployments(String owner, String repo, { String sha, String ref, String task, String environment, int perPage, int page }) async
    test('test reposListDeployments', () async {
      // TODO
    });

    // List repositories for the authenticated user
    //
    // Lists repositories that the authenticated user has explicit permission (`:read`, `:write`, or `:admin`) to access.  The authenticated user has explicit permission to access repositories they own, repositories where they are a collaborator, and repositories that they can access through an organization membership.
    //
    //Future<List<Repository>> reposListForAuthenticatedUser({ String visibility, String affiliation, String type, String sort, String direction, int perPage, int page, String since, String before }) async
    test('test reposListForAuthenticatedUser', () async {
      // TODO
    });

    // List organization repositories
    //
    // Lists repositories for the specified organization.
    //
    //Future<List<MinimalRepository>> reposListForOrg(String org, { String type, String sort, String direction, int perPage, int page }) async
    test('test reposListForOrg', () async {
      // TODO
    });

    // List repositories for a user
    //
    // Lists public repositories for the specified user.
    //
    //Future<List<MinimalRepository>> reposListForUser(String username, { String type, String sort, String direction, int perPage, int page }) async
    test('test reposListForUser', () async {
      // TODO
    });

    // List forks
    //
    //Future<List<MinimalRepository>> reposListForks(String owner, String repo, { String sort, int perPage, int page }) async
    test('test reposListForks', () async {
      // TODO
    });

    // List repository invitations
    //
    // When authenticating as a user with admin rights to a repository, this endpoint will list all currently open repository invitations.
    //
    //Future<List<RepositoryInvitation>> reposListInvitations(String owner, String repo, { int perPage, int page }) async
    test('test reposListInvitations', () async {
      // TODO
    });

    // List repository invitations for the authenticated user
    //
    // When authenticating as a user, this endpoint will list all currently open repository invitations for that user.
    //
    //Future<List<RepositoryInvitation>> reposListInvitationsForAuthenticatedUser({ int perPage, int page }) async
    test('test reposListInvitationsForAuthenticatedUser', () async {
      // TODO
    });

    // List repository languages
    //
    // Lists languages for the specified repository. The value shown for each language is the number of bytes of code written in that language.
    //
    //Future<Map<String, int>> reposListLanguages(String owner, String repo) async
    test('test reposListLanguages', () async {
      // TODO
    });

    // List GitHub Pages builds
    //
    //Future<List<PageBuild>> reposListPagesBuilds(String owner, String repo, { int perPage, int page }) async
    test('test reposListPagesBuilds', () async {
      // TODO
    });

    // List public repositories
    //
    // Lists all public repositories in the order that they were created.  Note: Pagination is powered exclusively by the `since` parameter. Use the [Link header](https://docs.github.com/rest/overview/resources-in-the-rest-api#link-header) to get the URL for the next page of repositories.
    //
    //Future<List<MinimalRepository>> reposListPublic({ int since }) async
    test('test reposListPublic', () async {
      // TODO
    });

    // List pull requests associated with a commit
    //
    // Lists all pull requests containing the provided commit SHA, which can be from any point in the commit history. The results will include open and closed pull requests. Additional preview headers may be required to see certain details for associated pull requests, such as whether a pull request is in a draft state. For more information about previews that might affect this endpoint, see the [List pull requests](https://docs.github.com/rest/reference/pulls#list-pull-requests) endpoint.
    //
    //Future<List<PullRequestSimple>> reposListPullRequestsAssociatedWithCommit(String owner, String repo, String commitSha, { int perPage, int page }) async
    test('test reposListPullRequestsAssociatedWithCommit', () async {
      // TODO
    });

    // List release assets
    //
    //Future<List<ReleaseAsset>> reposListReleaseAssets(String owner, String repo, int releaseId, { int perPage, int page }) async
    test('test reposListReleaseAssets', () async {
      // TODO
    });

    // List releases
    //
    // This returns a list of releases, which does not include regular Git tags that have not been associated with a release. To get a list of Git tags, use the [Repository Tags API](https://docs.github.com/rest/reference/repos#list-repository-tags).  Information about published releases are available to everyone. Only users with push access will receive listings for draft releases.
    //
    //Future<List<Release>> reposListReleases(String owner, String repo, { int perPage, int page }) async
    test('test reposListReleases', () async {
      // TODO
    });

    // List repository tags
    //
    //Future<List<Tag>> reposListTags(String owner, String repo, { int perPage, int page }) async
    test('test reposListTags', () async {
      // TODO
    });

    // List repository teams
    //
    //Future<List<Team>> reposListTeams(String owner, String repo, { int perPage, int page }) async
    test('test reposListTeams', () async {
      // TODO
    });

    // List repository webhooks
    //
    //Future<List<Hook>> reposListWebhooks(String owner, String repo, { int perPage, int page }) async
    test('test reposListWebhooks', () async {
      // TODO
    });

    // Merge a branch
    //
    //Future<Commit> reposMerge(String owner, String repo, { InlineObject124 inlineObject124 }) async
    test('test reposMerge', () async {
      // TODO
    });

    // Ping a repository webhook
    //
    // This will trigger a [ping event](https://docs.github.com/webhooks/#ping-event) to be sent to the hook.
    //
    //Future reposPingWebhook(String owner, String repo, int hookId) async
    test('test reposPingWebhook', () async {
      // TODO
    });

    // Remove app access restrictions
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Removes the ability of an app to push to this branch. Only installed GitHub Apps with `write` access to the `contents` permission can be added as authorized actors on a protected branch.  | Type    | Description                                                                                                                                                | | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | | `array` | The GitHub Apps that have push access to this branch. Use the app's `slug`. **Note**: The list of users, apps, and teams in total is limited to 100 items. |
    //
    //Future<List<Integration>> reposRemoveAppAccessRestrictions(String owner, String repo, String branch, { InlineObject73 inlineObject73 }) async
    test('test reposRemoveAppAccessRestrictions', () async {
      // TODO
    });

    // Remove a repository collaborator
    //
    //Future reposRemoveCollaborator(String owner, String repo, String username) async
    test('test reposRemoveCollaborator', () async {
      // TODO
    });

    // Remove status check contexts
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
    //
    //Future<List<String>> reposRemoveStatusCheckContexts(String owner, String repo, String branch, { InlineObject70 inlineObject70 }) async
    test('test reposRemoveStatusCheckContexts', () async {
      // TODO
    });

    // Remove status check protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
    //
    //Future reposRemoveStatusCheckProtection(String owner, String repo, String branch) async
    test('test reposRemoveStatusCheckProtection', () async {
      // TODO
    });

    // Remove team access restrictions
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Removes the ability of a team to push to this branch. You can also remove push access for child teams.  | Type    | Description                                                                                                                                         | | ------- | --------------------------------------------------------------------------------------------------------------------------------------------------- | | `array` | Teams that should no longer have push access. Use the team's `slug`. **Note**: The list of users, apps, and teams in total is limited to 100 items. |
    //
    //Future<List<Team>> reposRemoveTeamAccessRestrictions(String owner, String repo, String branch, { InlineObject76 inlineObject76 }) async
    test('test reposRemoveTeamAccessRestrictions', () async {
      // TODO
    });

    // Remove user access restrictions
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Removes the ability of a user to push to this branch.  | Type    | Description                                                                                                                                   | | ------- | --------------------------------------------------------------------------------------------------------------------------------------------- | | `array` | Usernames of the people who should no longer have push access. **Note**: The list of users, apps, and teams in total is limited to 100 items. |
    //
    //Future<List<SimpleUser>> reposRemoveUserAccessRestrictions(String owner, String repo, String branch, { InlineObject79 inlineObject79 }) async
    test('test reposRemoveUserAccessRestrictions', () async {
      // TODO
    });

    // Rename a branch
    //
    // Renames a branch in a repository.  **Note:** Although the API responds immediately, the branch rename process might take some extra time to complete in the background. You won't be able to push to the old branch name while the rename process is in progress. For more information, see \"[Renaming a branch](https://docs.github.com/github/administering-a-repository/renaming-a-branch)\".  The permissions required to use this endpoint depends on whether you are renaming the default branch.  To rename a non-default branch:  * Users must have push access. * GitHub Apps must have the `contents:write` repository permission.  To rename the default branch:  * Users must have admin or owner permissions. * GitHub Apps must have the `administration:write` repository permission.
    //
    //Future<BranchWithProtection> reposRenameBranch(String owner, String repo, String branch, { InlineObject80 inlineObject80 }) async
    test('test reposRenameBranch', () async {
      // TODO
    });

    // Replace all repository topics
    //
    //Future<Topic> reposReplaceAllTopics(String owner, String repo, { InlineObject150 inlineObject150 }) async
    test('test reposReplaceAllTopics', () async {
      // TODO
    });

    // Request a GitHub Pages build
    //
    // You can request that your site be built from the latest revision on the default branch. This has the same effect as pushing a commit to your default branch, but does not require an additional commit. Manually triggering page builds can be helpful when diagnosing build warnings and failures.  Build requests are limited to one concurrent build per repository and one concurrent build per requester. If you request a build while another is still in progress, the second request will be queued until the first completes.
    //
    //Future<PageBuildStatus> reposRequestPagesBuild(String owner, String repo) async
    test('test reposRequestPagesBuild', () async {
      // TODO
    });

    // Set admin branch protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Adding admin enforcement requires admin or owner permissions to the repository and branch protection to be enabled.
    //
    //Future<ProtectedBranchAdminEnforced> reposSetAdminBranchProtection(String owner, String repo, String branch) async
    test('test reposSetAdminBranchProtection', () async {
      // TODO
    });

    // Set app access restrictions
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Replaces the list of apps that have push access to this branch. This removes all apps that previously had push access and grants push access to the new list of apps. Only installed GitHub Apps with `write` access to the `contents` permission can be added as authorized actors on a protected branch.  | Type    | Description                                                                                                                                                | | ------- | ---------------------------------------------------------------------------------------------------------------------------------------------------------- | | `array` | The GitHub Apps that have push access to this branch. Use the app's `slug`. **Note**: The list of users, apps, and teams in total is limited to 100 items. |
    //
    //Future<List<Integration>> reposSetAppAccessRestrictions(String owner, String repo, String branch, { InlineObject71 inlineObject71 }) async
    test('test reposSetAppAccessRestrictions', () async {
      // TODO
    });

    // Set status check contexts
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.
    //
    //Future<List<String>> reposSetStatusCheckContexts(String owner, String repo, String branch, { InlineObject68 inlineObject68 }) async
    test('test reposSetStatusCheckContexts', () async {
      // TODO
    });

    // Set team access restrictions
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Replaces the list of teams that have push access to this branch. This removes all teams that previously had push access and grants push access to the new list of teams. Team restrictions include child teams.  | Type    | Description                                                                                                                                | | ------- | ------------------------------------------------------------------------------------------------------------------------------------------ | | `array` | The teams that can have push access. Use the team's `slug`. **Note**: The list of users, apps, and teams in total is limited to 100 items. |
    //
    //Future<List<Team>> reposSetTeamAccessRestrictions(String owner, String repo, String branch, { InlineObject74 inlineObject74 }) async
    test('test reposSetTeamAccessRestrictions', () async {
      // TODO
    });

    // Set user access restrictions
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Replaces the list of people that have push access to this branch. This removes all people that previously had push access and grants push access to the new list of people.  | Type    | Description                                                                                                                   | | ------- | ----------------------------------------------------------------------------------------------------------------------------- | | `array` | Usernames for people who can have push access. **Note**: The list of users, apps, and teams in total is limited to 100 items. |
    //
    //Future<List<SimpleUser>> reposSetUserAccessRestrictions(String owner, String repo, String branch, { InlineObject77 inlineObject77 }) async
    test('test reposSetUserAccessRestrictions', () async {
      // TODO
    });

    // Test the push repository webhook
    //
    // This will trigger the hook with the latest push to the current repository if the hook is subscribed to `push` events. If the hook is not subscribed to `push` events, the server will respond with 204 but no test POST will be generated.  **Note**: Previously `/repos/:owner/:repo/hooks/:hook_id/test`
    //
    //Future reposTestPushWebhook(String owner, String repo, int hookId) async
    test('test reposTestPushWebhook', () async {
      // TODO
    });

    // Transfer a repository
    //
    // A transfer request will need to be accepted by the new owner when transferring a personal repository to another user. The response will contain the original `owner`, and the transfer will continue asynchronously. For more details on the requirements to transfer personal and organization-owned repositories, see [about repository transfers](https://help.github.com/articles/about-repository-transfers/).
    //
    //Future<Repository> reposTransfer(String owner, String repo, { InlineObject151 inlineObject151 }) async
    test('test reposTransfer', () async {
      // TODO
    });

    // Update a repository
    //
    // **Note**: To edit a repository's topics, use the [Replace all repository topics](https://docs.github.com/rest/reference/repos#replace-all-repository-topics) endpoint.
    //
    //Future<FullRepository> reposUpdate(String owner, String repo, { InlineObject60 inlineObject60 }) async
    test('test reposUpdate', () async {
      // TODO
    });

    // Update branch protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Protecting a branch requires admin or owner permissions to the repository.  **Note**: Passing new arrays of `users` and `teams` replaces their previous values.  **Note**: The list of users, apps, and teams in total is limited to 100 items.
    //
    //Future<ProtectedBranch> reposUpdateBranchProtection(String owner, String repo, String branch, { InlineObject65 inlineObject65 }) async
    test('test reposUpdateBranchProtection', () async {
      // TODO
    });

    // Update a commit comment
    //
    //Future<CommitComment> reposUpdateCommitComment(String owner, String repo, int commentId, { InlineObject86 inlineObject86 }) async
    test('test reposUpdateCommitComment', () async {
      // TODO
    });

    // Update information about a GitHub Pages site
    //
    // Updates information for a GitHub Pages site. For more information, see \"[About GitHub Pages](/github/working-with-github-pages/about-github-pages).
    //
    //Future reposUpdateInformationAboutPagesSite(String owner, String repo, { InlineObject128 inlineObject128 }) async
    test('test reposUpdateInformationAboutPagesSite', () async {
      // TODO
    });

    // Update a repository invitation
    //
    //Future<RepositoryInvitation> reposUpdateInvitation(String owner, String repo, int invitationId, { InlineObject109 inlineObject109 }) async
    test('test reposUpdateInvitation', () async {
      // TODO
    });

    // Update pull request review protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Updating pull request review enforcement requires admin or owner permissions to the repository and branch protection to be enabled.  **Note**: Passing new arrays of `users` and `teams` replaces their previous values.
    //
    //Future<ProtectedBranchPullRequestReview> reposUpdatePullRequestReviewProtection(String owner, String repo, String branch, { InlineObject66 inlineObject66 }) async
    test('test reposUpdatePullRequestReviewProtection', () async {
      // TODO
    });

    // Update a release
    //
    // Users with push access to the repository can edit a release.
    //
    //Future<Release> reposUpdateRelease(String owner, String repo, int releaseId, { InlineObject146 inlineObject146 }) async
    test('test reposUpdateRelease', () async {
      // TODO
    });

    // Update a release asset
    //
    // Users with push access to the repository can edit a release asset.
    //
    //Future<ReleaseAsset> reposUpdateReleaseAsset(String owner, String repo, int assetId, { InlineObject145 inlineObject145 }) async
    test('test reposUpdateReleaseAsset', () async {
      // TODO
    });

    // Update status check protection
    //
    // Protected branches are available in public repositories with GitHub Free and GitHub Free for organizations, and in public and private repositories with GitHub Pro, GitHub Team, GitHub Enterprise Cloud, and GitHub Enterprise Server. For more information, see [GitHub's products](https://help.github.com/github/getting-started-with-github/githubs-products) in the GitHub Help documentation.  Updating required status checks requires admin or owner permissions to the repository and branch protection to be enabled.
    //
    //Future<StatusCheckPolicy> reposUpdateStatusCheckProtection(String owner, String repo, String branch, { InlineObject67 inlineObject67 }) async
    test('test reposUpdateStatusCheckProtection', () async {
      // TODO
    });

    // Update a repository webhook
    //
    // Updates a webhook configured in a repository. If you previously had a `secret` set, you must provide the same `secret` or set a new `secret` or the secret will be removed. If you are only updating individual webhook `config` properties, use \"[Update a webhook configuration for a repository](/rest/reference/repos#update-a-webhook-configuration-for-a-repository).\"
    //
    //Future<Hook> reposUpdateWebhook(String owner, String repo, int hookId, { InlineObject103 inlineObject103 }) async
    test('test reposUpdateWebhook', () async {
      // TODO
    });

    // Update a webhook configuration for a repository
    //
    // Updates the webhook configuration for a repository. To update more information about the webhook, including the `active` state and `events`, use \"[Update a repository webhook](/rest/reference/orgs#update-a-repository-webhook).\"  Access tokens must have the `write:repo_hook` or `repo` scope, and GitHub Apps must have the `repository_hooks:write` permission.
    //
    //Future<WebhookConfig> reposUpdateWebhookConfigForRepo(String owner, String repo, int hookId, { InlineObject104 inlineObject104 }) async
    test('test reposUpdateWebhookConfigForRepo', () async {
      // TODO
    });

    // Upload a release asset
    //
    // This endpoint makes use of [a Hypermedia relation](https://docs.github.com/rest/overview/resources-in-the-rest-api#hypermedia) to determine which URL to access. The endpoint you call to upload release assets is specific to your release. Use the `upload_url` returned in the response of the [Create a release endpoint](https://docs.github.com/rest/reference/repos#create-a-release) to upload a release asset.  You need to use an HTTP client which supports [SNI](http://en.wikipedia.org/wiki/Server_Name_Indication) to make calls to this endpoint.  Most libraries will set the required `Content-Length` header automatically. Use the required `Content-Type` header to provide the media type of the asset. For a list of media types, see [Media Types](https://www.iana.org/assignments/media-types/media-types.xhtml). For example:   `application/zip`  GitHub expects the asset data in its raw binary form, rather than JSON. You will send the raw binary content of the asset as the request body. Everything else about the endpoint is the same as the rest of the API. For example, you'll still need to pass your authentication to be able to upload an asset.  When an upstream failure occurs, you will receive a `502 Bad Gateway` status. This may leave an empty asset with a state of `starter`. It can be safely deleted.  **Notes:** *   GitHub renames asset filenames that have special characters, non-alphanumeric characters, and leading or trailing periods. The \"[List assets for a release](https://docs.github.com/rest/reference/repos#list-assets-for-a-release)\" endpoint lists the renamed filenames. For more information and help, contact [GitHub Support](https://support.github.com/contact). *   If you upload an asset with the same filename as another uploaded asset, you'll receive an error and must delete the old file before you can re-upload the new asset.
    //
    //Future<ReleaseAsset> reposUploadReleaseAsset(String owner, String repo, int releaseId, { String name, String label, String body }) async
    test('test reposUploadReleaseAsset', () async {
      // TODO
    });

  });
}
