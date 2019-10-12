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
  List<int> all;

  /// Commit Counts for the Owner
  List<int> owner;

  static ContributorParticipation fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return ContributorParticipation()
      ..all = input['all'] as List<int>
      ..owner = input['owner'] as List<int>;
  }
}

/// Model class for a week in a full year commit count.
class YearCommitCountWeek {
  /// Commit Counts for each day (starting with Sunday)
  List<int> days;

  /// Total Commit Count
  int total;

  /// Timestamp for Beginning of Week
  int timestamp;

  static YearCommitCountWeek fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    final c = YearCommitCountWeek();
    c.days = input["days"] as List<int>;
    c.total = input["total"];
    c.timestamp = input["week"];
    return c;
  }
}

/// Model class for a weekly change count.
class WeeklyChangesCount {
  /// Timestamp for Beginning of Week
  int timestamp;

  /// Number of Additions
  int additions;

  /// Number of Deletions
  int deletions;

  static WeeklyChangesCount fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;
    final c = WeeklyChangesCount();
    c.timestamp = input[0];
    c.additions = input[1];
    c.deletions = input[2];
    return c;
  }
}

/// Model Class for a Punchcard Entry
class PunchcardEntry {
  /// Weekday (With 0 as Sunday and 6 as Saturday)
  int weekday;

  /// Hour of Day
  int hour;

  /// Number of Commits
  int commits;

  static PunchcardEntry fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;
    final c = PunchcardEntry();
    c.weekday = input[0];
    c.hour = input[1];
    c.commits = input[2];
    return c;
  }
}
