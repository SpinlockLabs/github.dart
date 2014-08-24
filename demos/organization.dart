import "dart:html";

import "package:github/browser.dart";
import "common.dart";

GitHub github;
DivElement $org;

void main() {
  initGitHub();
  init("organization.dart", onReady: () {
    $org = querySelector("#org");
    loadOrganization();
  });
}

void loadOrganization() {
  var org = "DirectMyFile";
  var token = "5fdec2b77527eae85f188b7b2bfeeda170f26883";
  var url = window.location.href;

  if (url.contains("?")) {
    var params = Uri.splitQueryString(url.substring(url.indexOf('?') + 1));
    if (params.containsKey("name")) {
      org = params["name"];
    }

    if (params.containsKey("token")) {
      token = params["token"];
    }
  }

  github = new GitHub(auth: new Authentication.withToken(token));

  github.organization(org).then((Organization org) {
    return org.teams().toList();
  }).then((List<Team> teams) {
    for (var team in teams) {
      var e = new DivElement()..id = "team-${team.name}";
      e.classes.add("team");
      $org.append(e);
      e.append(new HeadingElement.h3()..text = team.name);
      team.members().toList().then((List<TeamMember> members) {
        var divs = members.map((member) {
          var h = new DivElement();
          h.classes.add("box");
          h.classes.add("user");
          h.style.textAlign = "center";
          h.append(new ImageElement(src: member.avatarUrl, width: 64, height: 64)..classes.add("avatar"));
          h.append(new AnchorElement(href: member.url)..append(new ParagraphElement()..text = member.login));
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
