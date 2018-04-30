library github.benchmark;

import "dart:async";
import "dart:io";

import "package:github/server.dart";

import "package:quiver/async.dart";

part 'repository.dart';
part 'harness.dart';
part 'config.dart';

GitHub github;

void main() {
  int times = 10;
  github = createGitHubClient(auth: new Authentication.withToken(token));
  runBenchmarks(times, {
    "Fetch Repository": fetchRepository,
    "Fetch Commits": fetchCommits
  }).then((results) {
    BenchmarkHelper.prettyPrint(results);
    exit(0);
  });
}
