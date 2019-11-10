import 'package:github/github.dart';

Future<void> main() async {
  final github = GitHub();
  final wisdom = await github.misc.getWisdom();
  print(wisdom);
  github.dispose();
}
