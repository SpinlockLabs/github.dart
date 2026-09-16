# GitHub REST API Conformance & Coverage

> Automatically generated from `tool/spec/github-openapi.lock.json` and `tool/spec/bindings.yaml`.

## Summary

| Metric | Count |
| --- | --- |
| Total OpenAPI Operations | 1229 |
| Total Bound Operations | 164 |
| Supported Operations | 164 |
| Partial Operations | 0 |
| Deprecated Operations | 0 |
| Conformance Coverage | 13.3% |

## Coverage by Category (Tags)

| Category | Total | Bound | Supported | Partial | Coverage % |
| --- | --- | --- | --- | --- | --- |
| actions | 189 | 0 | 0 | 0 | 0.0% |
| activity | 34 | 14 | 14 | 0 | 41.2% |
| agent-tasks | 5 | 0 | 0 | 0 | 0.0% |
| agents | 30 | 0 | 0 | 0 | 0.0% |
| apps | 37 | 0 | 0 | 0 | 0.0% |
| billing | 13 | 0 | 0 | 0 | 0.0% |
| campaigns | 5 | 0 | 0 | 0 | 0.0% |
| checks | 12 | 11 | 11 | 0 | 91.7% |
| classroom | 6 | 0 | 0 | 0 | 0.0% |
| code-quality | 4 | 0 | 0 | 0 | 0.0% |
| code-scanning | 25 | 0 | 0 | 0 | 0.0% |
| code-security | 20 | 0 | 0 | 0 | 0.0% |
| codes-of-conduct | 2 | 0 | 0 | 0 | 0.0% |
| codespaces | 48 | 0 | 0 | 0 | 0.0% |
| copilot | 31 | 0 | 0 | 0 | 0.0% |
| copilot-spaces | 28 | 0 | 0 | 0 | 0.0% |
| credentials | 1 | 0 | 0 | 0 | 0.0% |
| dependabot | 25 | 0 | 0 | 0 | 0.0% |
| dependency-graph | 5 | 0 | 0 | 0 | 0.0% |
| emojis | 1 | 0 | 0 | 0 | 0.0% |
| enterprise-team-memberships | 7 | 0 | 0 | 0 | 0.0% |
| enterprise-team-organizations | 6 | 0 | 0 | 0 | 0.0% |
| enterprise-teams | 5 | 0 | 0 | 0 | 0.0% |
| gists | 20 | 18 | 18 | 0 | 90.0% |
| git | 13 | 12 | 12 | 0 | 92.3% |
| gitignore | 2 | 0 | 0 | 0 | 0.0% |
| hosted-compute | 6 | 0 | 0 | 0 | 0.0% |
| interactions | 16 | 0 | 0 | 0 | 0.0% |
| issues | 58 | 22 | 22 | 0 | 37.9% |
| licenses | 3 | 0 | 0 | 0 | 0.0% |
| markdown | 2 | 0 | 0 | 0 | 0.0% |
| meta | 5 | 1 | 1 | 0 | 20.0% |
| migrations | 22 | 0 | 0 | 0 | 0.0% |
| oidc | 8 | 0 | 0 | 0 | 0.0% |
| orgs | 110 | 3 | 3 | 0 | 2.7% |
| packages | 27 | 0 | 0 | 0 | 0.0% |
| private-registries | 6 | 0 | 0 | 0 | 0.0% |
| projects | 26 | 0 | 0 | 0 | 0.0% |
| pulls | 34 | 10 | 10 | 0 | 29.4% |
| rate-limit | 1 | 1 | 1 | 0 | 100.0% |
| reactions | 15 | 0 | 0 | 0 | 0.0% |
| repos | 203 | 45 | 45 | 0 | 22.2% |
| search | 7 | 4 | 4 | 0 | 57.1% |
| secret-scanning | 17 | 0 | 0 | 0 | 0.0% |
| security-advisories | 10 | 0 | 0 | 0 | 0.0% |
| teams | 32 | 9 | 9 | 0 | 28.1% |
| users | 47 | 14 | 14 | 0 | 29.8% |

## Bound Operations

| Operation ID | Method | Path | Service Method | Status | Notes |
| --- | --- | --- | --- | --- | --- |
| `activity/check-repo-is-starred-by-authenticated-user` | `GET` | `/user/starred/{owner}/{repo}` | `ActivityService.isStarred` | supported |  |
| `activity/delete-repo-subscription` | `DELETE` | `/repos/{owner}/{repo}/subscription` | `ActivityService.deleteRepositorySubscription` | supported |  |
| `activity/get-repo-subscription` | `GET` | `/repos/{owner}/{repo}/subscription` | `ActivityService.isWatched` | supported |  |
| `activity/list-events-for-authenticated-user` | `GET` | `/users/{username}/events` | `ActivityService.listUserEvents` | supported |  |
| `activity/list-public-events` | `GET` | `/events` | `ActivityService.listEvents` | supported |  |
| `activity/list-public-events-for-repo-network` | `GET` | `/networks/{owner}/{repo}/events` | `ActivityService.listNetworkEvents` | supported |  |
| `activity/list-public-org-events` | `GET` | `/orgs/{org}/events` | `ActivityService.listOrganizationEvents` | supported |  |
| `activity/list-repo-events` | `GET` | `/repos/{owner}/{repo}/events` | `ActivityService.listRepositoryEvents` | supported |  |
| `activity/list-repos-starred-by-authenticated-user` | `GET` | `/user/starred` | `ActivityService.listStarredRepositories` | supported |  |
| `activity/list-stargazers-for-repo` | `GET` | `/repos/{owner}/{repo}/stargazers` | `ActivityService.listStarGazers` | supported |  |
| `activity/list-watchers-for-repo` | `GET` | `/repos/{owner}/{repo}/subscribers` | `ActivityService.listWatches` | supported |  |
| `activity/set-repo-subscription` | `PUT` | `/repos/{owner}/{repo}/subscription` | `ActivityService.setRepositorySubscription` | supported |  |
| `activity/star-repo-for-authenticated-user` | `PUT` | `/user/starred/{owner}/{repo}` | `ActivityService.star` | supported |  |
| `activity/unstar-repo-for-authenticated-user` | `DELETE` | `/user/starred/{owner}/{repo}` | `ActivityService.unstar` | supported |  |
| `checks/create` | `POST` | `/repos/{owner}/{repo}/check-runs` | `ChecksService.createCheckRun` | supported |  |
| `checks/create-suite` | `POST` | `/repos/{owner}/{repo}/check-suites` | `ChecksService.createCheckSuite` | supported |  |
| `checks/get` | `GET` | `/repos/{owner}/{repo}/check-runs/{check_run_id}` | `ChecksService.getCheckRun` | supported |  |
| `checks/get-suite` | `GET` | `/repos/{owner}/{repo}/check-suites/{check_suite_id}` | `ChecksService.getCheckSuite` | supported |  |
| `checks/list-annotations` | `GET` | `/repos/{owner}/{repo}/check-runs/{check_run_id}/annotations` | `ChecksService.listCheckRunAnnotations` | supported |  |
| `checks/list-for-ref` | `GET` | `/repos/{owner}/{repo}/commits/{ref}/check-runs` | `ChecksService.listCheckRunsForRef` | supported |  |
| `checks/list-for-suite` | `GET` | `/repos/{owner}/{repo}/check-suites/{check_suite_id}/check-runs` | `ChecksService.listCheckRunsInCheckSuite` | supported |  |
| `checks/rerequest-run` | `POST` | `/repos/{owner}/{repo}/check-runs/{check_run_id}/rerequest` | `ChecksService.reRequestCheckRun` | supported |  |
| `checks/rerequest-suite` | `POST` | `/repos/{owner}/{repo}/check-suites/{check_suite_id}/rerequest` | `ChecksService.reRequestCheckSuite` | supported |  |
| `checks/set-suites-preferences` | `PATCH` | `/repos/{owner}/{repo}/check-suites/preferences` | `ChecksService.updatePreferencesForCheckSuites` | supported |  |
| `checks/update` | `PATCH` | `/repos/{owner}/{repo}/check-runs/{check_run_id}` | `ChecksService.updateCheckRun` | supported |  |
| `gists/check-is-starred` | `GET` | `/gists/{gist_id}/star` | `GistsService.isGistStarred` | supported |  |
| `gists/create` | `POST` | `/gists` | `GistsService.createGist` | supported |  |
| `gists/create-comment` | `POST` | `/gists/{gist_id}/comments` | `GistsService.createComment` | supported |  |
| `gists/delete` | `DELETE` | `/gists/{gist_id}` | `GistsService.deleteGist` | supported |  |
| `gists/delete-comment` | `DELETE` | `/gists/{gist_id}/comments/{comment_id}` | `GistsService.deleteComment` | supported |  |
| `gists/fork` | `POST` | `/gists/{gist_id}/forks` | `GistsService.forkGist` | supported |  |
| `gists/get` | `GET` | `/gists/{gist_id}` | `GistsService.getGist` | supported |  |
| `gists/get-comment` | `GET` | `/gists/{gist_id}/comments/{comment_id}` | `GistsService.getComment` | supported |  |
| `gists/list` | `GET` | `/gists` | `GistsService.listGists` | supported |  |
| `gists/list-comments` | `GET` | `/gists/{gist_id}/comments` | `GistsService.listComments` | supported |  |
| `gists/list-for-user` | `GET` | `/users/{username}/gists` | `GistsService.listUserGists` | supported |  |
| `gists/list-forks` | `GET` | `/gists/{gist_id}/forks` | `GistsService.listGistForks` | supported |  |
| `gists/list-public` | `GET` | `/gists/public` | `GistsService.listPublicGists` | supported |  |
| `gists/list-starred` | `GET` | `/gists/starred` | `GistsService.listStarredGists` | supported |  |
| `gists/star` | `PUT` | `/gists/{gist_id}/star` | `GistsService.starGist` | supported |  |
| `gists/unstar` | `DELETE` | `/gists/{gist_id}/star` | `GistsService.unstarGist` | supported |  |
| `gists/update` | `PATCH` | `/gists/{gist_id}` | `GistsService.editGist` | supported |  |
| `gists/update-comment` | `PATCH` | `/gists/{gist_id}/comments/{comment_id}` | `GistsService.editComment` | supported |  |
| `git/create-blob` | `POST` | `/repos/{owner}/{repo}/git/blobs` | `GitService.createBlob` | supported |  |
| `git/create-commit` | `POST` | `/repos/{owner}/{repo}/git/commits` | `GitService.createCommit` | supported |  |
| `git/create-ref` | `POST` | `/repos/{owner}/{repo}/git/refs` | `GitService.createReference` | supported |  |
| `git/create-tag` | `POST` | `/repos/{owner}/{repo}/git/tags` | `GitService.createTag` | supported |  |
| `git/create-tree` | `POST` | `/repos/{owner}/{repo}/git/trees` | `GitService.createTree` | supported |  |
| `git/delete-ref` | `DELETE` | `/repos/{owner}/{repo}/git/refs/{ref}` | `GitService.deleteReference` | supported |  |
| `git/get-blob` | `GET` | `/repos/{owner}/{repo}/git/blobs/{file_sha}` | `GitService.getBlob` | supported |  |
| `git/get-commit` | `GET` | `/repos/{owner}/{repo}/git/commits/{commit_sha}` | `GitService.getCommit` | supported |  |
| `git/get-ref` | `GET` | `/repos/{owner}/{repo}/git/ref/{ref}` | `GitService.getReference` | supported |  |
| `git/get-tag` | `GET` | `/repos/{owner}/{repo}/git/tags/{tag_sha}` | `GitService.getTag` | supported |  |
| `git/get-tree` | `GET` | `/repos/{owner}/{repo}/git/trees/{tree_sha}` | `GitService.getTree` | supported |  |
| `git/update-ref` | `PATCH` | `/repos/{owner}/{repo}/git/refs/{ref}` | `GitService.editReference` | supported |  |
| `issues/create` | `POST` | `/repos/{owner}/{repo}/issues` | `IssuesService.create` | supported |  |
| `issues/create-comment` | `POST` | `/repos/{owner}/{repo}/issues/{issue_number}/comments` | `IssuesService.createComment` | supported |  |
| `issues/create-label` | `POST` | `/repos/{owner}/{repo}/labels` | `IssuesService.createLabel` | supported |  |
| `issues/create-milestone` | `POST` | `/repos/{owner}/{repo}/milestones` | `IssuesService.createMilestone` | supported |  |
| `issues/delete-comment` | `DELETE` | `/repos/{owner}/{repo}/issues/comments/{comment_id}` | `IssuesService.deleteComment` | supported |  |
| `issues/delete-label` | `DELETE` | `/repos/{owner}/{repo}/labels/{name}` | `IssuesService.deleteLabel` | supported |  |
| `issues/delete-milestone` | `DELETE` | `/repos/{owner}/{repo}/milestones/{milestone_number}` | `IssuesService.deleteMilestone` | supported |  |
| `issues/get` | `GET` | `/repos/{owner}/{repo}/issues/{issue_number}` | `IssuesService.get` | supported |  |
| `issues/get-comment` | `GET` | `/repos/{owner}/{repo}/issues/comments/{comment_id}` | `IssuesService.getComment` | supported |  |
| `issues/get-label` | `GET` | `/repos/{owner}/{repo}/labels/{name}` | `IssuesService.getLabel` | supported |  |
| `issues/get-milestone` | `GET` | `/repos/{owner}/{repo}/milestones/{milestone_number}` | `IssuesService.getMilestone` | supported |  |
| `issues/list` | `GET` | `/issues` | `IssuesService.listAll` | supported |  |
| `issues/list-comments` | `GET` | `/repos/{owner}/{repo}/issues/{issue_number}/comments` | `IssuesService.listCommentsByIssue` | supported |  |
| `issues/list-for-authenticated-user` | `GET` | `/user/issues` | `IssuesService.listByUser` | supported |  |
| `issues/list-for-org` | `GET` | `/orgs/{org}/issues` | `IssuesService.listByOrg` | supported |  |
| `issues/list-for-repo` | `GET` | `/repos/{owner}/{repo}/issues` | `IssuesService.listByRepo` | supported |  |
| `issues/list-labels-for-repo` | `GET` | `/repos/{owner}/{repo}/labels` | `IssuesService.listLabels` | supported |  |
| `issues/list-milestones` | `GET` | `/repos/{owner}/{repo}/milestones` | `IssuesService.listMilestones` | supported |  |
| `issues/update` | `PATCH` | `/repos/{owner}/{repo}/issues/{issue_number}` | `IssuesService.edit` | supported |  |
| `issues/update-comment` | `PATCH` | `/repos/{owner}/{repo}/issues/comments/{comment_id}` | `IssuesService.editComment` | supported |  |
| `issues/update-label` | `PATCH` | `/repos/{owner}/{repo}/labels/{name}` | `IssuesService.editLabel` | supported |  |
| `issues/update-milestone` | `PATCH` | `/repos/{owner}/{repo}/milestones/{milestone_number}` | `IssuesService.editMilestone` | supported |  |
| `meta/get-zen` | `GET` | `/zen` | `MiscService.getZen` | supported |  |
| `orgs/get` | `GET` | `/orgs/{org}` | `OrganizationsService.get` | supported |  |
| `orgs/list` | `GET` | `/organizations` | `OrganizationsService.list` | supported |  |
| `orgs/update` | `PATCH` | `/orgs/{org}` | `OrganizationsService.edit` | supported |  |
| `pulls/create` | `POST` | `/repos/{owner}/{repo}/pulls` | `PullRequestsService.create` | supported |  |
| `pulls/create-review` | `POST` | `/repos/{owner}/{repo}/pulls/{pull_number}/reviews` | `PullRequestsService.createReview` | supported |  |
| `pulls/get` | `GET` | `/repos/{owner}/{repo}/pulls/{pull_number}` | `PullRequestsService.get` | supported |  |
| `pulls/list` | `GET` | `/repos/{owner}/{repo}/pulls` | `PullRequestsService.list` | supported |  |
| `pulls/list-commits` | `GET` | `/repos/{owner}/{repo}/pulls/{pull_number}/commits` | `PullRequestsService.listCommits` | supported |  |
| `pulls/list-files` | `GET` | `/repos/{owner}/{repo}/pulls/{pull_number}/files` | `PullRequestsService.listFiles` | supported |  |
| `pulls/list-review-comments` | `GET` | `/repos/{owner}/{repo}/pulls/{pull_number}/comments` | `PullRequestsService.listComments` | supported |  |
| `pulls/list-reviews` | `GET` | `/repos/{owner}/{repo}/pulls/{pull_number}/reviews` | `PullRequestsService.listReviews` | supported |  |
| `pulls/merge` | `PUT` | `/repos/{owner}/{repo}/pulls/{pull_number}/merge` | `PullRequestsService.merge` | supported |  |
| `pulls/update` | `PATCH` | `/repos/{owner}/{repo}/pulls/{pull_number}` | `PullRequestsService.edit` | supported |  |
| `rate-limit/get` | `GET` | `/rate_limit` | `MiscService.getRateLimit` | supported |  |
| `repos/add-collaborator` | `PUT` | `/repos/{owner}/{repo}/collaborators/{username}` | `RepositoriesService.addCollaborator` | supported |  |
| `repos/check-collaborator` | `GET` | `/repos/{owner}/{repo}/collaborators/{username}` | `RepositoriesService.isCollaborator` | supported |  |
| `repos/create-deploy-key` | `POST` | `/repos/{owner}/{repo}/keys` | `RepositoriesService.createDeployKey` | supported |  |
| `repos/create-dispatch-event` | `POST` | `/repos/{owner}/{repo}/dispatches` | `RepositoriesService.createDispatchEvent` | supported |  |
| `repos/create-for-authenticated-user` | `POST` | `/user/repos` | `RepositoriesService.createRepository` | supported |  |
| `repos/create-in-org` | `POST` | `/orgs/{org}/repos` | `RepositoriesService.createOrganizationRepository` | supported |  |
| `repos/create-or-update-file-contents` | `PUT` | `/repos/{owner}/{repo}/contents/{path}` | `RepositoriesService.createFile` | supported |  |
| `repos/create-release` | `POST` | `/repos/{owner}/{repo}/releases` | `RepositoriesService.createRelease` | supported |  |
| `repos/create-webhook` | `POST` | `/repos/{owner}/{repo}/hooks` | `RepositoriesService.createHook` | supported |  |
| `repos/delete` | `DELETE` | `/repos/{owner}/{repo}` | `RepositoriesService.deleteRepository` | supported |  |
| `repos/delete-deploy-key` | `DELETE` | `/repos/{owner}/{repo}/keys/{key_id}` | `RepositoriesService.deleteDeployKey` | supported |  |
| `repos/delete-file` | `DELETE` | `/repos/{owner}/{repo}/contents/{path}` | `RepositoriesService.deleteFile` | supported |  |
| `repos/delete-release` | `DELETE` | `/repos/{owner}/{repo}/releases/{release_id}` | `RepositoriesService.deleteRelease` | supported |  |
| `repos/delete-release-asset` | `DELETE` | `/repos/{owner}/{repo}/releases/assets/{asset_id}` | `RepositoriesService.deleteReleaseAsset` | supported |  |
| `repos/delete-webhook` | `DELETE` | `/repos/{owner}/{repo}/hooks/{hook_id}` | `RepositoriesService.deleteHook` | supported |  |
| `repos/get` | `GET` | `/repos/{owner}/{repo}` | `RepositoriesService.getRepository` | supported |  |
| `repos/get-all-topics` | `GET` | `/repos/{owner}/{repo}/topics` | `RepositoriesService.listTopics` | supported |  |
| `repos/get-branch` | `GET` | `/repos/{owner}/{repo}/branches/{branch}` | `RepositoriesService.getBranch` | supported |  |
| `repos/get-content` | `GET` | `/repos/{owner}/{repo}/contents/{path}` | `RepositoriesService.getContents` | supported |  |
| `repos/get-deploy-key` | `GET` | `/repos/{owner}/{repo}/keys/{key_id}` | `RepositoriesService.getDeployKey` | supported |  |
| `repos/get-latest-release` | `GET` | `/repos/{owner}/{repo}/releases/latest` | `RepositoriesService.getLatestRelease` | supported |  |
| `repos/get-readme` | `GET` | `/repos/{owner}/{repo}/readme` | `RepositoriesService.getReadme` | supported |  |
| `repos/get-release` | `GET` | `/repos/{owner}/{repo}/releases/{release_id}` | `RepositoriesService.getReleaseById` | supported |  |
| `repos/get-release-asset` | `GET` | `/repos/{owner}/{repo}/releases/assets/{asset_id}` | `RepositoriesService.getReleaseAsset` | supported |  |
| `repos/get-release-by-tag` | `GET` | `/repos/{owner}/{repo}/releases/tags/{tag}` | `RepositoriesService.getReleaseByTagName` | supported |  |
| `repos/get-webhook` | `GET` | `/repos/{owner}/{repo}/hooks/{hook_id}` | `RepositoriesService.getHook` | supported |  |
| `repos/list-branches` | `GET` | `/repos/{owner}/{repo}/branches` | `RepositoriesService.listBranches` | supported |  |
| `repos/list-collaborators` | `GET` | `/repos/{owner}/{repo}/collaborators` | `RepositoriesService.listCollaborators` | supported |  |
| `repos/list-contributors` | `GET` | `/repos/{owner}/{repo}/contributors` | `RepositoriesService.listContributors` | supported |  |
| `repos/list-deploy-keys` | `GET` | `/repos/{owner}/{repo}/keys` | `RepositoriesService.listDeployKeys` | supported |  |
| `repos/list-for-authenticated-user` | `GET` | `/user/repos` | `RepositoriesService.listRepositories` | supported |  |
| `repos/list-for-org` | `GET` | `/orgs/{org}/repos` | `RepositoriesService.listOrganizationRepositories` | supported |  |
| `repos/list-for-user` | `GET` | `/users/{username}/repos` | `RepositoriesService.listUserRepositories` | supported |  |
| `repos/list-public` | `GET` | `/repositories` | `RepositoriesService.listPublicRepositories` | supported |  |
| `repos/list-release-assets` | `GET` | `/repos/{owner}/{repo}/releases/{release_id}/assets` | `RepositoriesService.listReleaseAssets` | supported |  |
| `repos/list-releases` | `GET` | `/repos/{owner}/{repo}/releases` | `RepositoriesService.listReleases` | supported |  |
| `repos/list-tags` | `GET` | `/repos/{owner}/{repo}/tags` | `RepositoriesService.listTags` | supported |  |
| `repos/list-webhooks` | `GET` | `/repos/{owner}/{repo}/hooks` | `RepositoriesService.listHooks` | supported |  |
| `repos/remove-collaborator` | `DELETE` | `/repos/{owner}/{repo}/collaborators/{username}` | `RepositoriesService.removeCollaborator` | supported |  |
| `repos/replace-all-topics` | `PUT` | `/repos/{owner}/{repo}/topics` | `RepositoriesService.replaceTopics` | supported |  |
| `repos/update` | `PATCH` | `/repos/{owner}/{repo}` | `RepositoriesService.editRepository` | supported |  |
| `repos/update-release` | `PATCH` | `/repos/{owner}/{repo}/releases/{release_id}` | `RepositoriesService.editRelease` | supported |  |
| `repos/update-release-asset` | `PATCH` | `/repos/{owner}/{repo}/releases/assets/{asset_id}` | `RepositoriesService.editReleaseAsset` | supported |  |
| `repos/update-webhook` | `PATCH` | `/repos/{owner}/{repo}/hooks/{hook_id}` | `RepositoriesService.editHook` | supported |  |
| `repos/upload-release-asset` | `POST` | `/repos/{owner}/{repo}/releases/{release_id}/assets` | `RepositoriesService.uploadReleaseAssets` | supported |  |
| `search/code` | `GET` | `/search/code` | `SearchService.code` | supported |  |
| `search/issues-and-pull-requests` | `GET` | `/search/issues` | `SearchService.issues` | supported |  |
| `search/repos` | `GET` | `/search/repositories` | `SearchService.repositories` | supported |  |
| `search/users` | `GET` | `/search/users` | `SearchService.users` | supported |  |
| `teams/add-or-update-membership-for-user-in-org` | `PUT` | `/orgs/{org}/teams/{team_slug}/memberships/{username}` | `OrganizationsService.addOrUpdateTeamMembershipByName` | supported |  |
| `teams/delete-in-org` | `DELETE` | `/orgs/{org}/teams/{team_slug}` | `OrganizationsService.deleteTeam` | supported |  |
| `teams/get-by-name` | `GET` | `/orgs/{org}/teams/{team_slug}` | `OrganizationsService.getTeam` | supported |  |
| `teams/get-membership-for-user-in-org` | `GET` | `/orgs/{org}/teams/{team_slug}/memberships/{username}` | `OrganizationsService.getTeamMembershipByName` | supported |  |
| `teams/list` | `GET` | `/orgs/{org}/teams` | `OrganizationsService.listTeams` | supported |  |
| `teams/list-members-in-org` | `GET` | `/orgs/{org}/teams/{team_slug}/members` | `OrganizationsService.listTeamMembers` | supported |  |
| `teams/list-repos-in-org` | `GET` | `/orgs/{org}/teams/{team_slug}/repos` | `OrganizationsService.listTeamRepos` | supported |  |
| `teams/remove-membership-for-user-in-org` | `DELETE` | `/orgs/{org}/teams/{team_slug}/memberships/{username}` | `OrganizationsService.removeTeamMembershipByName` | supported |  |
| `teams/update-in-org` | `PATCH` | `/orgs/{org}/teams/{team_slug}` | `OrganizationsService.editTeam` | supported |  |
| `users/add-email-for-authenticated-user` | `POST` | `/user/emails` | `UsersService.addEmails` | supported |  |
| `users/check-following-for-user` | `GET` | `/users/{username}/following/{target_user}` | `UsersService.isFollowingUser` | supported |  |
| `users/create-public-ssh-key-for-authenticated-user` | `POST` | `/user/keys` | `UsersService.createPublicKey` | supported |  |
| `users/delete-email-for-authenticated-user` | `DELETE` | `/user/emails` | `UsersService.deleteEmails` | supported |  |
| `users/delete-public-ssh-key-for-authenticated-user` | `DELETE` | `/user/keys/{key_id}` | `UsersService.deletePublicKey` | supported |  |
| `users/follow` | `PUT` | `/user/following/{username}` | `UsersService.followUser` | supported |  |
| `users/get-authenticated` | `GET` | `/user` | `UsersService.getCurrentUser` | supported |  |
| `users/get-by-username` | `GET` | `/users/{username}` | `UsersService.getUser` | supported |  |
| `users/list` | `GET` | `/users` | `UsersService.listUsers` | supported |  |
| `users/list-emails-for-authenticated-user` | `GET` | `/user/emails` | `UsersService.listEmails` | supported |  |
| `users/list-gpg-keys-for-authenticated-user` | `GET` | `/user/gpg_keys` | `UsersService.listGpgKeys` | supported |  |
| `users/list-public-ssh-keys-for-authenticated-user` | `GET` | `/user/keys` | `UsersService.listPublicKeys` | supported |  |
| `users/unfollow` | `DELETE` | `/user/following/{username}` | `UsersService.unfollowUser` | supported |  |
| `users/update-authenticated` | `PATCH` | `/user` | `UsersService.editCurrentUser` | supported |  |
