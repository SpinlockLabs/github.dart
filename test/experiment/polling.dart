import "package:github/server.dart";

void main() {
  var github = createGitHubClient();

  EventPoller poller = github.activity.pollPublicEvents();

  poller.start().listen((event) {
    print("New Event:");
    print("- Payload: ${event.payload}");
  }).onDone(() => github.dispose());
}
