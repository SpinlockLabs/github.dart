import 'dart:html';
import 'package:github/src/common.dart';

///  Renders Markdown in HTML using the GitHub API
///
///  TODO: Remove the requirement of [indent] and auto-detect it.
///
///  [github] is the GitHub instance to use.
///  [selector] is the selector to use to find markdown elements.
///  [indent] is the indent that needs to be stripped out.
void renderMarkdown(GitHub github, String selector, {int indent = 4}) {
  final elements = document.querySelectorAll(selector);

  elements.removeWhere((Element it) => it.attributes.containsKey('rendered'));

  for (final e in elements) {
    final txt = e.text;

    final md = txt.split('\n').map((it) {
      return it.length >= indent ? it.substring(indent) : it;
    }).join('\n');

    github.misc.renderMarkdown(md).then((html) {
      e.hidden = false;
      e.setAttribute('rendered', '');
      e.classes.add('markdown-body');
      e.setInnerHtml(html, treeSanitizer: NodeTreeSanitizer.trusted);
    });
  }
}

/// Creates an Image Element from a User that has the user's avatar.
ImageElement createAvatarImage(
  User user, {
  int width = 128,
  int height = 128,
}) {
  return ImageElement(src: user.avatarUrl, width: width, height: height);
}
