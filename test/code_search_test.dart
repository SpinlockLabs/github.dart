import 'package:github/server.dart';

Future<void> main() async {
  GitHub github = new GitHub();

  CodeSearchResults results =
      await github.search.code('disposable', repo: 'Workiva/w_common');
}
