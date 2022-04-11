import 'dart:html';

import 'common.dart';

DivElement? $stars;

Future<void> main() async {
  await initViewSourceButton('stars.dart');
  $stars = querySelector('#stars') as DivElement?;
  loadStars();
}

void loadStars() {
  var user = queryString['user'] ?? 'SpinlockLabs';
  var repo = queryString['repo'] ?? 'github.dart';

  querySelector('#title')!.appendText(' for $user/$repo');

  github.activity
      .listStargazers(RepositorySlug(user, repo))
      .listen((stargazer) {
    final h = DivElement();
    h.classes.add('box');
    h.classes.add('user');
    h.style.textAlign = 'center';
    h.append(ImageElement(src: stargazer.avatarUrl, width: 64, height: 64)
      ..classes.add('avatar'));
    h.append(AnchorElement(href: stargazer.htmlUrl)
      ..append(ParagraphElement()..text = stargazer.login));
    $stars!.append(h);
  }).onDone(() {
    querySelector('#total')!
        .appendText(querySelectorAll('.user').length.toString() + ' stars');
  });
}
