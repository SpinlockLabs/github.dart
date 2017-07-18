// GENERATED CODE - DO NOT MODIFY BY HAND

part of github.common;

// **************************************************************************
// Generator: JsonSerializableGenerator
// Target: class GitTree
// **************************************************************************

GitTree _$GitTreeFromJson(Map json) => new GitTree(
    json['sha'] as String,
    json['url'] as String,
    json['truncated'] as bool,
    (json['tree'] as List)
        ?.map((v0) => v0 == null ? null : new GitTreeEntry.fromJson(v0))
        ?.toList());

// **************************************************************************
// Generator: JsonSerializableGenerator
// Target: class GitTreeEntry
// **************************************************************************

GitTreeEntry _$GitTreeEntryFromJson(Map json) => new GitTreeEntry(
    json['path'] as String,
    json['mode'] as String,
    json['type'] as String,
    json['size'] as int,
    json['sha'] as String,
    json['url'] as String);

// **************************************************************************
// Generator: JsonSerializableGenerator
// Target: class GitHubComparison
// **************************************************************************

GitHubComparison _$GitHubComparisonFromJson(Map json) => new GitHubComparison(
    json['url'] as String,
    json['status'] as String,
    json['ahead_by'] as int,
    json['behind_by'] as int,
    json['total_commits'] as int);

// **************************************************************************
// Generator: JsonSerializableGenerator
// Target: class Tag
// **************************************************************************

Tag _$TagFromJson(Map json) => new Tag(
    json['name'] as String,
    json['commit'] == null ? null : new CommitInfo.fromJson(json['commit']),
    json['zipball_url'] as String,
    json['tarball_url'] as String);

// **************************************************************************
// Generator: JsonSerializableGenerator
// Target: class CommitData
// **************************************************************************

CommitData _$CommitDataFromJson(Map json) => new CommitData(
    json['sha'] as String,
    json['commit'] == null ? null : new GitCommit.fromJson(json['commit']),
    json['url'] as String,
    json['html_url'] as String,
    json['comments_url'] as String,
    json['author'] == null ? null : new CommitDataUser.fromJson(json['author']),
    json['committer'] == null
        ? null
        : new CommitDataUser.fromJson(json['committer']),
    (json['parents'] as List)
        ?.map((v0) => v0 as Map<String, dynamic>)
        ?.toList());

// **************************************************************************
// Generator: JsonSerializableGenerator
// Target: class CommitDataUser
// **************************************************************************

CommitDataUser _$CommitDataUserFromJson(Map json) => new CommitDataUser(
    json['login'] as String, json['id'] as int, json['type'] as String);

// **************************************************************************
// Generator: JsonSerializableGenerator
// Target: class CommitInfo
// **************************************************************************

CommitInfo _$CommitInfoFromJson(Map json) => new CommitInfo(
    json['sha'] as String,
    json['tree'] == null ? null : new GitTree.fromJson(json['tree']));

// **************************************************************************
// Generator: JsonSerializableGenerator
// Target: class UserInformation
// **************************************************************************

UserInformation _$UserInformationFromJson(Map json) => new UserInformation(
    json['login'] as String,
    json['id'] as int,
    json['avatar_url'] as String,
    json['html_url'] as String);

// **************************************************************************
// Generator: JsonSerializableGenerator
// Target: class Branch
// **************************************************************************

Branch _$BranchFromJson(Map json) => new Branch(json['name'] as String,
    json['commit'] == null ? null : new CommitData.fromJson(json['commit']));
