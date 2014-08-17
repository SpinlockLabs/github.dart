part of github.client;

class ContributorStatistics {
  final GitHub github;

  User author;
  int total;
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

  DateTime start;
  int additions;
  int deletions;
  int commits;

  ContributorWeekStatistics(this.github);

  static ContributorWeekStatistics fromJSON(GitHub github, input) {
    return new ContributorWeekStatistics(github)
        ..additions = input['a']
        ..deletions = input['d']
        ..commits = input['c']
        ..start = parse_date(input['w']);
  }
}

class WeeklyCommitCounts {
  final GitHub github;
  List<int> all;
  List<int> owner;

  WeeklyCommitCounts(this.github);

  static WeeklyCommitCounts fromJSON(GitHub github, input) {
    return new WeeklyCommitCounts(github)
        ..all = input['all']
        ..owner = input['owner'];
  }
}
