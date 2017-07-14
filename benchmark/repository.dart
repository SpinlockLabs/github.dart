part of github.benchmark;

Future<Stopwatch> fetchRepository() {
  var watch = new Stopwatch()..start();
  return github.repositories.getRepository(repositorySlug).then((repo) {
    watch.stop();
    return watch;
  });
}

Future<Stopwatch> fetchCommits() {
  var watch = new Stopwatch()..start();

  return github.repositories
      .listCommits(repositorySlug)
      .toList()
      .then((commits) {
    watch.stop();
    return watch;
  });
}
