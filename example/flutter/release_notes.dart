import 'dart:html';

import 'common.dart';
import 'package:pub_semver/pub_semver.dart';

late DivElement releasesDiv;

Future<void> main() async {
  await initViewSourceButton('release_notes.dart');
  releasesDiv = querySelector('#release_notes')! as DivElement;
  releasesDiv.innerText = await loadReleaseNotes();
}

Future<String> loadReleaseNotes() async {
  var slug = RepositorySlug.full('robrbecker/experiment');
  // var slug = RepositorySlug.full('SpinlockLabs/github.dart');

  var latestRelease = await github.repositories.getLatestRelease(slug);
  var latestTag = latestRelease.tagName!;
  var latestVersion = Version.parse(latestTag);

  var unreleasedPRs = await github.search
      .issues(
          'repo:${slug.fullName} is:pull-request label:unreleased state:closed',
          sort: 'desc')
      .toList();
  if (unreleasedPRs.isEmpty) {
    print('No unreleased PRs');
    return '';
  }
  var semvers = Set<String>();
  for (var pr in unreleasedPRs) {
    var prlabels = pr.labels
        .where((element) => element.name.startsWith('semver:'))
        .toList();
    for (var l in prlabels) {
      semvers.add(l.name);
    }
  }
  print(latestTag);
  print(unreleasedPRs.first.toJson());
  print(semvers);

  var newVersion = '';
  if (semvers.contains('semver:major')) {
    newVersion = latestVersion.nextMajor.toString();
  } else if (semvers.contains('semver:minor')) {
    newVersion = latestVersion.nextMinor.toString();
  } else if (semvers.contains('semver:patch')) {
    newVersion = latestVersion.nextPatch.toString();
  }
  print(newVersion);
  if (newVersion.isEmpty) return '';

  var notes = await github.repositories.generateReleaseNotes(CreateReleaseNotes(
      slug.owner, slug.name, newVersion,
      previousTagName: latestTag));
  return '${notes.name}\n${notes.body}';
}
