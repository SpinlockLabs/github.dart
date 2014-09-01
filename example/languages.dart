import "dart:html";

import "package:github/browser.dart";
import "common.dart";
import "package:quiver/strings.dart";

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
  var url = window.location.href;

  if (url.contains("?")) {
    var params = Uri.splitQueryString(url.substring(url.indexOf('?') + 1));
    if (params.containsKey("user")) {
      user = params["user"];
    }

    if (params.containsKey("token")) {
      token = params["token"];
    }

    if (params.containsKey("repo")) {
      reponame = params["repo"];
    }
  }
  
  document.getElementById("name").setInnerHtml("${user}/${reponame}");

  github = new GitHub(auth: new Authentication.withToken(token));

  github.languages(new RepositorySlug(user, reponame)).then((b) {
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
  
  github.renderMarkdown(generateMarkdown(accuracy)).then((html) {
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
      "Percentage": "${percentage.toStringAsFixed(4)}%"
    });
  });
  return generateTable(tableData);
}

String generateTable(List<Map<String, dynamic>> data) {
  var buff = new StringBuffer();
  var columns = new Set<String>();
  data.forEach((row) => columns.addAll(row.keys));
  var p = [];
  var fm = true;
  for (var column in columns) {
    if (fm) {
      buff.write("|");
      p.add("|");
      fm = false;
    }
    buff.write(" ${column} |");
    p.add("${repeat("-", column.length + 2)}|");
  }
  buff.writeln();
  buff.writeln(p.join());
  data.forEach((row) {
    var values = row.values;
    var fa = true;
    for (var value in values) {
      if (fa) {
        buff.write("|");
        fa = false;
      }
      buff.write(" ${value} |");
    }
    buff.writeln();
  });
  return buff.toString();
}