import "package:github/server.dart";

import "package:quiver/async.dart";

void main() {
  var github = createGitHubClient(auth: new Authentication.withToken("5fdec2b77527eae85f188b7b2bfeeda170f26883"));
  github.organizations.get("DirectMyFile").then((organization) {
    return github.organizations.listTeams(organization.name).toList();
  }).then((teams) {
    var group = new FutureGroup();
    teams.forEach((team) {
      group.add(github.organizations.listTeamMembers(team.id).toList());
    });
    return group.future;
  }).then((mems) {
    return mems.reduce((value, e) {
      return new Set()..addAll(value)..addAll(e);
    });
  }).then((members) {
    var group = new FutureGroup();
    for (TeamMember member in members) {
      group.add(github.users.listPublicKeys(member.login).toList().then((keys) {
        print("${member.login}:");
        keys.forEach((key) {
          print("- ${key.key}");
        });
      }));
    }
    return group.future;
  }).then((_) => github.dispose());
}