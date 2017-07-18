## v4.0.0

- Make fields in many objects read-only.
- Initial support for comparing commits.

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
- [Button Tweaks](https://github.com/DirectMyFile/github.dart/commit/5f4b5caee79758a9a2ea9eeac1521836d95eb9bd)
- [Added Emoji Searches](https://github.com/DirectMyFile/github.dart/commit/8ca46c665f844794dca56aa4eeaab5e2c9d2c245)
- [Combined all Less stylesheets into one](https://github.com/DirectMyFile/github.dart/commit/dd786c4342d70533c2d5446b33888bb42fac40e8)
- [Dates Library Cleanup](https://github.com/DirectMyFile/github.dart/commit/0518a3b0ae072e481fc1579c91c5280ff1978821)
- [String to represent Unix timestamps](https://github.com/DirectMyFile/github.dart/commit/cf93c0fe6790a27c6bbf14f1c7d64f7b6eab5247)
- [Fix date/time parsing](https://github.com/DirectMyFile/github.dart/commit/a6e459ae16a40c2c1f12cace6d84a60dd97b3332)
- [Slack Notifications for TravisCI](https://github.com/DirectMyFile/github.dart/commit/de08f8718d5a90a369cf9edf0d0f90c22ccb1e2a)

## v1.0.1
- [Octicons](https://github.com/DirectMyFile/github.dart/commit/28cff468272066b8f70998ac9235fc6c813a88d5)

## v1.0.0

- [Support for Creating Milestones](https://github.com/DirectMyFile/github.dart/commit/2e613d9ef662da6e5d4adee576ac3c149d15e037)

## v0.6.7

- [Hook Server now only handles request at `/hook`](https://github.com/DirectMyFile/github.dart/commit/da0524cd054082bb016193cf167865fd6aeb5631)
- [Octodex Support](https://github.com/DirectMyFile/github.dart/commit/4481f094dca7960268447c579f1745337bbd6c25)
- [Zen API Support](https://github.com/DirectMyFile/github.dart/commit/bcf2ed540a327957485b7e610647f956d02bfa21)
- [Ability to delete issue comments](https://github.com/DirectMyFile/github.dart/commit/2316f5c6af5246d3039fb378fab6c77ac61c5e6b)
- [Client Creation Helper](https://github.com/DirectMyFile/github.dart/commit/2316f5c6af5246d3039fb378fab6c77ac61c5e6b)
- [New Hook Server Middleware](https://github.com/DirectMyFile/github.dart/commit/3af13b647291bc31d644a9ca1554861892ac7b76)
- [Issue Label Management](https://github.com/DirectMyFile/github.dart/commit/8cfe4b318d8683dc6be59ab0c6d5968325a461d9)
- [Ability to change title, body, and state of an issue](https://github.com/DirectMyFile/github.dart/commit/dabc32a66678e92321d017912c9aae60084e908f)
- [Repository Status API Support](https://github.com/DirectMyFile/github.dart/commit/b17da3befae20bbde9b8d8bfd351bf8ff3227fa6)
- [Creating/Deleting/Listing Repository Labels](https://github.com/DirectMyFile/github.dart/commit/2eb1ea81aa3fdfe99c7ed39316a946897c67ebc0)
- [Issue Assignees](https://github.com/DirectMyFile/github.dart/commit/e5e92d2c1d16ab4912522392e84d1e16a2f353ab)

## v0.6.6

- [Fix Typos](https://github.com/DirectMyFile/github.dart/commit/7b3fd733a306230410a0318abbfc5c15cdd79345)

## v0.6.5

- [Add Issue State Information](https://github.com/DirectMyFile/github.dart/commit/571bb4101f2c90927ecaaab0bb226c277ad7b4be)

## v0.6.4

- [Pull Request State Information](https://github.com/DirectMyFile/github.dart/commit/fef13177f959903cd1b6b2a3c17f476bea59aeaf)
- [Widen Constraint on yaml](https://github.com/DirectMyFile/github.dart/commit/faa180922b3cd1a21a3b437eb8b590529d529e23)
- [Bug Fixes in Pull Requests](https://github.com/DirectMyFile/github.dart/commit/4b9ec19a2563d4c0bf4220703d11399dee96fbb3)

## v0.6.3

- [Pull Request Manipulation](https://github.com/DirectMyFile/github.dart/commit/37c5323a48a403c5a88300e960e38e773a000d81)
- [Access to Issue Comments](https://github.com/DirectMyFile/github.dart/commit/82020c242998624cac31e0e879c54f63d0cab012)
- [CreateStatus Request](https://github.com/DirectMyFile/github.dart/commit/202bacdd01a132e34d63ff96124f997e6e3c18d5)
- [Widen crypto constraint](https://github.com/DirectMyFile/github.dart/commit/caaa3f9ea14025d4d9c3a966a911489f2deedc26)
- [Team Management](https://github.com/DirectMyFile/github.dart/commit/2a47b14ba975c2396e728ec4260a30dfb8048178)
- [Fix Missing Dependency](https://github.com/DirectMyFile/github.dart/commit/233c4f38f33b1a5e3886e1f4617ca34a66159080)
- [Pull Request Comment Creation](https://github.com/DirectMyFile/github.dart/commit/cab4fa151426e0461ca1ef6ac570ed1e342fe3d8)
- [Fix Bugs in Commit Model](https://github.com/DirectMyFile/github.dart/commit/58a7616baaf4ce963e6e135c2547b9315f0b2e65)
- [Pagination Bug Fix](https://github.com/DirectMyFile/github.dart/commit/b68806939ef9b7d7e5c15983dec2bb6b86343afb)
- [Event Polling](https://github.com/DirectMyFile/github.dart/commit/71d16834b6bdcfd70f9f80ce3f81af9bcabfa066)
- [Octocat Wisdom Support](https://github.com/DirectMyFile/github.dart/commit/6273170787bb2b041c8320afabec304a9f2d6bab)
- [GitHub Blog Posts Support](https://github.com/DirectMyFile/github.dart/commit/845146f5b880ed3dd2b4c73c0a4d568da7b3e2b8)
- [Deploy Key Management](https://github.com/DirectMyFile/github.dart/commit/d72d97127fe96315ae9686daf964000a54ea8806)
- [Public Key Management](https://github.com/DirectMyFile/github.dart/commit/63a0d6b66ae7f5b595979ccdf759fea101607ff1)

## v0.6.2

- [Bug Fixes in Organizations](https://github.com/DirectMyFile/github.dart/commit/0cd55093fc3da97cfadc9ffd29e3705a1e25f3ec)
- [Pull Request Comment Model](https://github.com/DirectMyFile/github.dart/commit/611588e76163c17ee4830a9b9e0609ebf5beb165)
- [Moved to Stream-based API](https://github.com/DirectMyFile/github.dart/commit/bd827ffd30a162b4e71f8d12d466e6e24383bf1e)
- [Support for Forking a Repository](https://github.com/DirectMyFile/github.dart/commit/0c61d9a8ca874c23eb4f16dd63db1d53a65f2562)
- [Gist Comments Support](https://github.com/DirectMyFile/github.dart/commit/fc0d690debae4ac857f9021d7d8265ae2e4549be)
- [Merging Support](https://github.com/DirectMyFile/github.dart/commit/56d5e4d05bb3b685cac19c61f91f81f22281bd4a)
- [Emoji Support](https://github.com/DirectMyFile/github.dart/commit/9ac77b3364a060dd2e4e202e4e38f24b2079ff9e)
- [Repository Search Support](https://github.com/DirectMyFile/github.dart/commit/305d1bcb439b188fac9553c6a07ea33f0e3505bd)
- [Notifications API Support](https://github.com/DirectMyFile/github.dart/commit/11398495adebf68958ef3bce20903acd909f514c)

## v0.6.1

- [Fix Bug in Release API](https://github.com/DirectMyFile/github.dart/commit/64499a376df313f08df1669782f042a912751794)

## v0.6.0

- [Custom HTTP System](https://github.com/DirectMyFile/github.dart/commit/3e1bfe7e45e7b83c32bf0bceb154a791ea3b68d7)
- [Gists Support](https://github.com/DirectMyFile/github.dart/commit/fe733a36ed1cd7cce89d309e61b14b8b7f8666d8)
- [API Status Information](https://github.com/DirectMyFile/github.dart/commit/c790bf9edb8e2fb99d879818a8b2ae77b5325f7c)

## v0.5.9

All the things!

## v0.3.0

- Updated Documentation
- [Better Organization Support](https://github.com/DirectMyFile/github.dart/commit/cc9de92f625918eafd01a72b4e2c0921580075bb)
- [Added Organization Demos](https://github.com/DirectMyFile/github.dart/commit/cc9de92f625918eafd01a72b4e2c0921580075bb)

## v0.2.0

- [Organization Support](https://github.com/DirectMyFile/github.dart/commit/3de085c0fa2d629a8bebff89bdaf1a5aaf833195)

## v0.1.0

Initial Version

