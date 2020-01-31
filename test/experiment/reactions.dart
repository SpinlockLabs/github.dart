import 'package:github/github.dart';

void main() {
  final github = GitHub(auth: findAuthenticationFromEnvironment());
  github.issues
      .listReactions(RepositorySlug('SpinlockLabs', 'github.dart'), 177,
          content: ReactionType.plusOne)
      .listen((Reaction r) {
    print(ReactionType.fromString(r.content).emoji);
  });
}
