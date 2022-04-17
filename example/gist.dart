import 'package:github/github.dart';

Future<void> main() async {
  final github = GitHub(auth: findAuthenticationFromEnvironment());
  var g = await github.gists.getGist('c14da36c866b9fe6f84f5d774b76570b');
  print(g.files);
}
