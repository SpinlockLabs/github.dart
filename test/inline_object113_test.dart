import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject113
void main() {
  final instance = InlineObject113();

  group('test InlineObject113', () {
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

    // Login for the user that this issue should be assigned to. **This field is deprecated.**
    // String assignee
    test('to test the property `assignee`', () async {
      // TODO
    });

    // State of the issue. Either `open` or `closed`.
    // String state
    test('to test the property `state`', () async {
      // TODO
    });

    // OneOfstringinteger milestone
    test('to test the property `milestone`', () async {
      // TODO
    });

    // Labels to associate with this issue. Pass one or more Labels to _replace_ the set of Labels on this Issue. Send an empty array (`[]`) to clear all Labels from the Issue. _NOTE: Only users with push access can set labels for issues. Labels are silently dropped otherwise._
    // List<OneOfstringobject> labels (default value: const [])
    test('to test the property `labels`', () async {
      // TODO
    });

    // Logins for Users to assign to this issue. Pass one or more user logins to _replace_ the set of assignees on this Issue. Send an empty array (`[]`) to clear all assignees from the Issue. _NOTE: Only users with push access can set assignees for new issues. Assignees are silently dropped otherwise._
    // List<String> assignees (default value: const [])
    test('to test the property `assignees`', () async {
      // TODO
    });


  });

}
