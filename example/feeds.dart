import 'dart:html';

import 'common.dart';

DivElement? wrapper;

Future<void> main() async {
  await initViewSourceButton('languages.dart');

  wrapper = querySelector('#wrapper') as DivElement?;

  try {
    await _loadFeeds();
  } on GitHubError {
    wrapper?.append(ParagraphElement()..text = 'Token required');
  }
}

Future<void> _loadFeeds() async {
  final result = await github.activity.listFeeds();

  final feeds = [
    ['result.currentUserActorUrl', result.currentUserActorUrl],
    ['result.currentUserUrl', result.currentUserUrl],
    ['result.currentUserOrganizationUrl', result.currentUserOrganizationUrl],
    ['result.currentUserPublicUrl', result.currentUserPublicUrl],
    ['result.timelineUrl', result.timelineUrl],
    ['result.securityAdvisoriesUrl', result.securityAdvisoriesUrl],
    [
      'result.currentUserOrganizationUrls',
      result.currentUserOrganizationUrls
          ?.asMap()
          .map((k, v) => MapEntry(k, '${k + 1}. $v'))
          .values
          .toList()
          .join(' - '),
    ],
  ];

  for (final feed in feeds) {
    final property = feed[0], link = feed[1];

    final textNode = ParagraphElement()
      ..text = '$property: '
      ..append(HeadingElement.h2()..text = '${link ?? 'Token required'}');

    wrapper?.append(textNode);
  }
}
