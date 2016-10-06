import "dart:html";

import "package:github/browser.dart";
import "common.dart";

DivElement info;

void main() {
  init("user_info.dart", onReady: () {
    info = document.getElementById("info");
    loadUser();
  });
}

GitHub createClient(String token) {
  return new GitHub(auth: new Authentication.withToken(token));
}

void loadUser() {
  var token = document.getElementById("token") as InputElement;
  document.getElementById("load").onClick.listen((event) {
    if (token.value == null || token.value.isEmpty) {
      window.alert("Please Enter a Token");
      return;
    }

    github = createClient(token.value);

    github.users.getCurrentUser().then((CurrentUser user) {
      info.children.clear();
      info.hidden = false;
      info.appendHtml("""
      <b>Name</b>: ${user.name}
      """);

      void append(String name, dynamic value) {
        if (value != null) {
          info.appendHtml("""
            <br/>
            <b>${name}</b>: ${value.toString()}
          """);
        }
      }

      append("Biography", user.bio);
      append("Company", user.company);
      append("Email", user.email);
      append("Followers", user.followersCount);
      append("Following", user.followingCount);
      append("Disk Usage", user.diskUsage);
      append("Plan Name", user.plan.name);
      append("Created", user.createdAt);
      document.getElementById("load").hidden = true;
      document.getElementById("token").hidden = true;
    }).catchError((e) {
      if (e is AccessForbidden) {
        window.alert("Invalid Token");
      }
    });
  });
}
