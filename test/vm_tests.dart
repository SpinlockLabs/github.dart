library vm_tests;

import 'package:github/client.dart';
import 'package:scheduled_test/scheduled_test.dart';

void main() {
  GitHub github;
  
  setUp(() {
    github = new GitHub(auth: new Authentication.anonymous());
  });
  
  test('repository fetches correctly', () {
    schedule(() {
      return github.repository(new RepositorySlug("DirectMyFile", "github.dart")).then((repo) {
        expect(repo.name, equals("github.dart"), reason: "repo name should be 'github.dart'");
      });
    }, "Fetch Repository");
  });
}