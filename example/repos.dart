import "dart:html";

import "package:github/browser.dart";
import "package:github/dates.dart";

import "common.dart";

GitHub github;
DivElement $repos;
List<Repository> repos;

Map<String, Comparator<Repository>> sorts = {
  "stars": (Repository a, Repository b) => b.stargazersCount.compareTo(a.stargazersCount),
  "forks": (Repository a, Repository b) => b.forksCount.compareTo(a.forksCount),
  "created": (Repository a, Repository b) => b.createdAt.compareTo(a.createdAt),
  "pushed": (Repository a, Repository b) => b.pushedAt.compareTo(a.pushedAt)
};

void main() {
  var stopwatch = new Stopwatch();
  stopwatch.start();
  initGitHub();
  github = new GitHub(auth: new Authentication.withToken("5fdec2b77527eae85f188b7b2bfeeda170f26883"));

  $repos = querySelector("#repos");

  document.onReadyStateChange.listen((event) {
    if (document.readyState == ReadyState.COMPLETE) {
      stopwatch.stop();
      print("Document Finished Loading in ${stopwatch.elapsedMilliseconds}ms");
      loadRepos();
    }
  });

  querySelector("#reload").onClick.listen((event) {
    loadRepos();
  });

  querySelector("#sort-stars").onClick.listen((event) {
    loadRepos(sorts['stars']);
  });

  querySelector("#sort-forks").onClick.listen((event) {
    loadRepos(sorts['forks']);
  });

  querySelector("#sort-created").onClick.listen((event) {
    loadRepos(sorts['created']);
  });
  
  querySelector("#sort-pushed").onClick.listen((event) {
    loadRepos(sorts['pushed']);
  });

  init("repos.dart");
}

void loadRepos([int compare(Repository a, Repository b)]) {

  var title = querySelector("#title");
  if (title.text.contains("(")) {
    title.replaceWith(new HeadingElement.h2()
        ..text = "GitHub for Dart - Repositories"
        ..id = "title");
  }

  document.querySelector("#repos").children.clear();

  var user = "DirectMyFile";

  var url = window.location.href;
  var showForks = true;

  if (url.contains("?")) {
    var queryString = Uri.splitQueryString(url.substring(url.indexOf('?') + 1));
    if (queryString.containsKey("user")) {
      user = queryString['user'];
    }

    if (queryString.containsKey("forks")) {
      if (["1", "true", "yes", "sure"].contains(queryString['forks'])) {
        showForks = true;
      } else {
        showForks = false;
      }
    }

    if (queryString.containsKey("sort") && compare == null) {
      var sorter = queryString['sort'];
      if (sorts.containsKey(sorter)) {
        compare = sorts[sorter];
      }
    }
  }

  if (compare == null) {
    compare = (a, b) => a.name.compareTo(b.name);
  }

  github.userRepositories(user).toList().then((repos) {
    repos.sort(compare);
    
    for (var repo in repos) {
      $repos.appendHtml("""
        <div class="repo" id="repo_${repo.name}">
          <div class="line"></div>
          <h2><a href="${repo.url}">${repo.name}</a></h2>
          ${repo.description != "" && repo.description != null ? "<b>Description</b>: ${repo.description}<br/>" : ""}
          <b>Language</b>: ${repo.language != null ? repo.language : "Unknown"}
          <br/>
          <b>Default Branch</b>: ${repo.defaultBranch}
          <br/>
          <b>Stars</b>: ${repo.stargazersCount}
          <br/>
          <b>Forks</b>: ${repo.forksCount}
          <br/>
          <b>Created</b>: ${friendlyDateTime(repo.createdAt)}
          <p></p>
        </div>
      """);
    }
  });
}
