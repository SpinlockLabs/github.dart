import 'dart:io';
import 'package:github/client.dart';

void main() {
  var github = new GitHub();
  github.repository(new RepositorySlug("groovy", "groovy-core")).then((repo) {
    return repo.pullRequests(1);
  }).then((pulls) {
    var first = pulls.first;
    if (first.isFullPullRequest) {
      print("ERROR: First Pull Request was labeled as being a full PR!");
      exit(1);
    }
    return first.fetchFullRequest();
  }).then((full) {
    if (!full.isFullPullRequest) {
      print("ERROR: First Pull Request was not labeled as being a full PR!");
      exit(1);
    }
    print("Merged: ${full.merged}");
    if (full.merged) {
      print("Merge Commit: ${full.mergeCommitSha}");
      print("Merged By: ${full.mergedBy.login}");
    }
    print("Mergable: ${full.mergeable}");
  });
}