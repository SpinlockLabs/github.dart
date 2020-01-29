import 'dart:async';
import 'dart:html';

import 'package:github/github.dart';
import 'common.dart';

DivElement $output;
InputElement $input;
ButtonElement $btn;

Future<void> main() async {
  await initViewSourceButton('organization.dart');
  $output = querySelector('#output');
  $input = querySelector('#input');
  $btn = querySelector('#submit');
  $input.onChange.listen((_) {
    loadOrganization($input.value);
  });
  $btn.onClick.listen((_) {
    loadOrganization($input.value);
  });
  $btn.click();
}

Future<void> loadOrganization(String orgToLoad) async {
  try {
    final org = await github.organizations.get(orgToLoad);
    final html = '''
<br/>Name: ${org.name}
<br/>Id: ${org.id}
<br/>Company: ${org.company}
<br/>Followers: ${org.followersCount}
<br/>Following: ${org.followingCount}
''';
    $output.innerHtml = html;
  } on OrganizationNotFound {
    $output.innerHtml = 'Not found.';
  }
}
