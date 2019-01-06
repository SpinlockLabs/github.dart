import "package:github/browser.dart";
import "common.dart";

Future<void> main() async {
  await initViewSourceButton("markdown.dart");
  GitHubBrowserHelper.renderMarkdown(github, "*[markdown]");
}
