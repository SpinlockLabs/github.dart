import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject110
void main() {
  final instance = InlineObject110();

  group('test InlineObject110', () {
    // The title of the issue.
    // OneOfstringinteger title
    test('to test the property `title`', () async {
      // TODO
    });

    // The contents of the issue.
    // String body
    test('to test the property `body`', () async {
      // TODO
    });

    // Login for the user that this issue should be assigned to. _NOTE: Only users with push access can set the assignee for new issues. The assignee is silently dropped otherwise. **This field is deprecated.**_
    // String assignee
    test('to test the property `assignee`', () async {
      // TODO
    });

    // OneOfstringinteger milestone
    test('to test the property `milestone`', () async {
      // TODO
    });

    // Labels to associate with this issue. _NOTE: Only users with push access can set labels for new issues. Labels are silently dropped otherwise._
    // List<OneOfstringobject> labels (default value: const [])
    test('to test the property `labels`', () async {
      // TODO
    });

    // Logins for Users to assign to this issue. _NOTE: Only users with push access can set assignees for new issues. Assignees are silently dropped otherwise._
    // List<String> assignees (default value: const [])
    test('to test the property `assignees`', () async {
      // TODO
    });


  });

}
