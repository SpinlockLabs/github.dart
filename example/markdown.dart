import "package:github/browser.dart";
import "common.dart";

void main() {
  init("markdown.dart", onReady: () {
    GitHubBrowserHelper.renderMarkdown(github, "*[markdown]");
  });
}
