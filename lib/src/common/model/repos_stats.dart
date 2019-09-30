part of github.common;

/// Model class for a contributor's statistics for a repository.
@JsonSerializable(createToJson: false)
class ContributorStatistics {
  /// The Author
  final User author;

  /// Total Commits
  final int total;

  /// Weekly Statistics
  final List<ContributorWeekStatistics> weeks;

  ContributorStatistics(this.author, this.total, this.weeks);

  factory ContributorStatistics.fromJson(Map<String, dynamic> json) =>
      _$ContributorStatisticsFromJson(json);
}

/// Model class to represent the number of additions, deletions and commits
/// a contributor made in a given week.
@JsonSerializable(createToJson: false)
class ContributorWeekStatistics {
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

  ContributorWeekStatistics(
      this.start, this.additions, this.deletions, this.commits);

  factory ContributorWeekStatistics.fromJson(Map<String, dynamic> json) =>
      _$ContributorWeekStatisticsFromJson(json);

  String toString() =>
      'ContributorWeekStatistics(start: $start, commits: $commits, additions: $additions, deletions: $deletions)';
}

/// Model class for contributor participation.
class ContributorParticipation {
  /// Commit Counts for All Users
  final List<int> all;

  /// Commit Counts for the Owner
  final List<int> owner;

  ContributorParticipation._({
    @required this.all,
    @required this.owner,
  });

  factory ContributorParticipation.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return ContributorParticipation._(
      all: input['all'] as List<int>,
      owner: input['owner'] as List<int>,
    );
  }
}

/// Model class for a week in a full year commit count.
class YearCommitCountWeek {
  /// Commit Counts for each day (starting with Sunday)
  final List<int> days;

  /// Total Commit Count
  final int total;

  /// Timestamp for Beginning of Week
  final int timestamp;

  YearCommitCountWeek._({
    @required this.days,
    @required this.total,
    @required this.timestamp,
  });

  factory YearCommitCountWeek.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return YearCommitCountWeek._(
      days: input["days"] as List<int>,
      total: input["total"],
      timestamp: input["week"],
    );
  }
}

/// Model class for a weekly change count.
class WeeklyChangesCount {
  /// Timestamp for Beginning of Week
  final int timestamp;

  /// Number of Additions
  final int additions;

  /// Number of Deletions
  final int deletions;

  WeeklyChangesCount._({
    @required this.timestamp,
    @required this.additions,
    @required this.deletions,
  });

  factory WeeklyChangesCount.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;
    return WeeklyChangesCount._(
      timestamp: input[0],
      additions: input[1],
      deletions: input[2],
    );
  }
}

/// Model Class for a Punchcard Entry
class PunchcardEntry {
  /// Weekday (With 0 as Sunday and 6 as Saturday)
  final int weekday;

  /// Hour of Day
  final int hour;

  /// Number of Commits
  final int commits;

  PunchcardEntry._({
    @required this.weekday,
    @required this.hour,
    @required this.commits,
  });

  factory PunchcardEntry.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;
    return PunchcardEntry._(
      weekday: input[0],
      hour: input[1],
      commits: input[2],
    );
  }
}
