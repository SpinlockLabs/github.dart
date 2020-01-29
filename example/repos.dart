import 'dart:async';
import 'dart:html';

import 'package:github/github.dart';

import 'common.dart';

DivElement repositoriesDiv;
List<Repository> repos;

Map<String, Comparator<Repository>> sorts = {
  'stars': (Repository a, Repository b) =>
      b.stargazersCount.compareTo(a.stargazersCount),
  'forks': (Repository a, Repository b) => b.forksCount.compareTo(a.forksCount),
  'created': (Repository a, Repository b) => b.createdAt.compareTo(a.createdAt),
  'pushed': (Repository a, Repository b) => b.pushedAt.compareTo(a.pushedAt),
  'size': (Repository a, Repository b) => b.size.compareTo(a.size)
};

Future<void> main() async {
  await initViewSourceButton('repos.dart');

  repositoriesDiv = querySelector('#repos');

  loadRepos();

  querySelector('#reload').onClick.listen((event) {
    loadRepos();
  });

  sorts.keys.forEach((name) {
    querySelector('#sort-$name').onClick.listen((event) {
      if (_reposCache == null) {
        loadRepos(sorts[name]);
      }
      updateRepos(_reposCache, sorts[name]);
    });
  });
}

List<Repository> _reposCache;

void updateRepos(
  List<Repository> repos, [
  int Function(Repository a, Repository b) compare,
]) {
  document.querySelector('#repos').children.clear();
  repos.sort(compare);
  for (final repo in repos) {
    repositoriesDiv.appendHtml('''
        <div class="repo" id="repo_${repo.name}">
          <div class="line"></div>
          <h2><a href="${repo.htmlUrl}">${repo.name}</a></h2>
          ${repo.description != "" && repo.description != null ? "<b>Description</b>: ${repo.description}<br/>" : ""}
          <b>Language</b>: ${repo.language ?? "Unknown"}
          <br/>
          <b>Default Branch</b>: ${repo.defaultBranch}
          <br/>
          <b>Stars</b>: ${repo.stargazersCount}
          <br/>
          <b>Forks</b>: ${repo.forksCount}
          <br/>
          <b>Created</b>: ${repo.createdAt}
          <br/>
          <b>Size</b>: ${repo.size} bytes
          <p></p>
        </div>
      ''', treeSanitizer: NodeTreeSanitizer.trusted);
  }
}

void loadRepos([int Function(Repository a, Repository b) compare]) {
  final title = querySelector('#title');
  if (title.text.contains('(')) {
    title.replaceWith(HeadingElement.h2()
      ..text = 'GitHub for Dart - Repositories'
      ..id = 'title');
  }

  var user = 'SpinlockLabs';

  if (queryString.containsKey('user')) {
    user = queryString['user'];
  }

  if (queryString.containsKey('sort') && compare == null) {
    final sorter = queryString['sort'];
    if (sorts.containsKey(sorter)) {
      compare = sorts[sorter];
    }
  }

  compare ??= (a, b) => a.name.compareTo(b.name);

  github.repositories.listUserRepositories(user).toList().then((repos) {
    _reposCache = repos;
    updateRepos(repos, compare);
  });
}
