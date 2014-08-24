part of github.common;

class TrendingRepository {
  String rank;
  html.Element titleObject;
  String get title => titleObject.text;
  
  String get url => "https://github.com/${title}";
  String description;
}

Stream<TrendingRepository> _trendingRepos({String language, String since: "daily"}) {
  var url = "https://github.com/trending";
  
  if (language != null) url += "?l=${language}";
  
  if (since != null) url += language == null ? "?since=${since}" : "&since=${since}";
  
  var controller = new StreamController();
  
  GitHub.defaultClient().request(new http.Request(url)).then((response) {
    var doc = htmlParser.parse(response.body);
    var items = doc.querySelectorAll("li.repo-leaderboard-list-item.leaderboard-list-item");
    
    for (var item in items) {
      var repo = new TrendingRepository();
      repo.rank = item.querySelector("a.leaderboard-list-rank").text;
      repo.titleObject = item.querySelector("h2.repo-leaderboard-title").querySelector("a");
      var desc = item.querySelector("p.repo-leaderboard-description");
      
      if (desc == null) {
        repo.description = "No Description";
      } else {
        repo.description = desc.text;
      }
      
      controller.add(repo);
    }
    
    controller.close();
  });
  
  return controller.stream;
}