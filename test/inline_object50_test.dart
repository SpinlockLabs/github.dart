import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject50
void main() {
  final instance = InlineObject50();

  group('test InlineObject50', () {
    // The permission to grant to the team for this project. Can be one of:   \\* `read` - team members can read, but not write to or administer this project.   \\* `write` - team members can read and write, but not administer this project.   \\* `admin` - team members can read, write and administer this project.   Default: the team's `permission` attribute will be used to determine what permission to grant the team on this project. Note that, if you choose not to pass any parameters, you'll need to set `Content-Length` to zero when calling out to this endpoint. For more information, see \"[HTTP verbs](https://docs.github.com/rest/overview/resources-in-the-rest-api#http-verbs).\"
    // String permission
    test('to test the property `permission`', () async {
      // TODO
    });


  });

}
