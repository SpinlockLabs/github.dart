import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for SelectedActions
void main() {
  final instance = SelectedActions();

  group('test SelectedActions', () {
    // Whether GitHub-owned actions are allowed. For example, this includes the actions in the `actions` organization.
    // bool githubOwnedAllowed
    test('to test the property `githubOwnedAllowed`', () async {
      // TODO
    });

    // Whether actions in GitHub Marketplace from verified creators are allowed. Set to `true` to allow all GitHub Marketplace actions by verified creators.
    // bool verifiedAllowed
    test('to test the property `verifiedAllowed`', () async {
      // TODO
    });

    // Specifies a list of string-matching patterns to allow specific action(s). Wildcards, tags, and SHAs are allowed. For example, `monalisa/octocat@*`, `monalisa/octocat@v2`, `monalisa/_*`.\"
    // List<String> patternsAllowed (default value: const [])
    test('to test the property `patternsAllowed`', () async {
      // TODO
    });


  });

}
