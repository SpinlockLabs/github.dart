import "dart:html";

import "package:github/browser.dart";
import "package:github/dates.dart";

import "common.dart";

GitHub github;
DivElement $users;

var token = "5fdec2b77527eae85f188b7b2bfeeda170f26883";

void main() {
  initGitHub();
  init("users.dart", onReady: () {
    github = new GitHub(auth: new Authentication.withToken(token));
    $users = querySelector("#users");
    loadUsers();
  });
}

void loadUsers() {
  
  String column = "left";
  
  github.users(pages: 2).take(12).listen((User baseUser) {
    github.user(baseUser.login).then((user) {
      var m = new DivElement();
      m.classes.add("box");
      m.classes.add("user");
      m.classes.add("middle");
      m.classes.add("center");
      
      var h = new DivElement()..classes.add("middle");
      
      for (int i = 1; i <= 2; i++) {
        h.append(new BRElement());
      }
      
      h.append(new ImageElement(src: user.avatarUrl, width: 64, height: 64)..classes.add("avatar"));
      var buff = new StringBuffer();
      
      buff.writeln("Username: <a href=\"${baseUser.url}\">${user.login}</a>");
      buff.writeln("Created: ${friendlyDateTime(user.createdAt)}");
      buff.writeln("Updated: ${friendlyDateTime(user.updatedAt)}");
      
      if (user.company != null && user.company.isNotEmpty) {
        buff.writeln("Company: ${user.company}");
      }
      
      buff.writeln("Followers: ${user.followersCount}");
      
      h.append(new ParagraphElement()..appendHtml(buff.toString().replaceAll("\n", "<br/>")));
      
      m.append(h);
      
      $users.querySelector("#${column}").append(m);
      
      if (column == "left") {
        column = "right";
      } else {
        column = "left";
      }
    });
  });
}
