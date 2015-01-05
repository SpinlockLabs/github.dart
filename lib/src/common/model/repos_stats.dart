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

/// Model class for weekly commit counts.
class WeeklyCommitCounts {

  /// Commit Counts for All Users
  List<int> all;

  /// Commit Counts for the Owner
  List<int> owner;

  static WeeklyCommitCounts fromJSON(input) {
    if (input == null) return null;

    return new WeeklyCommitCounts()
      ..all = input['all']
      ..owner = input['owner'];
  }
}
