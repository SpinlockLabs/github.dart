part of github.common;

/**
 * A Contributor's Statistics for a Repository
 */
class ContributorStatistics {
  final GitHub github;

  /**
   * The Author
   */
  User author;
  
  /**
   * Total Commits
   */
  int total;
  
  /**
   * Weekly Statistics
   */
  List<ContributorWeekStatistics> weeks;

  ContributorStatistics(this.github);

  static ContributorStatistics fromJSON(GitHub github, input) {
    return new ContributorStatistics(github)
        ..author = User.fromJSON(github, input['author'])
        ..total = input['total']
        ..weeks = input['weeks'].map((it) => ContributorWeekStatistics.fromJSON(github, it));
  }
}

class ContributorWeekStatistics {
  final GitHub github;

  /**
   * Beginning of the Week (As a Unix Timestamp)
   */
  String start;
  
  /**
   * Number of Additions
   */
  int additions;
  
  /**
   * Number of Deletions
   */
  int deletions;
  
  /**
   * Number of Commits
   */
  int commits;

  ContributorWeekStatistics(this.github);

  static ContributorWeekStatistics fromJSON(GitHub github, input) {
    return new ContributorWeekStatistics(github)
        ..additions = input['a']
        ..deletions = input['d']
        ..commits = input['c']
        ..start = input['w'];
  }
}

/**
 * Weekly Commit Counts
 */
class WeeklyCommitCounts {
  final GitHub github;
  
  /**
   * Commit Counts for All Users
   */
  List<int> all;
  
  /**
   * Commit Counts for the Owner
   */
  List<int> owner;

  WeeklyCommitCounts(this.github);

  static WeeklyCommitCounts fromJSON(GitHub github, input) {
    return new WeeklyCommitCounts(github)
        ..all = input['all']
        ..owner = input['owner'];
  }
}
