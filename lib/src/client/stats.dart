part of github.client;

class ContributorStatistics {
  final GitHub github;
  
  User author;
  int total;
  List<ContributorWeekStatistics> weeks;
  
  ContributorStatistics(this.github);
  
  static ContributorStatistics fromJSON(GitHub github, input) {
    var stats = new ContributorStatistics(github);
    stats.author = User.fromJSON(github, input['author']);
    stats.total = input['total'];
    stats.weeks = input['weeks'].map((it) => ContributorWeekStatistics.fromJSON(github, it));
    return stats;
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
    var week = new ContributorWeekStatistics(github);
    week.additions = input['a'];
    week.deletions = input['d'];
    week.commits = input['c'];
    week.start = parse_date(input['w']);
    return week;
  }
}