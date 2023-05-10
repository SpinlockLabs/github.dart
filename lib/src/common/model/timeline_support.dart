import 'package:github/src/common.dart';
import 'package:json_annotation/json_annotation.dart';

part 'timeline_support.g.dart';

/// GitHub app
///
/// GitHub apps are a new way to extend GitHub. They can be installed directly
/// on organizations and user accounts and granted access to specific repositories.
/// They come with granular permissions and built-in webhooks. GitHub apps are
/// first class actors within GitHub.
@JsonSerializable()
class GitHubApp {
  GitHubApp({
    this.clientId,
    this.clientSecret,
    this.createdAt,
    this.description,
    this.events,
    this.externalUrl,
    this.htmlUrl,
    this.id,
    this.installationsCount,
    this.name,
    this.nodeId,
    this.owner,
    this.pem,
    this.permissions,
    this.slug,
    this.updatedAt,
    this.webhookSecret,
  });

  /// Example: `"Iv1.25b5d1e65ffc4022"`
  final String? clientId;

  /// Example: `"1d4b2097ac622ba702d19de498f005747a8b21d3"`
  final String? clientSecret;

  final DateTime? createdAt;

  final String? description;

  /// The list of events for the GitHub app
  ///
  /// Example: `label`
  ///
  /// Example: `deployment`
  final List<String>? events;

  /// Example: `https://example.com`
  final String? externalUrl;

  /// Example: `https://github.com/apps/super-ci`
  final String? htmlUrl;

  /// Unique identifier of the GitHub app
  final int? id;

  /// The number of installations associated with the GitHub app
  final int? installationsCount;

  /// The name of the GitHub app
  ///
  /// Example: `Probot Owners`
  final String? name;

  /// Example: `MDExOkludGVncmF0aW9uMQ==`
  final String? nodeId;

  final User? owner;

  /// Example:
  ///
  /// ```
  /// -----BEGIN RSA PRIVATE KEY-----
  /// MIIEogIBAAKCAQEArYxrNYD/iT5CZVpRJu4rBKmmze3PVmT/gCo2ATUvDvZTPTey
  /// xcGJ3vvrJXazKk06pN05TN29o98jrYz4cengG3YGsXPNEpKsIrEl8NhbnxapEnM9
  /// JCMRe0P5JcPsfZlX6hmiT7136GRWiGOUba2X9+HKh8QJVLG5rM007TBER9/z9mWm
  /// rJuNh+m5l320oBQY/Qq3A7wzdEfZw8qm/mIN0FCeoXH1L6B8xXWaAYBwhTEh6SSn
  /// ZHlO1Xu1JWDmAvBCi0RO5aRSKM8q9QEkvvHP4yweAtK3N8+aAbZ7ovaDhyGz8r6r
  /// zhU1b8Uo0Z2ysf503WqzQgIajr7Fry7/kUwpgQIDAQABAoIBADwJp80Ko1xHPZDy
  /// fcCKBDfIuPvkmSW6KumbsLMaQv1aGdHDwwTGv3t0ixSay8CGlxMRtRDyZPib6SvQ
  /// 6OH/lpfpbMdW2ErkksgtoIKBVrDilfrcAvrNZu7NxRNbhCSvN8q0s4ICecjbbVQh
  /// nueSdlA6vGXbW58BHMq68uRbHkP+k+mM9U0mDJ1HMch67wlg5GbayVRt63H7R2+r
  /// Vxcna7B80J/lCEjIYZznawgiTvp3MSanTglqAYi+m1EcSsP14bJIB9vgaxS79kTu
  /// oiSo93leJbBvuGo8QEiUqTwMw4tDksmkLsoqNKQ1q9P7LZ9DGcujtPy4EZsamSJT
  /// y8OJt0ECgYEA2lxOxJsQk2kI325JgKFjo92mQeUObIvPfSNWUIZQDTjniOI6Gv63
  /// GLWVFrZcvQBWjMEQraJA9xjPbblV8PtfO87MiJGLWCHFxmPz2dzoedN+2Coxom8m
  /// V95CLz8QUShuao6u/RYcvUaZEoYs5bHcTmy5sBK80JyEmafJPtCQVxMCgYEAy3ar
  /// Zr3yv4xRPEPMat4rseswmuMooSaK3SKub19WFI5IAtB/e7qR1Rj9JhOGcZz+OQrl
  /// T78O2OFYlgOIkJPvRMrPpK5V9lslc7tz1FSh3BZMRGq5jSyD7ETSOQ0c8T2O/s7v
  /// beEPbVbDe4mwvM24XByH0GnWveVxaDl51ABD65sCgYB3ZAspUkOA5egVCh8kNpnd
  /// Sd6SnuQBE3ySRlT2WEnCwP9Ph6oPgn+oAfiPX4xbRqkL8q/k0BdHQ4h+zNwhk7+h
  /// WtPYRAP1Xxnc/F+jGjb+DVaIaKGU18MWPg7f+FI6nampl3Q0KvfxwX0GdNhtio8T
  /// Tj1E+SnFwh56SRQuxSh2gwKBgHKjlIO5NtNSflsUYFM+hyQiPiqnHzddfhSG+/3o
  /// m5nNaSmczJesUYreH5San7/YEy2UxAugvP7aSY2MxB+iGsiJ9WD2kZzTUlDZJ7RV
  /// UzWsoqBR+eZfVJ2FUWWvy8TpSG6trh4dFxImNtKejCR1TREpSiTV3Zb1dmahK9GV
  /// rK9NAoGAbBxRLoC01xfxCTgt5BDiBcFVh4fp5yYKwavJPLzHSpuDOrrI9jDn1oKN
  /// onq5sDU1i391zfQvdrbX4Ova48BN+B7p63FocP/MK5tyyBoT8zQEk2+vWDOw7H/Z
  /// u5dTCPxTIsoIwUw1I+7yIxqJzLPFgR2gVBwY1ra/8iAqCj+zeBw=
  /// -----END RSA PRIVATE KEY-----
  /// ```
  final String? pem;

  /// The set of permissions for the GitHub app
  final Permissions? permissions;

  /// The slug name of the GitHub app
  ///
  /// Example: `probot-owners`
  final String? slug;

  final DateTime? updatedAt;

  /// Example: `"6fba8f2fc8a7e8f2cca5577eddd82ca7586b3b6b"`
  final String? webhookSecret;

  Map<String, dynamic> toJson() => _$GitHubAppToJson(this);

  factory GitHubApp.fromJson(Map<String, dynamic> input) =>
      _$GitHubAppFromJson(input);
}

@JsonSerializable()
class Rename {
  Rename({
    this.from,
    this.to,
  });

  final String? from;
  final String? to;

  Map<String, dynamic> toJson() => _$RenameToJson(this);

  factory Rename.fromJson(Map<String, dynamic> input) =>
      _$RenameFromJson(input);
}

@JsonSerializable()
class DismissedReview {
  DismissedReview({
    this.dismissalCommitId,
    this.dismissalMessage,
    this.reviewId,
    this.state,
  });

  final String? dismissalCommitId;
  final String? dismissalMessage;
  final int? reviewId;
  final String? state;

  Map<String, dynamic> toJson() => _$DismissedReviewToJson(this);

  factory DismissedReview.fromJson(Map<String, dynamic> input) =>
      _$DismissedReviewFromJson(input);
}

@JsonSerializable()
class ProjectCard {
  ProjectCard({
    this.columnName,
    this.id,
    this.previousColumnName,
    this.projectId,
    this.projectUrl,
    this.url,
  });

  final String? columnName;
  final int? id;
  final String? previousColumnName;
  final int? projectId;
  final String? projectUrl;
  final String? url;

  Map<String, dynamic> toJson() => _$ProjectCardToJson(this);

  factory ProjectCard.fromJson(Map<String, dynamic> input) =>
      _$ProjectCardFromJson(input);
}

@JsonSerializable()
class Source {
  Source({
    this.issue,
    this.type,
  });

  final Issue? issue;
  final String? type;

  Map<String, dynamic> toJson() => _$SourceToJson(this);

  factory Source.fromJson(Map<String, dynamic> input) =>
      _$SourceFromJson(input);
}

/// License
@JsonSerializable()
class License {
  License({
    this.htmlUrl,
    this.key,
    this.name,
    this.nodeId,
    this.spdxId,
    this.url,
  });

  final String? htmlUrl;

  /// Example: `mit`
  final String? key;

  /// Example: `MIT License`
  final String? name;

  /// Example: `MDc6TGljZW5zZW1pdA==`
  final String? nodeId;

  /// Example: `MIT`
  final String? spdxId;

  /// Example: `https://api.github.com/licenses/mit`
  final String? url;

  Map<String, dynamic> toJson() => _$LicenseToJson(this);

  factory License.fromJson(Map<String, dynamic> input) =>
      _$LicenseFromJson(input);
}

@JsonSerializable()
class TemplateRepository {
  TemplateRepository({
    this.allowAutoMerge,
    this.allowMergeCommit,
    this.allowRebaseMerge,
    this.allowSquashMerge,
    this.allowUpdateBranch,
    this.archiveUrl,
    this.archived,
    this.assigneesUrl,
    this.blobsUrl,
    this.branchesUrl,
    this.cloneUrl,
    this.collaboratorsUrl,
    this.commentsUrl,
    this.commitsUrl,
    this.compareUrl,
    this.contentsUrl,
    this.contributorsUrl,
    this.createdAt,
    this.defaultBranch,
    this.deleteBranchOnMerge,
    this.deploymentsUrl,
    this.description,
    this.disabled,
    this.downloadsUrl,
    this.eventsUrl,
    this.fork,
    this.forksCount,
    this.forksUrl,
    this.fullName,
    this.gitCommitsUrl,
    this.gitRefsUrl,
    this.gitTagsUrl,
    this.gitUrl,
    this.hasDownloads,
    this.hasIssues,
    this.hasPages,
    this.hasProjects,
    this.hasWiki,
    this.homepage,
    this.hooksUrl,
    this.htmlUrl,
    this.id,
    this.isTemplate,
    this.issueCommentUrl,
    this.issueEventsUrl,
    this.issuesUrl,
    this.keysUrl,
    this.labelsUrl,
    this.language,
    this.languagesUrl,
    this.mergeCommitMessage,
    this.mergeCommitTitle,
    this.mergesUrl,
    this.milestonesUrl,
    this.mirrorUrl,
    this.name,
    this.networkCount,
    this.nodeId,
    this.notificationsUrl,
    this.openIssuesCount,
    this.owner,
    this.permissions,
    this.private,
    this.pullsUrl,
    this.pushedAt,
    this.releasesUrl,
    this.size,
    this.squashMergeCommitMessage,
    this.squashMergeCommitTitle,
    this.sshUrl,
    this.stargazersCount,
    this.stargazersUrl,
    this.statusesUrl,
    this.subscribersCount,
    this.subscribersUrl,
    this.subscriptionUrl,
    this.svnUrl,
    this.tagsUrl,
    this.teamsUrl,
    this.tempCloneToken,
    this.topics,
    this.treesUrl,
    this.updatedAt,
    this.url,
    this.visibility,
    this.watchersCount,
  });

  final bool? allowAutoMerge;
  final bool? allowMergeCommit;
  final bool? allowRebaseMerge;
  final bool? allowSquashMerge;
  final bool? allowUpdateBranch;
  final String? archiveUrl;
  final bool? archived;
  final String? assigneesUrl;
  final String? blobsUrl;
  final String? branchesUrl;
  final String? cloneUrl;
  final String? collaboratorsUrl;
  final String? commentsUrl;
  final String? commitsUrl;
  final String? compareUrl;
  final String? contentsUrl;
  final String? contributorsUrl;
  final DateTime? createdAt;
  final String? defaultBranch;
  final bool? deleteBranchOnMerge;
  final String? deploymentsUrl;
  final String? description;
  final bool? disabled;
  final String? downloadsUrl;
  final String? eventsUrl;
  final bool? fork;
  final int? forksCount;
  final String? forksUrl;
  final String? fullName;
  final String? gitCommitsUrl;
  final String? gitRefsUrl;
  final String? gitTagsUrl;
  final String? gitUrl;
  final bool? hasDownloads;
  final bool? hasIssues;
  final bool? hasPages;
  final bool? hasProjects;
  final bool? hasWiki;
  final String? homepage;
  final String? hooksUrl;
  final String? htmlUrl;
  final int? id;
  final bool? isTemplate;
  final String? issueCommentUrl;
  final String? issueEventsUrl;
  final String? issuesUrl;
  final String? keysUrl;
  final String? labelsUrl;
  final String? language;
  final String? languagesUrl;

  /// The default value for a merge commit message.
  ///
  /// - `PR_TITLE` - default to the pull request's title.
  /// - `PR_BODY` - default to the pull request's body.
  /// - `BLANK` - default to a blank commit message.
  final String? mergeCommitMessage;

  /// The default value for a merge commit title.
  ///
  /// - `PR_TITLE` - default to the pull request's title.
  /// - `MERGE_MESSAGE` - default to the classic title for a merge message (e.g.,
  /// Merge pull request #123 from branch-name).
  final String? mergeCommitTitle;

  final String? mergesUrl;
  final String? milestonesUrl;
  final String? mirrorUrl;
  final String? name;
  final int? networkCount;
  final String? nodeId;
  final String? notificationsUrl;
  final int? openIssuesCount;
  final Owner? owner;
  final Permissions? permissions;
  final bool? private;
  final String? pullsUrl;
  final DateTime? pushedAt;
  final String? releasesUrl;
  final int? size;

  /// The default value for a squash merge commit message:
  ///
  /// - `PR_BODY` - default to the pull request's body.
  /// - `COMMIT_MESSAGES` - default to the branch's commit messages.
  /// - `BLANK` - default to a blank commit message.
  final String? squashMergeCommitMessage;

  /// The default value for a squash merge commit title:
  ///
  /// - `PR_TITLE` - default to the pull request's title.
  /// - `COMMIT_OR_PR_TITLE` - default to the commit's title (if only one commit)
  /// or the pull request's title (when more than one commit).
  final String? squashMergeCommitTitle;

  final String? sshUrl;
  final int? stargazersCount;
  final String? stargazersUrl;
  final String? statusesUrl;
  final int? subscribersCount;
  final String? subscribersUrl;
  final String? subscriptionUrl;
  final String? svnUrl;
  final String? tagsUrl;
  final String? teamsUrl;
  final String? tempCloneToken;
  final List<String>? topics;
  final String? treesUrl;
  final DateTime? updatedAt;
  final String? url;
  final String? visibility;
  final int? watchersCount;

  Map<String, dynamic> toJson() => _$TemplateRepositoryToJson(this);

  factory TemplateRepository.fromJson(Map<String, dynamic> input) =>
      _$TemplateRepositoryFromJson(input);
}

@JsonSerializable()
class Owner {
  Owner({
    this.avatarUrl,
    this.eventsUrl,
    this.followersUrl,
    this.followingUrl,
    this.gistsUrl,
    this.gravatarId,
    this.htmlUrl,
    this.id,
    this.login,
    this.nodeId,
    this.organizationsUrl,
    this.receivedEventsUrl,
    this.reposUrl,
    this.siteAdmin,
    this.starredUrl,
    this.subscriptionsUrl,
    this.type,
    this.url,
  });

  final String? avatarUrl;
  final String? eventsUrl;
  final String? followersUrl;
  final String? followingUrl;
  final String? gistsUrl;
  final String? gravatarId;
  final String? htmlUrl;
  final int? id;
  final String? login;
  final String? nodeId;
  final String? organizationsUrl;
  final String? receivedEventsUrl;
  final String? reposUrl;
  final bool? siteAdmin;
  final String? starredUrl;
  final String? subscriptionsUrl;
  final String? type;
  final String? url;

  Map<String, dynamic> toJson() => _$OwnerToJson(this);

  factory Owner.fromJson(Map<String, dynamic> input) => _$OwnerFromJson(input);
}

@JsonSerializable()
class Tree {
  Tree({
    this.sha,
    this.url,
    this.htmlUrl,
  });

  /// SHA for the commit
  ///
  /// Example: `7638417db6d59f3c431d3e1f261cc637155684cd`
  final String? sha;

  final String? url;

  final String? htmlUrl;

  Map<String, dynamic> toJson() => _$TreeToJson(this);

  factory Tree.fromJson(Map<String, dynamic> input) => _$TreeFromJson(input);
}

@JsonSerializable()
class Verification {
  Verification({
    this.payload,
    this.reason,
    this.signature,
    this.verified,
  });

  final String? payload;
  final String? reason;
  final String? signature;
  final bool? verified;

  Map<String, dynamic> toJson() => _$VerificationToJson(this);

  factory Verification.fromJson(Map<String, dynamic> input) =>
      _$VerificationFromJson(input);
}

@JsonSerializable()
class HtmlLink {
  HtmlLink({
    this.href,
  });

  final String? href;

  Map<String, dynamic> toJson() => _$HtmlLinkToJson(this);

  factory HtmlLink.fromJson(Map<String, dynamic> input) =>
      _$HtmlLinkFromJson(input);
}

@JsonSerializable()
class PullRequestLink {
  PullRequestLink({
    this.href,
  });

  /// Example: `https://api.github.com/repos/octocat/Hello-World/pulls/1`
  final String? href;

  Map<String, dynamic> toJson() => _$PullRequestLinkToJson(this);

  factory PullRequestLink.fromJson(Map<String, dynamic> input) =>
      _$PullRequestLinkFromJson(input);
}
