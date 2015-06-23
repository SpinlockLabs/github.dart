part of github.common;

/// Model class for a contributor's statistics for a repository.
class ContributorStatistics {

  /// The Author
  User author;

  /// Total Commits
  int total;

  /// Weekly Statistics
  List<ContributorWeekStatistics> weeks;

  static ContributorStatistics fromJSON(input) {
    if (input == null) return null;

    return new ContributorStatistics()
      ..author = User.fromJSON(input['author'])
      ..total = input['total']
      ..weeks =
      input['weeks'].map((it) => ContributorWeekStatistics.fromJSON(it));
  }
}

/// Model class to represent the number of additions, deletions and commits
/// a contributor made in a given week.
class ContributorWeekStatistics {

  /// Beginning of the Week (As a Unix Timestamp)
  String start;

  /// Number of Additions
  int additions;

  /// Number of Deletions
  int deletions;

  /// Number of Commits
  int commits;

  static ContributorWeekStatistics fromJSON(input) {
    if (input == null) return null;

    return new ContributorWeekStatistics()
      ..additions = input['a']
      ..deletions = input['d']
      ..commits = input['c']
      ..start = input['w'];
  }
}

/// Model class for contributor participation.
class ContributorParticipation {

  /// Commit Counts for All Users
  List<int> all;

  /// Commit Counts for the Owner
  List<int> owner;

  static ContributorParticipation fromJSON(input) {
    if (input == null) return null;

    return new ContributorParticipation()
      ..all = input['all']
      ..owner = input['owner'];
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

  static YearCommitCountWeek fromJSON(input) {
    if (input == null) return null;

    var c = new YearCommitCountWeek();
    c.days = input["days"];
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

  static WeeklyChangesCount fromJSON(input) {
    if (input == null) return null;
    var c = new WeeklyChangesCount();
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

  static PunchcardEntry fromJSON(input) {
    if (input == null) return null;
    var c = new PunchcardEntry();
    c.weekday = input[0];
    c.hour = input[1];
    c.commits = input[2];
    return c;
  }
}
