import 'dart:async';
import 'dart:html';

import 'common.dart';

Element? emojiDiv;

Future<void> main() async {
  await initViewSourceButton('emoji.dart');
  emojiDiv = querySelector('#emojis');
  await loadEmojis();
  final searchBox = querySelector('#search-box') as InputElement;
  searchBox.onKeyUp.listen((event) {
    filter(searchBox.value);
  });
}

Future<void> loadEmojis() async {
  final emojis = await github.misc.listEmojis();

  emojis.forEach((name, url) {
    final h = DivElement();
    h.className = 'emojibox';
    h.style.textAlign = 'center';
    h.append(
        ImageElement(src: url, width: 64, height: 64)..classes.add('emoji'));
    h.append(ParagraphElement()..text = ':$name:');
    emojiDiv!.append(h);
  });
}

String? lastQuery;

void filter(String? query) {
  if (lastQuery != null && lastQuery == query) {
    return;
  }
  lastQuery = query;
  final boxes = emojiDiv!.children;
  for (final box in boxes) {
    final boxName = box.querySelector('p')!;
    final t = boxName.text!;
    final name = t.substring(1, t.length - 1);
    if (name.contains(query!)) {
      box.style.display = 'inline';
    } else {
      box.style.display = 'none';
    }
  }
}
