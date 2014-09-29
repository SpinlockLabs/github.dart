import "common.dart";
import "package:github/browser.dart";

void main() {
  init("markdown.dart", onReady: () {
    var github = createGitHubClient();
    GitHubBrowserHelper.renderMarkdown(github, "*[markdown]");
  });
}