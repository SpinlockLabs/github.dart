import "dart:html";

import "common.dart";

DivElement emojiDiv;
Map<String, String> emojis;

void main() {
  init("emoji.dart", onReady: () {
    emojiDiv = querySelector("#emojis");
    loadEmojis();
    var searchBox = querySelector("#search-box") as InputElement;
    searchBox.onKeyUp.listen((event) {
      filter(searchBox.value);
    });
  });
}

void loadEmojis() {
  github.misc.listEmojis().then((info) {
    emojis = info;
    info.forEach((name, url) {
      var h = new DivElement();
      h.classes.add("box");
      h.classes.add("item");
      h.classes.add("emoji-box");
      h.style.textAlign = "center";
      h.append(new ImageElement(src: url, width: 64, height: 64)
        ..classes.add("emoji"));
      h.append(new ParagraphElement()..text = ":${name}:");
      emojiDiv.append(h);
    });
  });
}

String lastQuery;

void filter(String query) {
  if (lastQuery != null && lastQuery == query) {
    return;
  }
  lastQuery = query;
  var boxes = emojiDiv.children;
  for (var box in boxes) {
    var boxName = box.querySelector("p");
    var t = boxName.text;
    var name = t.substring(1, t.length - 1);
    if (name.contains(query)) {
      box.style.display = "inline";
    } else {
      box.style.display = "none";
    }
  }
}
