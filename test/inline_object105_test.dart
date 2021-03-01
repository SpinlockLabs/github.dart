import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject105
void main() {
  final instance = InlineObject105();

  group('test InlineObject105', () {
    // The URL of the originating repository.
    // String vcsUrl
    test('to test the property `vcsUrl`', () async {
      // TODO
    });

    // The originating VCS type. Can be one of `subversion`, `git`, `mercurial`, or `tfvc`. Please be aware that without this parameter, the import job will take additional time to detect the VCS type before beginning the import. This detection step will be reflected in the response.
    // String vcs
    test('to test the property `vcs`', () async {
      // TODO
    });

    // If authentication is required, the username to provide to `vcs_url`.
    // String vcsUsername
    test('to test the property `vcsUsername`', () async {
      // TODO
    });

    // If authentication is required, the password to provide to `vcs_url`.
    // String vcsPassword
    test('to test the property `vcsPassword`', () async {
      // TODO
    });

    // For a tfvc import, the name of the project that is being imported.
    // String tfvcProject
    test('to test the property `tfvcProject`', () async {
      // TODO
    });


  });

}
