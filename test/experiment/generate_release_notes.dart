import 'package:github/github.dart';

Future<void> main() async {
  final github = GitHub(auth: findAuthenticationFromEnvironment());

  var notes = await github.repositories.generateReleaseNotes(
      CreateReleaseNotes('Spinlocklabs', 'github.dart', '1.0.1',
      targetCommitish: '1.0.1', previousTagName: '1.0.0'));
  print(notes.name);
  print(notes.body);
}
