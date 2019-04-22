import 'dart:async';
import "dart:html";

import "common.dart";

DivElement emojiDiv;

Future<void> main() async {
  await initViewSourceButton("emoji.dart");
  emojiDiv = querySelector("#emojis");
  await loadEmojis();
  var searchBox = querySelector("#search-box") as InputElement;
  searchBox.onKeyUp.listen((event) {
    filter(searchBox.value);
  });
}

Future<void> loadEmojis() async {
  var emojis = await github.misc.listEmojis();

  emojis.forEach((name, url) {
    var h = DivElement();
    h.className = 'emojibox';
    h.style.textAlign = "center";
    h.append(
        ImageElement(src: url, width: 64, height: 64)..classes.add("emoji"));
    h.append(ParagraphElement()..text = ":$name:");
    emojiDiv.append(h);
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
