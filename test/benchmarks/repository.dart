part of github.benchmark;

Future<Stopwatch> fetchRepository() {
  var watch = new Stopwatch()..start();
  return github.repositories.getRepository(REPOSITORY_SLUG).then((repo) {
    watch.stop();
    return watch;
  });
}

Future<Stopwatch> fetchCommits() {
  var watch = new Stopwatch()..start();

  return github.repositories
      .listCommits(REPOSITORY_SLUG)
      .toList()
      .then((commits) {
    watch.stop();
    return watch;
  });
}
