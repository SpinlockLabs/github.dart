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
  var repos = [
    new RepositorySlug("DirectMyFile", "irc.dart"),
    new RepositorySlug("DirectMyFile", "github.dart"),
    new RepositorySlug("DirectMyFile", "pub-toolkit"),
    new RepositorySlug("DirectMyFile", "devtools")
  ];
  
  github.repositories(repos).then((List<Repository> repositories) {
    for (var repo in repositories) {
      $repos.appendHtml("""
        <div class="repo">
          <div class="line"></div>
          <h2>${repo.fullName}</h2>
          <p><b>Description</b>: ${repo.description}, <b>Owner</b>: ${repo.owner.login}</p>
          <p><b>Language</b>: ${repo.language}, <b>Default Branch</b>: ${repo.defaultBranch}</p>
          <p><b>Subscribers</b>: ${repo.subscribersCount}, <b>Forks</b>: ${repo.forksCount}</p>
          ${ repositories.indexOf(repo) == repositories.length - 1 ? '<div class="line"></div>' : "" }  
      </div>
      """);
    }
  });
}
