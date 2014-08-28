import "package:github/server.dart";

void main() {
  initGitHub();
  
  var github = new GitHub(auth: new Authentication.withToken("e0b1a5f13af6e00f9b9db2a32a6dc3c10baa8b13"));
  
  EventPoller poller = github.pollRepositoryEvents(new RepositorySlug("DirectMyFile", "github.dart"));
  
  poller.start().where((event) => event.type == "PullRequestEvent").listen((event) {
    var request = PullRequest.fromJSON(github, event.payload);
    
    request.comment([
      "Thank You for Submitting a Pull Request to GitHub.dart! Reviewers will be with you shortly.",
      ""
      "**Reviewers**: @kaendfinger"
    ].join("\n"));
  });
}
