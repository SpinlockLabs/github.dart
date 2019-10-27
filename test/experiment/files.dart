import 'package:github/github.dart';

void main() {
  final github = GitHub();

  github.repositories
      .getContents(
        const RepositorySlug('SpinlockLabs', 'github.dart'),
        'pubspec.yaml',
      )
      .then((contents) => contents.file)
      .then((file) => print(file.text))
      .then((_) => github.dispose());
}
