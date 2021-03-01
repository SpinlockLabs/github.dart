//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.0

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: lines_longer_than_80_chars

import 'package:github/api.dart';
import 'package:test/test.dart';


/// tests for MigrationsApi
void main() {
  final instance = MigrationsApi();

  group('tests for MigrationsApi', () {
    // Cancel an import
    //
    // Stop an import for a repository.
    //
    //Future migrationsCancelImport(String owner, String repo) async
    test('test migrationsCancelImport', () async {
      // TODO
    });

    // Delete a user migration archive
    //
    // Deletes a previous migration archive. Downloadable migration archives are automatically deleted after seven days. Migration metadata, which is returned in the [List user migrations](https://docs.github.com/rest/reference/migrations#list-user-migrations) and [Get a user migration status](https://docs.github.com/rest/reference/migrations#get-a-user-migration-status) endpoints, will continue to be available even after an archive is deleted.
    //
    //Future migrationsDeleteArchiveForAuthenticatedUser(int migrationId) async
    test('test migrationsDeleteArchiveForAuthenticatedUser', () async {
      // TODO
    });

    // Delete an organization migration archive
    //
    // Deletes a previous migration archive. Migration archives are automatically deleted after seven days.
    //
    //Future migrationsDeleteArchiveForOrg(String org, int migrationId) async
    test('test migrationsDeleteArchiveForOrg', () async {
      // TODO
    });

    // Download an organization migration archive
    //
    // Fetches the URL to a migration archive.
    //
    //Future migrationsDownloadArchiveForOrg(String org, int migrationId) async
    test('test migrationsDownloadArchiveForOrg', () async {
      // TODO
    });

    // Download a user migration archive
    //
    // Fetches the URL to download the migration archive as a `tar.gz` file. Depending on the resources your repository uses, the migration archive can contain JSON files with data for these objects:  *   attachments *   bases *   commit\\_comments *   issue\\_comments *   issue\\_events *   issues *   milestones *   organizations *   projects *   protected\\_branches *   pull\\_request\\_reviews *   pull\\_requests *   releases *   repositories *   review\\_comments *   schema *   users  The archive will also contain an `attachments` directory that includes all attachment files uploaded to GitHub.com and a `repositories` directory that contains the repository's Git data.
    //
    //Future migrationsGetArchiveForAuthenticatedUser(int migrationId) async
    test('test migrationsGetArchiveForAuthenticatedUser', () async {
      // TODO
    });

    // Get commit authors
    //
    // Each type of source control system represents authors in a different way. For example, a Git commit author has a display name and an email address, but a Subversion commit author just has a username. The GitHub Importer will make the author information valid, but the author might not be correct. For example, it will change the bare Subversion username `hubot` into something like `hubot <hubot@12341234-abab-fefe-8787-fedcba987654>`.  This endpoint and the [Map a commit author](https://docs.github.com/rest/reference/migrations#map-a-commit-author) endpoint allow you to provide correct Git author information.
    //
    //Future<List<PorterAuthor>> migrationsGetCommitAuthors(String owner, String repo, { int since }) async
    test('test migrationsGetCommitAuthors', () async {
      // TODO
    });

    // Get an import status
    //
    // View the progress of an import.  **Import status**  This section includes details about the possible values of the `status` field of the Import Progress response.  An import that does not have errors will progress through these steps:  *   `detecting` - the \"detection\" step of the import is in progress because the request did not include a `vcs` parameter. The import is identifying the type of source control present at the URL. *   `importing` - the \"raw\" step of the import is in progress. This is where commit data is fetched from the original repository. The import progress response will include `commit_count` (the total number of raw commits that will be imported) and `percent` (0 - 100, the current progress through the import). *   `mapping` - the \"rewrite\" step of the import is in progress. This is where SVN branches are converted to Git branches, and where author updates are applied. The import progress response does not include progress information. *   `pushing` - the \"push\" step of the import is in progress. This is where the importer updates the repository on GitHub. The import progress response will include `push_percent`, which is the percent value reported by `git push` when it is \"Writing objects\". *   `complete` - the import is complete, and the repository is ready on GitHub.  If there are problems, you will see one of these in the `status` field:  *   `auth_failed` - the import requires authentication in order to connect to the original repository. To update authentication for the import, please see the [Update an import](https://docs.github.com/rest/reference/migrations#update-an-import) section. *   `error` - the import encountered an error. The import progress response will include the `failed_step` and an error message. Contact [GitHub Support](https://support.github.com/contact) or [GitHub Premium Support](https://premium.githubsupport.com) for more information. *   `detection_needs_auth` - the importer requires authentication for the originating repository to continue detection. To update authentication for the import, please see the [Update an import](https://docs.github.com/rest/reference/migrations#update-an-import) section. *   `detection_found_nothing` - the importer didn't recognize any source control at the URL. To resolve, [Cancel the import](https://docs.github.com/rest/reference/migrations#cancel-an-import) and [retry](https://docs.github.com/rest/reference/migrations#start-an-import) with the correct URL. *   `detection_found_multiple` - the importer found several projects or repositories at the provided URL. When this is the case, the Import Progress response will also include a `project_choices` field with the possible project choices as values. To update project choice, please see the [Update an import](https://docs.github.com/rest/reference/migrations#update-an-import) section.  **The project_choices field**  When multiple projects are found at the provided URL, the response hash will include a `project_choices` field, the value of which is an array of hashes each representing a project choice. The exact key/value pairs of the project hashes will differ depending on the version control type.  **Git LFS related fields**  This section includes details about Git LFS related fields that may be present in the Import Progress response.  *   `use_lfs` - describes whether the import has been opted in or out of using Git LFS. The value can be `opt_in`, `opt_out`, or `undecided` if no action has been taken. *   `has_large_files` - the boolean value describing whether files larger than 100MB were found during the `importing` step. *   `large_files_size` - the total size in gigabytes of files larger than 100MB found in the originating repository. *   `large_files_count` - the total number of files larger than 100MB found in the originating repository. To see a list of these files, make a \"Get Large Files\" request.
    //
    //Future<ModelImport> migrationsGetImportStatus(String owner, String repo) async
    test('test migrationsGetImportStatus', () async {
      // TODO
    });

    // Get large files
    //
    // List files larger than 100MB found during the import
    //
    //Future<List<PorterLargeFile>> migrationsGetLargeFiles(String owner, String repo) async
    test('test migrationsGetLargeFiles', () async {
      // TODO
    });

    // Get a user migration status
    //
    // Fetches a single user migration. The response includes the `state` of the migration, which can be one of the following values:  *   `pending` - the migration hasn't started yet. *   `exporting` - the migration is in progress. *   `exported` - the migration finished successfully. *   `failed` - the migration failed.  Once the migration has been `exported` you can [download the migration archive](https://docs.github.com/rest/reference/migrations#download-a-user-migration-archive).
    //
    //Future<Migration> migrationsGetStatusForAuthenticatedUser(int migrationId, { List<String> exclude }) async
    test('test migrationsGetStatusForAuthenticatedUser', () async {
      // TODO
    });

    // Get an organization migration status
    //
    // Fetches the status of a migration.  The `state` of a migration can be one of the following values:  *   `pending`, which means the migration hasn't started yet. *   `exporting`, which means the migration is in progress. *   `exported`, which means the migration finished successfully. *   `failed`, which means the migration failed.
    //
    //Future<Migration> migrationsGetStatusForOrg(String org, int migrationId) async
    test('test migrationsGetStatusForOrg', () async {
      // TODO
    });

    // List user migrations
    //
    // Lists all migrations a user has started.
    //
    //Future<List<Migration>> migrationsListForAuthenticatedUser({ int perPage, int page }) async
    test('test migrationsListForAuthenticatedUser', () async {
      // TODO
    });

    // List organization migrations
    //
    // Lists the most recent migrations.
    //
    //Future<List<Migration>> migrationsListForOrg(String org, { int perPage, int page }) async
    test('test migrationsListForOrg', () async {
      // TODO
    });

    // List repositories in an organization migration
    //
    // List all the repositories for this organization migration.
    //
    //Future<List<MinimalRepository>> migrationsListReposForOrg(String org, int migrationId, { int perPage, int page }) async
    test('test migrationsListReposForOrg', () async {
      // TODO
    });

    // List repositories for a user migration
    //
    // Lists all the repositories for this user migration.
    //
    //Future<List<MinimalRepository>> migrationsListReposForUser(int migrationId, { int perPage, int page }) async
    test('test migrationsListReposForUser', () async {
      // TODO
    });

    // Map a commit author
    //
    // Update an author's identity for the import. Your application can continue updating authors any time before you push new commits to the repository.
    //
    //Future<PorterAuthor> migrationsMapCommitAuthor(String owner, String repo, int authorId, { InlineObject107 inlineObject107 }) async
    test('test migrationsMapCommitAuthor', () async {
      // TODO
    });

    // Update Git LFS preference
    //
    // You can import repositories from Subversion, Mercurial, and TFS that include files larger than 100MB. This ability is powered by [Git LFS](https://git-lfs.github.com). You can learn more about our LFS feature and working with large files [on our help site](https://help.github.com/articles/versioning-large-files/).
    //
    //Future<ModelImport> migrationsSetLfsPreference(String owner, String repo, { InlineObject108 inlineObject108 }) async
    test('test migrationsSetLfsPreference', () async {
      // TODO
    });

    // Start a user migration
    //
    // Initiates the generation of a user migration archive.
    //
    //Future<Migration> migrationsStartForAuthenticatedUser({ InlineObject179 inlineObject179 }) async
    test('test migrationsStartForAuthenticatedUser', () async {
      // TODO
    });

    // Start an organization migration
    //
    // Initiates the generation of a migration archive.
    //
    //Future<Migration> migrationsStartForOrg(String org, { InlineObject38 inlineObject38 }) async
    test('test migrationsStartForOrg', () async {
      // TODO
    });

    // Start an import
    //
    // Start a source import to a GitHub repository using GitHub Importer.
    //
    //Future<ModelImport> migrationsStartImport(String owner, String repo, { InlineObject105 inlineObject105 }) async
    test('test migrationsStartImport', () async {
      // TODO
    });

    // Unlock a user repository
    //
    // Unlocks a repository. You can lock repositories when you [start a user migration](https://docs.github.com/rest/reference/migrations#start-a-user-migration). Once the migration is complete you can unlock each repository to begin using it again or [delete the repository](https://docs.github.com/rest/reference/repos#delete-a-repository) if you no longer need the source data. Returns a status of `404 Not Found` if the repository is not locked.
    //
    //Future migrationsUnlockRepoForAuthenticatedUser(int migrationId, String repoName) async
    test('test migrationsUnlockRepoForAuthenticatedUser', () async {
      // TODO
    });

    // Unlock an organization repository
    //
    // Unlocks a repository that was locked for migration. You should unlock each migrated repository and [delete them](https://docs.github.com/rest/reference/repos#delete-a-repository) when the migration is complete and you no longer need the source data.
    //
    //Future migrationsUnlockRepoForOrg(String org, int migrationId, String repoName) async
    test('test migrationsUnlockRepoForOrg', () async {
      // TODO
    });

    // Update an import
    //
    // An import can be updated with credentials or a project choice by passing in the appropriate parameters in this API request. If no parameters are provided, the import will be restarted.
    //
    //Future<ModelImport> migrationsUpdateImport(String owner, String repo, { InlineObject106 inlineObject106 }) async
    test('test migrationsUpdateImport', () async {
      // TODO
    });

  });
}
