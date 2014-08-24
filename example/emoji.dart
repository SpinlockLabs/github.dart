import "dart:html";

import "package:github/browser.dart";
import "common.dart";

GitHub github;
DivElement $emoji;

void main() {
  initGitHub();
  init("emoji.dart", onReady: () {
    $emoji = querySelector("#emojis");
    loadEmojis();
  });
}

void loadEmojis() {
  var token = "5fdec2b77527eae85f188b7b2bfeeda170f26883";
  var url = window.location.href;

  if (url.contains("?")) {
    var params = Uri.splitQueryString(url.substring(url.indexOf('?') + 1));

    if (params.containsKey("token")) {
      token = params["token"];
    }
  }

  github = new GitHub(auth: new Authentication.withToken(token));

  github.emojis().then((info) {
    info.forEach((name, url) {
      var h = new DivElement();
      h.classes.add("box");
      h.classes.add("emoji-box");
      h.style.textAlign = "center";
      h.append(new ImageElement(src: url, width: 64, height: 64)..classes.add("emoji"));
      h.append(new ParagraphElement()..text = name);
      $emoji.append(h);
    });
  });
}
