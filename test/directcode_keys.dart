import "package:github/server.dart";

import "package:quiver/async.dart";

void main() {
  var github = createGitHubClient(auth: new Authentication.withToken("5fdec2b77527eae85f188b7b2bfeeda170f26883"));
  github.organization("DirectMyFile").then((organization) {
    return organization.teams().toList();
  }).then((teams) {
    var group = new FutureGroup();
    teams.forEach((it) {
      group.add(it.members().toList());
    });
    return group.future;
  }).then((mems) {
    return mems.reduce((List<dynamic> a, List<dynamic> b) => []..addAll(a)..addAll(b));
  }).then((members) {
    for (var member in members) {
      github.publicKeys(member.login).toList().then((keys) {
        print("${member.login}:");
        keys.forEach((key) {
          print("- ${key.key}");
        });
      });
    }
  });
}