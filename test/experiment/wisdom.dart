import 'package:github/github.dart';

void main() {
  final github = GitHub();

  github.misc.getWisdom().then((value) {
    print(value);
  }).then((_) => github.dispose());
}
