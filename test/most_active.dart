import "package:github/server.dart";
import "dart:async";
import "package:html5lib/parser.dart" as htmlParser;
import "package:html5lib/dom.dart" as html;
import 'package:github/http.dart' as http;
import "package:quiver/async.dart";
import "dart:convert";
import "dart:io";

List<String> topThousand = [];

List<String> BLACKLIST = [
  'gugod', // 7K commits in 4 days.
  'sindresorhus', // Asked to remove himself from the list.
  'funkenstein', // Appears in the list even though he has 30 followers (bug).
  'scottgonzalez', // Contribution graffiti.
  'beberlei' // 1.7K contribs every day
];

GitHub github = new GitHub(auth: new Authentication.withToken("5fdec2b77527eae85f188b7b2bfeeda170f26883"));

void main() {
  initGitHub();

  fetchTopThousand().then((_) {
    sortByContributions().then((List<Map<String, dynamic>> stats) {
      var firstTen = stats.take(10);

      for (var it in firstTen) {
        print("- ${it["login"]}");

        print("  Contributions: ${it['contributions']}");
      }
    });
  });
}

Future fetchTopThousand() {
  var completer = new Completer();
  StreamSubscription sub;
  
  sub = github.searchUsers("followers:>=296", sort: "followers", pages: 10, perPage: 100).listen((user) {
    topThousand.add(user.login);
    if (topThousand.length == 1000) {
      assert(topThousand.length == 1000);
      sub.cancel();
      completer.complete();
    }
  });
  
  return completer.future;
}

Future sortByContributions() {
  var completer = new Completer();

  var group = new FutureGroup();

  for (var user in topThousand) {
    group.add(getStats(user));
  }

  group.future.then((List<Map<String, dynamic>> stats) {
    stats.sort((a, b) {
      return b['contributions'].compareTo(a['contributions']);
    });

    completer.complete(stats);
  });

  return completer.future;
}

Future<Map<String, dynamic>> getStats(String username) {
  var completer = new Completer();
  var url = "https://github.com/${username}";

  html.Document document;

  html.Node byProp(String field) => document.querySelector("[itemprop='${field}']");

  Map<String, dynamic> userProps;

  github.client.request(new http.Request(url)).then((response) {
    document = htmlParser.parse(response.body);

    var contribDataUrl = "https://github.com/users/${username}/contributions";
    
    userProps = {
      "name": byProp("name").text.trim(),
      "login": byProp("additionalName").text.trim()
    };

    return github.client.request(new http.Request(contribDataUrl));
  }).then((response) {
    List<List<dynamic>> json = JSON.decode(response.body);
    
    int total = 0;
    
    json.forEach((it) {
      total += it[1];
    });
    
    userProps['contributions'] = total;
    
    completer.complete(userProps);
  });

  return completer.future;
}
