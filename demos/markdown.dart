import "common.dart";
import "package:github/browser.dart";

void main() {
  init("markdown.dart", onReady: () {
    GitHubBrowserHelper.renderMarkdown(github, "*[markdown]");
  });
}
