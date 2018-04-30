import "dart:html";

import "package:github/browser.dart";
import "package:github/dates.dart";

import "common.dart";

DivElement usersDiv;

void main() {
  init("users.dart", onReady: () {
    usersDiv = querySelector("#users");
    loadUsers();
  });
}

void loadUsers() {
  String column = "left";

  github.users.listUsers(pages: 2).take(12).listen((User baseUser) {
    github.users.getUser(baseUser.login).then((user) {
      var m = new DivElement();

      m.classes.addAll(["box", "user", "middle", "center"]);

      var h = new DivElement()..classes.add("middle");

      for (int i = 1; i <= 2; i++) {
        h.append(new BRElement());
      }

      h.append(
          GitHubBrowserHelper.createAvatarImage(user, width: 64, height: 64)
            ..classes.add("avatar"));
      var buff = new StringBuffer();

      buff
        ..writeln("Username: <a href=\"${baseUser.htmlUrl}\">${user.login}</a>")
        ..writeln("Created: ${friendlyDateTime(user.createdAt)}")
        ..writeln("Updated: ${friendlyDateTime(user.updatedAt)}");

      if (user.company != null && user.company.isNotEmpty) {
        buff.writeln("Company: ${user.company}");
      }

      buff.writeln("Followers: ${user.followersCount}");

      h.append(new ParagraphElement()
        ..appendHtml(buff.toString().replaceAll("\n", "<br/>"),
            treeSanitizer: NodeTreeSanitizer.trusted));

      m.append(h);

      usersDiv.querySelector("#${column}");

      if (column == "left") {
        column = "right";
      } else {
        column = "left";
      }
    });
  });
}
