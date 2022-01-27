import 'dart:async';
import 'dart:html';

import 'common.dart';

Future<void> main() async {
  await initViewSourceButton('pr.dart');
  var pr = await github.pullRequests
      .get(RepositorySlug('flutter', 'flutter'), 90295);
  renderPr(pr);
}

void renderPr(PullRequest pr) {
  var prDiv = querySelector('#pr')!;
  prDiv.innerText = pr.toJson().toString();
}
