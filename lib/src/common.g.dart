// GENERATED CODE - DO NOT MODIFY BY HAND

part of github.common;

// **************************************************************************
// Generator: JsonSerializableGenerator
// **************************************************************************

GitTree _$GitTreeFromJson(Map<String, dynamic> json) => new GitTree(
    json['sha'] as String,
    json['url'] as String,
    json['truncated'] as bool,
    (json['tree'] as List)
        ?.map((e) => e == null
            ? null
            : new GitTreeEntry.fromJson(e as Map<String, dynamic>))
        ?.toList());

GitTreeEntry _$GitTreeEntryFromJson(Map<String, dynamic> json) =>
    new GitTreeEntry(
        json['path'] as String,
        json['mode'] as String,
        json['type'] as String,
        json['size'] as int,
        json['sha'] as String,
        json['url'] as String);

GitHubComparison _$GitHubComparisonFromJson(Map<String, dynamic> json) =>
    new GitHubComparison(
        json['url'] as String,
        json['status'] as String,
        json['ahead_by'] as int,
        json['behind_by'] as int,
        json['total_commits'] as int);

Tag _$TagFromJson(Map<String, dynamic> json) => new Tag(
    json['name'] as String,
    json['commit'] == null
        ? null
        : new CommitInfo.fromJson(json['commit'] as Map<String, dynamic>),
    json['zipball_url'] as String,
    json['tarball_url'] as String);

CommitData _$CommitDataFromJson(Map<String, dynamic> json) => new CommitData(
    json['sha'] as String,
    json['commit'] == null ? null : new GitCommit.fromJson(json['commit']),
    json['url'] as String,
    json['html_url'] as String,
    json['comments_url'] as String,
    json['author'] == null
        ? null
        : new CommitDataUser.fromJson(json['author'] as Map<String, dynamic>),
    json['committer'] == null
        ? null
        : new CommitDataUser.fromJson(
            json['committer'] as Map<String, dynamic>),
    (json['parents'] as List)?.map((e) => e as Map<String, dynamic>)?.toList());

CommitDataUser _$CommitDataUserFromJson(Map<String, dynamic> json) =>
    new CommitDataUser(
        json['login'] as String, json['id'] as int, json['type'] as String);

CommitInfo _$CommitInfoFromJson(Map<String, dynamic> json) => new CommitInfo(
    json['sha'] as String,
    json['tree'] == null
        ? null
        : new GitTree.fromJson(json['tree'] as Map<String, dynamic>));

UserInformation _$UserInformationFromJson(Map<String, dynamic> json) =>
    new UserInformation(json['login'] as String, json['id'] as int,
        json['avatar_url'] as String, json['html_url'] as String);

Branch _$BranchFromJson(Map<String, dynamic> json) => new Branch(
    json['name'] as String,
    json['commit'] == null
        ? null
        : new CommitData.fromJson(json['commit'] as Map<String, dynamic>));
