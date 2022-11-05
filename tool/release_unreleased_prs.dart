import 'dart:io';
import 'package:github/github.dart';
import 'package:pub_semver/pub_semver.dart';
import 'package:yaml_edit/yaml_edit.dart';

///////////////////////////////////////////////////////////
const mainBranchName = 'master';
const semverMajor = 'semver:major';
const semverMinor = 'semver:minor';
const semverPatch = 'semver:patch';
const semvers = [semverMajor, semverMinor, semverPatch];
const fullrepo = 'SpinlockLabs/github.dart';
///////////////////////////////////////////////////////////

var _gh = GitHub(auth: findAuthenticationFromEnvironment());
var _slug = RepositorySlug.full(fullrepo);

Future<void> main(List<String> args) async {
  // get the latest released version
  var latestVersion = await getLatestVersion(_slug);

  // get all PRs (issues) that are merged but unreleased
  var unreleased = await getUnreleasedPRs();

  if (unreleased.isEmpty) {
    print('No unreleased PRs found');
    return;
  }

  // Calculate the next version
  var nextVersion = getNextVersion(latestVersion, unreleased);

  // Use the new version to generate release notes
  var notes = await generateReleaseNotes(latestVersion.toString(), nextVersion);

  // update the changelog with the new release notes
  updateChangeLog(notes, nextVersion);

  // update the version in the pubspec
  updatePubspec(nextVersion);

  // commit those changes and push them
  commitUpdates(nextVersion);

  // create a new release in github at main
  await createRelease(nextVersion, mainBranchName);

  // remove the unreleased labels
  for (final i in unreleased) {
    await _gh.issues.removeLabelForIssue(_slug, i.number, 'unreleased');
    await _gh.issues.addLabelsToIssue(_slug, i.number, ['released']);
    await _gh.issues.createComment(_slug, i.number,
        'Released in version $nextVersion https://github.com/$fullrepo/releases/tag/$nextVersion');
  }

  exit(0);
}

String run(String cmd, {List<String>? rest}) {
  var args = <String>[];
  if (rest != null) {
    args = rest;
  } else {
    args = cmd.split(' ');
    if (args.isEmpty) {
      return '';
    }
    cmd = args.removeAt(0);
  }
  var result = Process.runSync(cmd, args);
  if (result.exitCode != 0) {
    print('Command failed');
  }
  if (result.stdout != null) {
    print(result.stdout);
  }
  if (result.stderr != null) {
    print(result.stderr);
  }
  // if (result.exitCode != 0) {
  //   exit(6);
  // }

  return result.stdout;
}

Future<Version> getLatestVersion(RepositorySlug slug) async {
  var latestRelease = await _gh.repositories.getLatestRelease(slug);
  var latestTag = latestRelease.tagName!;
  print('Latest Tag: $latestTag');
  return Version.parse(latestTag);
}

Future<List<Issue>> getUnreleasedPRs() async {
  print('Loading unreleased PRs...');
  var prs = await _gh.search
      .issues(
          'repo:${_slug.fullName} is:pull-request label:unreleased -label:no_release_on_merge  state:closed',
          sort: 'desc')
      .toList();
  print('${prs.length} loaded');
  return prs;
}

String getNextVersion(Version currentVersion, List<Issue> unreleased) {
  var semvers = Set<String>();
  for (final pr in unreleased) {
    var prlabels = pr.labels
        .where((element) => element.name.startsWith('semver:'))
        .toList();
    for (final l in prlabels) {
      semvers.add(l.name);
    }
  }
  print('Calculating next version based on $semvers');
  var newVersion = '';
  if (semvers.contains('semver:major')) {
    newVersion = currentVersion.nextMajor.toString();
  } else if (semvers.contains('semver:minor')) {
    newVersion = currentVersion.nextMinor.toString();
  } else if (semvers.contains('semver:patch')) {
    newVersion = currentVersion.nextPatch.toString();
  }
  print('Next Version: $newVersion');
  return newVersion;
}

Future<String> generateReleaseNotes(
    String fromVersion, String newVersion) async {
  var notes = await _gh.repositories.generateReleaseNotes(CreateReleaseNotes(
      _slug.owner, _slug.name, newVersion,
      previousTagName: fromVersion));

  var releaseNotes = notes.body.replaceFirst('## What\'s Changed', '');

  var r = '## $newVersion\n$releaseNotes';
  print(r);
  return r;
}

void updateChangeLog(String notes, String version) {
  var log = File('CHANGELOG.md');
  var logdata = log.existsSync() ? log.readAsStringSync() : '';
  if (logdata.contains('## $version')) {
    return;
  }
  log.writeAsStringSync('$notes\n\n$logdata');
}

void updatePubspec(String newVersion) {
  var f = File('pubspec.yaml');
  var editor = YamlEditor(f.readAsStringSync());
  editor.update(['version'], newVersion);
  f.writeAsStringSync(editor.toString());
}

Future<Release> createRelease(String version, String target) async {
  print('Creating release ...');
  var release = await _gh.repositories.createRelease(
      _slug,
      CreateRelease.from(
          tagName: version,
          name: version,
          generateReleaseNotes: true,
          targetCommitish: target,
          isDraft: false,
          isPrerelease: false));

  print('Release ${release.name} created ${release.createdAt}');
  print(release.body);
  return release;
}

void commitUpdates(String version) {
  run('git add pubspec.yaml CHANGELOG.md');
  run('git', rest: ['commit', '-m', 'prep $version']);
  run('git push');
}
