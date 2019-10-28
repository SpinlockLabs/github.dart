import 'package:github/github.dart';

void main() {
  final github = GitHub();

  github.search.repositories('github').listen((repo) {
    print(
        "${repo.fullName}: ${repo.description.isNotEmpty ? repo.description : "No Description"}");
  }).onDone(github.dispose);
}
