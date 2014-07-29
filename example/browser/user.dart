import "dart:html";

import "package:github/browser.dart";

GitHub github;

void main() {
  github = new GitHub();
  
  var $user = document.querySelector("#user");
  
  github.user("kaendfinger").then((User user) {
    $user.querySelector(".name").appendText(user.name);
  });
}