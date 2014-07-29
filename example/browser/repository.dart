import "dart:html";

import "package:github/browser.dart";

GitHub github;
DivElement $repo;

void main() {
  var stopwatch = new Stopwatch();
  stopwatch.start();
  github = new GitHub(new BrowserFetcher());
  
  $repo = querySelector("#repo");
  
  document.onReadyStateChange.listen((event) {
    if (document.readyState == ReadyState.COMPLETE) {
      stopwatch.stop();
      print("Document Finished Loading in ${stopwatch.elapsedMilliseconds}ms");
      loadRepo();
    }
  });
}

void loadRepo() {
  github.repository("DirectMyFile", "irc.dart").then((Repository repo) {
    $repo.appendHtml("""
    <h2>${repo.fullName}</h2>
    <p><b>Description</b>: ${repo.description}, <b>Owner</b>: ${repo.owner.login}</p>
    <p><b>Language</b>: ${repo.language}, <b>Default Branch</b>: ${repo.defaultBranch}</p>
    <p><b>Subscribers</b>: ${repo.subscribersCount}, <b>Forks</b>: ${repo.forksCount}</p>
    """);
  });
}