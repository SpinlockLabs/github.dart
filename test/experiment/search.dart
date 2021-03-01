import 'package:github/github.dart';

void main() {
  final github = GitHub();

  github.search.repositories('github').listen((repo) {
    print(
        '${repo.fullName}: ${repo.description}');
  }).onDone(github.dispose);
}
