import "dart:html";

import "package:github/markdown.dart" as markdown;

import "package:github/browser.dart";
import "common.dart";

GitHub github;
DivElement $table;

LanguageBreakdown breakdown;

void main() {
  initGitHub();
  init("languages.dart", onReady: () {
    $table = querySelector("#table");
    loadRepository();
  });
}

void loadRepository() {
  var user = "dart-lang";
  var reponame = "bleeding_edge";
  var token = "5fdec2b77527eae85f188b7b2bfeeda170f26883";

  var params = queryString;

  if (params.containsKey("user")) {
    user = params["user"];
  }

  if (params.containsKey("token")) {
    token = params["token"];
  }

  if (params.containsKey("repo")) {
    reponame = params["repo"];
  }

  document.getElementById("name").setInnerHtml("${user}/${reponame}");

  github = new GitHub(auth: new Authentication.withToken(token));

  github.repositories.listLanguages(new RepositorySlug(user, reponame)).then(
      (b) {
    breakdown = b;
    reloadTable();
  });
}

bool isReloadingTable = false;

void reloadTable({int accuracy: 4}) {
  if (isReloadingTable) {
    return;
  }

  isReloadingTable = true;

  github.misc.renderMarkdown(generateMarkdown(accuracy)).then((html) {
    $table.innerHtml = html;
    isReloadingTable = false;
  });
}

int totalBytes(LanguageBreakdown breakdown) {
  return breakdown.info.values.reduce((a, b) => a + b);
}

String generateMarkdown(int accuracy) {
  int total = totalBytes(breakdown);
  var data = breakdown.toList();

  var tableData = [];

  data.sort((a, b) => b[1].compareTo(a[1]));

  data.forEach((info) {
    String name = info[0];
    int bytes = info[1];
    num percentage = ((bytes / total) * 100);
    tableData.add({
      "Name": name,
      "Bytes": bytes,
      "Percentage": "${percentage.toStringAsFixed(accuracy)}%"
    });
  });
  return markdown.table(tableData);
}
