## 9.15.0

* Implement IssuesService.lock/unlock by @Hixie in https://github.com/SpinlockLabs/github.dart/pull/376
* Bump JamesIves/github-pages-deploy-action from 4.4.1 to 4.4.2 by @dependabot in https://github.com/SpinlockLabs/github.dart/pull/371
* Make GitHub.auth non-nullable by @CaseyHillers in https://github.com/SpinlockLabs/github.dart/pull/377


**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.14.0...9.15.0

## 9.14.0

* Add optional filter params on Repositories.listCommits by @CaseyHillers in https://github.com/SpinlockLabs/github.dart/pull/368


**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.13.0...9.14.0

## 9.13.0

* Add node_id to the pull request model by @ricardoamador in https://github.com/SpinlockLabs/github.dart/pull/367


**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.12.0...9.13.0

## 9.12.0

* Add support for issue and PR timeline events via `Issue.listTimeline`.

## 9.11.0

* expose IssueLabel.description; update labels REST APIs by @devoncarew in https://github.com/SpinlockLabs/github.dart/pull/355

## 9.10.1

* Pass required User-Agent HTTP header on all requests
  * If `Authentication.basic` is used, it will be your GitHub username/application
  * Otherwise, it will default to `github.dart`

## 9.10.0-dev

* Require Dart 2.18
* Expose `CheckSuitesService` and `ChuckRunsService` classes.

## 9.9.0

* Add "author_association" field to the IssueComment object by @ricardoamador in https://github.com/SpinlockLabs/github.dart/pull/348

**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.8.0...9.9.0

## 9.8.0

* Add "head_branch" field to CheckSuite object by @nehalvpatel in https://github.com/SpinlockLabs/github.dart/pull/347

## New Contributors
* @nehalvpatel made their first contribution in https://github.com/SpinlockLabs/github.dart/pull/347

**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.7.0...9.8.0

## 9.7.0
* Add calendar versioning by @CaseyHillers in https://github.com/SpinlockLabs/github.dart/pull/338

**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.6.0...9.7.0
## 9.6.0

* Require Dart 2.17
* Update to allow different merge methods in pulls_service by @ricardoamador in https://github.com/SpinlockLabs/github.dart/pull/333


**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.5.1...9.6.0

## 9.5.1

* Fix up unit tests & run them in CI by @robrbecker in https://github.com/SpinlockLabs/github.dart/pull/336

**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.5.0...9.5.1

## 9.5.0

* Add 'commits' member to GitHubComparison object by @fuzzybinary in https://github.com/SpinlockLabs/github.dart/pull/330

## New Contributors
* @fuzzybinary made their first contribution in https://github.com/SpinlockLabs/github.dart/pull/330

**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.4.1...9.5.0

## 9.4.1

* Update to github-script 6 by @robbecker-wf in https://github.com/SpinlockLabs/github.dart/pull/331


**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.4.0...9.4.1

## 9.4.0

* Fix publish release workflow by @CaseyHillers in https://github.com/SpinlockLabs/github.dart/pull/316
* Add support for toString to the Checkrun object. by @ricardoamador in https://github.com/SpinlockLabs/github.dart/pull/318


**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.3.0...9.4.0

## 9.3.0

* Added a new conclusion state to support flutter autosubmit bot by @ricardoamador in https://github.com/SpinlockLabs/github.dart/pull/315

## New Contributors
* @ricardoamador made their first contribution in https://github.com/SpinlockLabs/github.dart/pull/315

**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.2.0...9.3.0

## 9.2.0

* test auto-release by @robrbecker in https://github.com/SpinlockLabs/github.dart/pull/307
* test PR for auto-release by @robrbecker in https://github.com/SpinlockLabs/github.dart/pull/308
* Added assignees to Issue model for #289 by @sjhorn in https://github.com/SpinlockLabs/github.dart/pull/290

## New Contributors
* @sjhorn made their first contribution in https://github.com/SpinlockLabs/github.dart/pull/290

**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.1.1...9.2.0

## 9.1.1

* Don't add state query param twice by @passsy in https://github.com/SpinlockLabs/github.dart/pull/264


**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.1.0...9.1.1

## 9.1.0

* add 'create' github webhook event to hooks.dart by @XilaiZhang in https://github.com/SpinlockLabs/github.dart/pull/304

## New Contributors
* @XilaiZhang made their first contribution in https://github.com/SpinlockLabs/github.dart/pull/304

**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.0.3...9.1.0

## 9.0.3

* Update Language Colors March 13th 2022 by @robrbecker in https://github.com/SpinlockLabs/github.dart/pull/302


**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/9.0.2...9.0.3

## 9.0.2
- Switched to use the lints package instead of pedantic https://github.com/SpinlockLabs/github.dart/pull/301

## 9.0.1
- Add `conclusion` property in class `CheckRun`

## 9.0.0

**Breaking change:** In the Gist class, the old type of files was
```dart
List<GistFile>? files;
```
and the new type is
```dart
Map<String, GistFile>? files;
```

**Breaking change:** In the GistFile class, the name property is now filename

* Fix getting gists by @robrbecker in https://github.com/SpinlockLabs/github.dart/pull/294

**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/8.5.0...9.0.0

## 8.5.0

* Adds listing and creating PR Reviews, listing users in an org by @robrbecker in https://github.com/SpinlockLabs/github.dart/pull/287


**Full Changelog**: https://github.com/SpinlockLabs/github.dart/compare/8.4.0...8.5.0

## 8.4.0
- added `updateComment` to update issue comments https://github.com/SpinlockLabs/github.dart/pull/286

## 8.3.0
- Support `files` field in class `GitHubComparison`

## 8.2.5
- no library code changes
- Add auto pub publish on new releases

## 8.2.4
- Make CheckRunConclusion nullable

## 8.2.3
- Added `generateReleaseNotes` boolean to CreateRelase class to have github auto-create release notes
- Added `generateReleaseNotes` method to RepositoriesService to have github create release notes
  between to tags (without creating a release) and return the name and body. This is helpful when you want to add the release notes to a CHANGELOG.md before making the actual release
## 8.2.2
- Up minimum json_serializable to ^6.0.0, json_annotation to ^4.3.0
- Cleanup and regenerate generated files
- Require Dart SDK 2.14

## 8.2.1
- Add `CheckSuiteEvent` and `CheckRunEvent`

## 8.2.0
 - add more fields to the PullRequest class and fixed JSON naming bugs
   - Added:
     - requestedReviewers
     - reviewCommentCount
     - milestone
     - rebaseable
     - mergeableState
     - maintainerCanModify
     - authorAssociation
   - Fixed (these were previously always null)
     - commentsCount
     - commitsCount
     - additionsCount
     - deletionsCount
     - changedFilesCount

## 8.1.3
 - Add per page parameter to stars related activities https://github.com/SpinlockLabs/github.dart/pull/265

## 8.1.2
 - Fixes `RateLimit.fromRateLimitResponse` to not double cast int

## 8.1.1
  - Fix up examples and license file https://github.com/SpinlockLabs/github.dart/pull/255 https://github.com/SpinlockLabs/github.dart/pull/254 https://github.com/SpinlockLabs/github.dart/pull/253

## 8.1.0
  - `RateLimit` queries `/rate_limit` and no longer uses quota

## 8.0.1
  - Minor tweaks to improve pub score

## 8.0.0
  - Allow start page, per_page, number of pages options to pagination helper
  - Allow page options for listTags

## 8.0.0-nullsafe.1
  - Update to null safety

## 7.0.4
 - Add hasPages attribute to Repository https://github.com/SpinlockLabs/github.dart/pull/238

## 7.0.3
 - Export `languageColors` as part of the library. This is the map of github languages to their colors https://github.com/SpinlockLabs/github.dart/pull/232

## 7.0.2
 - https://github.com/SpinlockLabs/github.dart/pull/231

## 7.0.1
 - Add `getLatestRelease()` to RepositoriesService
 - Add `listCurrentUserFollowing()` function to `UsersService`

## 7.0.0
 - Removed deprecated CloneUrls property on Repository class

## 6.2.3
 - Add twitter username to User class https://github.com/SpinlockLabs/github.dart/pull/228
 - Improve pub.dev score

## 6.2.2
 - Fixed typo in documentation

## 6.2.1
 - Consolidated utils from src/util.dart into src/common/utils/utils.dart
 - Added a new top level entry point `hooks.dart` to improve dartdocs and IDE usability when writing hooks

## 6.2.0
 - Added Checks API https://github.com/SpinlockLabs/github.dart/pull/182
 - Bug fix: Fix setRepositorySubscription to be a PUT instead of a POST https://github.com/SpinlockLabs/github.dart/commit/5b5d7656ce9ce1cb06e15651da06e7e192bc19e1
 - Bug fix: Repository clone URLs were null. DEPRECATED `Repository.cloneUrls` use `cloneUrl`,`gitUrl`,`sshUrl`, or `svnUrl` instead.
 - Bug fix: Use a shared json encoder util to remove nulls from maps and lists, encode all dates for github. https://github.com/SpinlockLabs/github.dart/pull/182

## 6.1.3
 - Add missing fields for Notification https://github.com/SpinlockLabs/github.dart/pull/210
 - Can now create draft PRs https://github.com/SpinlockLabs/github.dart/pull/212

## 6.1.2
 - Update default language color to match github https://github.com/SpinlockLabs/github.dart/pull/208

## 6.1.1
 - Use pedantic and address some lint https://github.com/SpinlockLabs/github.dart/pull/205
 - Add missing download url for repos contents https://github.com/SpinlockLabs/github.dart/pull/206

## 6.1.0
 - Add (experimental) `listReactions` method to `IssueService`.

## 6.0.6
 - Clean up lints https://github.com/SpinlockLabs/github.dart/pull/202

## 6.0.5
 - Fix null errors issue https://github.com/SpinlockLabs/github.dart/issues/199 

## 6.0.4
 - This fixes #196 (https://github.com/SpinlockLabs/github.dart/issues/196)

## 6.0.3
 - Add archived and disabled fields to the Repository class

## 6.0.2
 - Fixed `GitHubFile.text` to properly decode `content`.

## 6.0.1
 - Fix https://github.com/SpinlockLabs/github.dart/issues/190

## 6.0.0

- There's a single entrypoint now: `package:github/github.dart`
- For web: browser specific helper methods have moved. use import `package:github/browser_helper.dart` (renderMarkdown, and createAvatorImage)
- `createGithubClient(...)` has been removed. Just create a GitHub object directly now.
- `findAuthenticationFromEnvironment` now works in both server/flutter and web environments
  - On the web, it will check the query string first, then session storage
- all static methods are now factory constructors
- fromJSON is now fromJson everywhere
- toJSON is now toJson everywhere
- Use JsonSerializable everywhere
- removed deprecated items
- renamed some fields with ID at the end to be Id
- most model constructors now have named parameters for all properties
- `GitHubFile.content` is now exactly the content returned from the JSON API
  without newlines removed.

## v5.5.0

- Implement markThreadRead https://github.com/SpinlockLabs/github.dart/pull/185
- Fix for activity service https://github.com/SpinlockLabs/github.dart/issues/187

## v5.4.0

- Implement rate-limiting https://github.com/SpinlockLabs/github.dart/pull/172
- Back off when server fails (HTTP 50x) https://github.com/SpinlockLabs/github.dart/pull/173
- All remaining methods in repos_service.dart (accessible via the getter `repositories` from `GitHub` client class) have been implemented. `isCollaborator`, `listSingleCommitComments`, `listCommitComments`, `createCommitComment`, `getComment`, `updateComment`, `deleteComment`
- Fixed issues.get to correctly return Future<Issue> https://github.com/SpinlockLabs/github.dart/pull/180

## v5.3.0

- Add the ability to upload release assets.
- Add the ability to get an existing release by tag name.

Deprecations:

- The `draft` and `prerelease` properties in the CreateRelease and Release 
- classes have been renamed to `isDraft` and `isPrerelease` for clarity.
- Release.targetCommitsh has been renamed to Release.targetCommitish. 
- The `release` parameter in RepositoriesService.createRelease 
has been renamed to `createRelease`.
- `RepositoriesService.getRelease` has been renamed to `RepositoriesService.getReleaseById`

## v5.2.0

 - Add access to labels on Pull Requests https://github.com/SpinlockLabs/github.dart/pull/163
 - Adding draft property to PR model https://github.com/SpinlockLabs/github.dart/pull/162
 - updateFile request must be a PUT https://github.com/SpinlockLabs/github.dart/pull/160
 
## v5.1.0

 - `Repository`: added `updatedAt` and `license` fields.
 - Require at least Dart `2.3.0`.
 - Bump version constraint on `json_annotation`
 - Add contents_url to PullRequestFile https://github.com/SpinlockLabs/github.dart/pull/159

## v5.0.2
  - Fixed pollPublicEventsReceivedByUser to use the correct API URL https://github.com/SpinlockLabs/github.dart/pull/150

## v5.0.1
  - Fixed a runtime exception (https://github.com/SpinlockLabs/github.dart/issues/139)
  - Added an optional `base` argument when editing a PR (https://github.com/SpinlockLabs/github.dart/pull/145)

## v5.0.0

- **BREAKING** `RepositoriesService.listCollaborators` now returns 
  `Stream<Collaborator>` instead of `Stream<User>`.
    -  `Collaborator` is a new type that includes collaborator-specific
       information.

## v4.1.1

- Require at least Dart `2.1.0`.

## v4.1.0

- Fix return type of `RepositoriesService.listContributors`.
- Fix return type of `RepositoriesService.createRelease`.
- Fixed `RepositoriesService.listContributorStats`.
  - Removed unsupported `limit` parameter.
  - Removed flaky retry logic. Instead, `NotReady` is thrown, which can be used
    to decide to retry at the call site.
  - Made associated classes `ContributorStatistics` and 
    `ContributorWeekStatistics` immutable. Since these classes are only meant as
    return values, we're not treating this as a breaking change.
- Added `Stream<CodeSearchResults> github.search.code(...)` search API
  - Made `CodeSearchResults` class to hold search results
  - Made `CodeSearchItem` class to hold each search result item
  - Added a code search example

## v4.0.1

- Fix cast errors in event and issue queries.

## v4.0.0

- Make fields in many objects read-only.
- Initial support for comparing commits.
- Require at least Dart `2.0.0-dev.36`.
- Fix a number of type issues dealing with JSON.
- *BREAKING* Removed `ExploreService` – `GitHub.explore`.
- *BREAKING* Removed `MiscService.listOctodex`.
- *BREAKING* Removed `BlogService` - `GitHub.blog`.

## v3.0.0

- *BREAKING* Removed a number of top-level methods from the public API.
- *BREAKING* Removed `markdown.dart` library – use the `markdown` package instead.
- *BREAKING* Removed the `dates.dart` library.

## v2.3.2

- Automatically attempt to find GitHub user information in the process environment when running on the standalone VM. 
- Add `ref` parameter to `getReadme` method for the repository service.

## v2.3.1

- Cache base64 decoded `text` property in `GitHubFile`
- Fix Bug in EventPoller
- Added `id` to `Milestone`

## v2.3.0

- Moved `CHANGELOG` content back to repo.
- Added `rateLimitLimit`, `rateLimitRemaining` and `rateLimitReset` to `GitHub`.
- Added `id` to `Issue`
- Added `direction`, `sort` and `since` optional arguments to 
  `IssueService.listByRepo`.

## v2.1.0

**NOTICE**: This is a major breaking release. This really should have been v2.0.0

- New Service based API
- Git Data API Fully Implemented

## v2.0.0

- `File` class renamed to `GitHubFile` (Breaking Change)
- New Integration Tests (Tests the actual GitHub API).
- Unit Testing System fully setup.
- Git Data API partially implemented (this is a breaking change because of the new service system).
- Fixes issues in fetching multiple repositories and users (fetching was very unreliable).
- Adds a Markdown Rendering Helper (for rendering markdown in an element).
- Team Membership API Implemented.
- OAuth2 Flow API now uses some methods in the HTTP Library.
- Organization Membership Updated to new API Changes.
- Hook Server performance improvements.
- Commit JSON Parsing now handles errors correctly.
- Add `Issue.toggleState()` method which toggles it from open to closed or vice-versa.
- Add `Issue.isOpen` and `Issue.isClosed` getters.

## v1.3.1

- A few bug fixes.
- New Tests
- Benchmarks
- Markdown Generation Library

## v1.3.0
- [Button Tweaks](https://github.com/SpinlockLabs/github.dart/commit/5f4b5caee79758a9a2ea9eeac1521836d95eb9bd)
- [Added Emoji Searches](https://github.com/SpinlockLabs/github.dart/commit/8ca46c665f844794dca56aa4eeaab5e2c9d2c245)
- [Combined all Less stylesheets into one](https://github.com/SpinlockLabs/github.dart/commit/dd786c4342d70533c2d5446b33888bb42fac40e8)
- [Dates Library Cleanup](https://github.com/SpinlockLabs/github.dart/commit/0518a3b0ae072e481fc1579c91c5280ff1978821)
- [String to represent Unix timestamps](https://github.com/SpinlockLabs/github.dart/commit/cf93c0fe6790a27c6bbf14f1c7d64f7b6eab5247)
- [Fix date/time parsing](https://github.com/SpinlockLabs/github.dart/commit/a6e459ae16a40c2c1f12cace6d84a60dd97b3332)
- [Slack Notifications for TravisCI](https://github.com/SpinlockLabs/github.dart/commit/de08f8718d5a90a369cf9edf0d0f90c22ccb1e2a)

## v1.0.1
- [Octicons](https://github.com/SpinlockLabs/github.dart/commit/28cff468272066b8f70998ac9235fc6c813a88d5)

## v1.0.0

- [Support for Creating Milestones](https://github.com/SpinlockLabs/github.dart/commit/2e613d9ef662da6e5d4adee576ac3c149d15e037)

## v0.6.7

- [Hook Server now only handles request at `/hook`](https://github.com/SpinlockLabs/github.dart/commit/da0524cd054082bb016193cf167865fd6aeb5631)
- [Octodex Support](https://github.com/SpinlockLabs/github.dart/commit/4481f094dca7960268447c579f1745337bbd6c25)
- [Zen API Support](https://github.com/SpinlockLabs/github.dart/commit/bcf2ed540a327957485b7e610647f956d02bfa21)
- [Ability to delete issue comments](https://github.com/SpinlockLabs/github.dart/commit/2316f5c6af5246d3039fb378fab6c77ac61c5e6b)
- [Client Creation Helper](https://github.com/SpinlockLabs/github.dart/commit/2316f5c6af5246d3039fb378fab6c77ac61c5e6b)
- [New Hook Server Middleware](https://github.com/SpinlockLabs/github.dart/commit/3af13b647291bc31d644a9ca1554861892ac7b76)
- [Issue Label Management](https://github.com/SpinlockLabs/github.dart/commit/8cfe4b318d8683dc6be59ab0c6d5968325a461d9)
- [Ability to change title, body, and state of an issue](https://github.com/SpinlockLabs/github.dart/commit/dabc32a66678e92321d017912c9aae60084e908f)
- [Repository Status API Support](https://github.com/SpinlockLabs/github.dart/commit/b17da3befae20bbde9b8d8bfd351bf8ff3227fa6)
- [Creating/Deleting/Listing Repository Labels](https://github.com/SpinlockLabs/github.dart/commit/2eb1ea81aa3fdfe99c7ed39316a946897c67ebc0)
- [Issue Assignees](https://github.com/SpinlockLabs/github.dart/commit/e5e92d2c1d16ab4912522392e84d1e16a2f353ab)

## v0.6.6

- [Fix Typos](https://github.com/SpinlockLabs/github.dart/commit/7b3fd733a306230410a0318abbfc5c15cdd79345)

## v0.6.5

- [Add Issue State Information](https://github.com/SpinlockLabs/github.dart/commit/571bb4101f2c90927ecaaab0bb226c277ad7b4be)

## v0.6.4

- [Pull Request State Information](https://github.com/SpinlockLabs/github.dart/commit/fef13177f959903cd1b6b2a3c17f476bea59aeaf)
- [Widen Constraint on yaml](https://github.com/SpinlockLabs/github.dart/commit/faa180922b3cd1a21a3b437eb8b590529d529e23)
- [Bug Fixes in Pull Requests](https://github.com/SpinlockLabs/github.dart/commit/4b9ec19a2563d4c0bf4220703d11399dee96fbb3)

## v0.6.3

- [Pull Request Manipulation](https://github.com/SpinlockLabs/github.dart/commit/37c5323a48a403c5a88300e960e38e773a000d81)
- [Access to Issue Comments](https://github.com/SpinlockLabs/github.dart/commit/82020c242998624cac31e0e879c54f63d0cab012)
- [CreateStatus Request](https://github.com/SpinlockLabs/github.dart/commit/202bacdd01a132e34d63ff96124f997e6e3c18d5)
- [Widen crypto constraint](https://github.com/SpinlockLabs/github.dart/commit/caaa3f9ea14025d4d9c3a966a911489f2deedc26)
- [Team Management](https://github.com/SpinlockLabs/github.dart/commit/2a47b14ba975c2396e728ec4260a30dfb8048178)
- [Fix Missing Dependency](https://github.com/SpinlockLabs/github.dart/commit/233c4f38f33b1a5e3886e1f4617ca34a66159080)
- [Pull Request Comment Creation](https://github.com/SpinlockLabs/github.dart/commit/cab4fa151426e0461ca1ef6ac570ed1e342fe3d8)
- [Fix Bugs in Commit Model](https://github.com/SpinlockLabs/github.dart/commit/58a7616baaf4ce963e6e135c2547b9315f0b2e65)
- [Pagination Bug Fix](https://github.com/SpinlockLabs/github.dart/commit/b68806939ef9b7d7e5c15983dec2bb6b86343afb)
- [Event Polling](https://github.com/SpinlockLabs/github.dart/commit/71d16834b6bdcfd70f9f80ce3f81af9bcabfa066)
- [Octocat Wisdom Support](https://github.com/SpinlockLabs/github.dart/commit/6273170787bb2b041c8320afabec304a9f2d6bab)
- [GitHub Blog Posts Support](https://github.com/SpinlockLabs/github.dart/commit/845146f5b880ed3dd2b4c73c0a4d568da7b3e2b8)
- [Deploy Key Management](https://github.com/SpinlockLabs/github.dart/commit/d72d97127fe96315ae9686daf964000a54ea8806)
- [Public Key Management](https://github.com/SpinlockLabs/github.dart/commit/63a0d6b66ae7f5b595979ccdf759fea101607ff1)

## v0.6.2

- [Bug Fixes in Organizations](https://github.com/SpinlockLabs/github.dart/commit/0cd55093fc3da97cfadc9ffd29e3705a1e25f3ec)
- [Pull Request Comment Model](https://github.com/SpinlockLabs/github.dart/commit/611588e76163c17ee4830a9b9e0609ebf5beb165)
- [Moved to Stream-based API](https://github.com/SpinlockLabs/github.dart/commit/bd827ffd30a162b4e71f8d12d466e6e24383bf1e)
- [Support for Forking a Repository](https://github.com/SpinlockLabs/github.dart/commit/0c61d9a8ca874c23eb4f16dd63db1d53a65f2562)
- [Gist Comments Support](https://github.com/SpinlockLabs/github.dart/commit/fc0d690debae4ac857f9021d7d8265ae2e4549be)
- [Merging Support](https://github.com/SpinlockLabs/github.dart/commit/56d5e4d05bb3b685cac19c61f91f81f22281bd4a)
- [Emoji Support](https://github.com/SpinlockLabs/github.dart/commit/9ac77b3364a060dd2e4e202e4e38f24b2079ff9e)
- [Repository Search Support](https://github.com/SpinlockLabs/github.dart/commit/305d1bcb439b188fac9553c6a07ea33f0e3505bd)
- [Notifications API Support](https://github.com/SpinlockLabs/github.dart/commit/11398495adebf68958ef3bce20903acd909f514c)

## v0.6.1

- [Fix Bug in Release API](https://github.com/SpinlockLabs/github.dart/commit/64499a376df313f08df1669782f042a912751794)

## v0.6.0

- [Custom HTTP System](https://github.com/SpinlockLabs/github.dart/commit/3e1bfe7e45e7b83c32bf0bceb154a791ea3b68d7)
- [Gists Support](https://github.com/SpinlockLabs/github.dart/commit/fe733a36ed1cd7cce89d309e61b14b8b7f8666d8)
- [API Status Information](https://github.com/SpinlockLabs/github.dart/commit/c790bf9edb8e2fb99d879818a8b2ae77b5325f7c)

## v0.5.9

All the things!

## v0.3.0

- Updated Documentation
- [Better Organization Support](https://github.com/SpinlockLabs/github.dart/commit/cc9de92f625918eafd01a72b4e2c0921580075bb)
- [Added Organization Demos](https://github.com/SpinlockLabs/github.dart/commit/cc9de92f625918eafd01a72b4e2c0921580075bb)

## v0.2.0

- [Organization Support](https://github.com/SpinlockLabs/github.dart/commit/3de085c0fa2d629a8bebff89bdaf1a5aaf833195)

## v0.1.0

Initial Version

