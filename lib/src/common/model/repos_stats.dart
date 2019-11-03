import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:json_annotation/json_annotation.dart';

part 'repos_stats.g.dart';

/// Model class for a contributor's statistics for a repository.
@JsonSerializable(fieldRename: FieldRename.snake)
class ContributorStatistics {
  ContributorStatistics(this.author, this.total, this.weeks);

  final User author;

  /// Total Commits
  final int total;

  /// Weekly Statistics
  final List<ContributorWeekStatistics> weeks;

  factory ContributorStatistics.fromJson(Map<String, dynamic> input) =>
      _$ContributorStatisticsFromJson(input);
  Map<String, dynamic> toJson() => _$ContributorStatisticsToJson(this);
}

/// Model class to represent the number of additions, deletions and commits
/// a contributor made in a given week.
@JsonSerializable(fieldRename: FieldRename.snake)
class ContributorWeekStatistics {
  ContributorWeekStatistics(
      this.start, this.additions, this.deletions, this.commits);

  /// Beginning of the Week (As a Unix Timestamp)
  @JsonKey(name: 'w')
  final int start;

  /// Number of Additions
  @JsonKey(name: 'a')
  final int additions;

  /// Number of Deletions
  @JsonKey(name: 'd')
  final int deletions;

  /// Number of Commits
  @JsonKey(name: 'c')
  final int commits;

  factory ContributorWeekStatistics.fromJson(Map<String, dynamic> input) =>
      _$ContributorWeekStatisticsFromJson(input);
  Map<String, dynamic> toJson() => _$ContributorWeekStatisticsToJson(this);

  @override
  String toString() =>
      'ContributorWeekStatistics(start: $start, commits: $commits, additions: $additions, deletions: $deletions)';
}

/// Model class for contributor participation.
@JsonSerializable(fieldRename: FieldRename.snake)
class ContributorParticipation {
  ContributorParticipation({
    this.all,
    this.owner,
  });

  /// Commit Counts for All Users
  List<int> all;

  /// Commit Counts for the Owner
  List<int> owner;

  factory ContributorParticipation.fromJson(Map<String, dynamic> input) =>
      _$ContributorParticipationFromJson(input);
  Map<String, dynamic> toJson() => _$ContributorParticipationToJson(this);
}

/// Model class for a week in a full year commit count.
@JsonSerializable(fieldRename: FieldRename.snake)
class YearCommitCountWeek {
  YearCommitCountWeek({
    this.days,
    this.total,
    this.timestamp,
  });

  /// Commit Counts for each day (starting with Sunday)
  List<int> days;

  /// Total Commit Count
  int total;

  /// Timestamp for Beginning of Week
  int timestamp;

  factory YearCommitCountWeek.fromJson(Map<String, dynamic> input) =>
      _$YearCommitCountWeekFromJson(input);
  Map<String, dynamic> toJson() => _$YearCommitCountWeekToJson(this);
}

/// Model class for a weekly change count.
@JsonSerializable(fieldRename: FieldRename.snake)
class WeeklyChangesCount {
  WeeklyChangesCount({
    this.timestamp,
    this.additions,
    this.deletions,
  });

  /// Timestamp for Beginning of Week
  int timestamp;

  /// Number of Additions
  int additions;

  /// Number of Deletions
  int deletions;

  factory WeeklyChangesCount.fromJson(Map<String, dynamic> input) =>
      _$WeeklyChangesCountFromJson(input);
  Map<String, dynamic> toJson() => _$WeeklyChangesCountToJson(this);
}

/// Model Class for a Punchcard Entry
@JsonSerializable(fieldRename: FieldRename.snake)
class PunchcardEntry {
  PunchcardEntry({
    this.weekday,
    this.hour,
    this.commits,
  });

  /// Weekday (With 0 as Sunday and 6 as Saturday)
  int weekday;

  /// Hour of Day
  int hour;

  /// Number of Commits
  int commits;

  factory PunchcardEntry.fromJson(Map<String, dynamic> input) =>
      _$PunchcardEntryFromJson(input);
  Map<String, dynamic> toJson() => _$PunchcardEntryToJson(this);
}
