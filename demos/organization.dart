import "dart:html";

import "package:github/browser.dart";
import "common.dart";

DivElement $org;

void main() {
  init("organization.dart", onReady: () {
    $org = querySelector("#org");
    loadOrganization();
  });
}

void loadOrganization() {
  var org = "DirectMyFile";

  if (queryString["name"] != null) {
    org = queryString["name"];
  }

  github.organizations.get(org).then((Organization org) {
    return github.organizations.listTeams(org.name).toList();
  }).then((List<Team> teams) {
    for (var team in teams) {
      var e = new DivElement()..id = "team-${team.name}";
      e.classes.add("team");
      $org.append(e);
      e.append(new HeadingElement.h3()..text = team.name);
      github.organizations
          .listTeamMembers(team.id)
          .toList()
          .then((List<TeamMember> members) {
        var divs = members.map((member) {
          var h = new DivElement();
          h.classes.add("box");
          h.classes.add("user");
          h.style.textAlign = "center";
          h.append(new ImageElement(
              src: member.avatarUrl, width: 64, height: 64)
            ..classes.add("avatar"));
          h.append(new AnchorElement(href: member.htmlUrl)
            ..append(new ParagraphElement()..text = member.login));
          return h;
        });
        divs.forEach(e.append);
      });
    }
  }).catchError((error) {
    if (error is OrganizationNotFound) {
      window.alert(error.message);
    }
  });
}
