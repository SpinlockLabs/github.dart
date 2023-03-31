# Contributing Guide

GitHub.dart is of course Open Source! We love it when people contribute!

## Getting Started

- Make sure you have a [GitHub Account](https://github.com/signup/free).
- Make sure the [Dart SDK](https://www.dartlang.org/tools/sdk/) is installed on your system.
- Make sure you have [Git](http://git-scm.com/) installed on your system.
- [Fork](https://help.github.com/articles/fork-a-repo) the [repository](https://github.com/SpinlockLabs/github.dart) on GitHub.

## Making Changes

- [Create a branch](https://help.github.com/articles/creating-and-deleting-branches-within-your-repository) for your changes.
- [Commit your code](http://git-scm.com/book/en/Git-Basics-Recording-Changes-to-the-Repository) for each logical change (see [tips for creating better commit messages](http://robots.thoughtbot.com/5-useful-tips-for-a-better-commit-message)).
- [Push your change](https://help.github.com/articles/pushing-to-a-remote) to your fork.
- [Create a Pull Request](https://help.github.com/articles/creating-a-pull-request) on GitHub for your change.
- Wait for reviewers (usually kaendfinger) to give feedback.
- When the reviewers think that the Pull Request is ready, they will merge it.

## Code Style

GitHub.dart follows the [Dart Style Guide](https://www.dartlang.org/articles/style-guide/). Please note that if your code is not formatted according to the guide as much as possible, we will reject your Pull Request until it is fixed. Some things such as long lines will generally be accepted, however try to make it smaller if possible.

## Efficiency

GitHub.dart is committed to efficiency as much as possible. If your code is not efficient, then we will probably reject your Pull Request.

## Rejections

Pull Request rejections are not a bad thing. It just means you need to fix something. Perhaps it is important to define 'rejection' as it is used in this case. A rejection is when a GitHub.dart committer comments on a Pull Request with a comment like 'rejected due to incorrect formatting'.

## Tests

To run the complete test suite you will need to install
`octokit/fixtures-server`.

```
npm install --global @octokit/fixtures-server
```

Tests can be run using `make test`, which will start up a local mock
GitHub and execute tests against it using your localhost port 3000.

## Contacting Us

- IRC: `#directcode on irc.esper.net and irc.freenode.net`
- Email: `kaendfinger@gmail.com`

## Becoming a Committer

If you get on IRC and ask us, we can review your work and add you as a committer if we think you should have it.

## Releasing & Publishing

This repo is now configured to release after every PR merge. This means a couple things for PRs that are put up:

1. A semver label is required. A github check will remind you that you need one. Reviewers should check that it is correct. See https://semver.org/ to understand more.
2. There is no need to modify the version in the pubspec.yaml in your PRs. The tooling will update the version according to the semver label applied to your PR.
3. Same thing for the CHANGELOG.md. Tooling will update it automatically after merge.
4. A github release will be created and published to pub.dev for you.

For example if your PR has `semver:minor` label applied and the latest version is 1.2.3, once merged, the tooling will:
- update the pubspec.yaml to 1.3.0
- Add the github auto-generated release notes with 1.3.0 to the top of the CHANGELOG.md
- Create a release in github for 1.3.0 (which creates a git tag of 1.3.0)
- Remove the `unreleased` label from the PR and add the `released` label
- Comment on the PR stating the version that it was released in and link to the release
- When the release is created, it will automatically be published to pub.dev

NOTE: If you want the ability to merge a PR **WITHOUT** automatically releasing and publishing, simply add the `no_release_on_merge` label before merging. Do note that the PR has been merged though and whatever the next PR is that triggers a release will release and publish everything that has been merged. So if you want to batch a few PRs into 1 release, label them all `no_release_on_merge`. Then whichever is the last to be merged, remove that label before merging to trigger the release.
You may also manually trigger the action to release unreleased PRs from the Actions tab in Github.
