import 'package:github/github.dart';

Future<void> main() async {
  final github = GitHub();
  final file = await github.repositories
      .getReadme(RepositorySlug('SpinlockLabs', 'github.dart'));
  print(await github.misc.renderMarkdown(file.text));
  github.dispose();
}
