import "dart:html";

import "package:github/browser.dart";

import "common.dart";

GitHub github;
DivElement $repos;

void main() {
  var stopwatch = new Stopwatch();
  stopwatch.start();
  github = new GitHub(new BrowserFetcher());

  $repos = querySelector("#repos");

  document.onReadyStateChange.listen((event) {
    if (document.readyState == ReadyState.COMPLETE) {
      stopwatch.stop();
      print("Document Finished Loading in ${stopwatch.elapsedMilliseconds}ms");
      loadRepos();
    }
  });
  
  init("repository.dart");
}

void loadRepos() {  
  github.userRepositories("DirectMyFile").then((List<Repository> repositories) {
    repositories.sort((a, b) => a.name.compareTo(b.name));
    for (var repo in repositories) {
      if (repo.fork) {
        continue;
      }
      
      $repos.appendHtml("""
        <div class="repo">
          <div class="line"></div>
          <h2><a href="${repo.url}">${repo.fullName}</a></h2>
          <b>Description</b>: ${repo.description}
          <br/>
          <b>Language</b>: ${repo.language != null ? repo.language : "Unknown"}
          <br/>
          <b>Default Branch</b>: ${repo.defaultBranch}
          <br/>
          <b>Stars</b>: ${repo.stargazersCount}
          <br/>
          <b>Forks</b>: ${repo.forksCount}
          ${ repositories.indexOf(repo) == repositories.length - 1 ? '<div class="line"></div>' : "" }  
      </div>
      """);
    }
  });
}
