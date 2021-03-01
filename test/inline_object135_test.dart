import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject135
void main() {
  final instance = InlineObject135();

  group('test InlineObject135', () {
    // The text of the review comment.
    // String body
    test('to test the property `body`', () async {
      // TODO
    });

    // The SHA of the commit needing a comment. Not using the latest commit SHA may render your comment outdated if a subsequent commit modifies the line you specify as the `position`.
    // String commitId
    test('to test the property `commitId`', () async {
      // TODO
    });

    // The relative path to the file that necessitates a comment.
    // String path
    test('to test the property `path`', () async {
      // TODO
    });

    // **Required without `comfort-fade` preview**. The position in the diff where you want to add a review comment. Note this value is not the same as the line number in the file. For help finding the position value, read the note above.
    // int position
    test('to test the property `position`', () async {
      // TODO
    });

    // **Required with `comfort-fade` preview**. In a split diff view, the side of the diff that the pull request's changes appear on. Can be `LEFT` or `RIGHT`. Use `LEFT` for deletions that appear in red. Use `RIGHT` for additions that appear in green or unchanged lines that appear in white and are shown for context. For a multi-line comment, side represents whether the last line of the comment range is a deletion or addition. For more information, see \"[Diff view options](https://help.github.com/en/articles/about-comparing-branches-in-pull-requests#diff-view-options)\" in the GitHub Help documentation.
    // String side
    test('to test the property `side`', () async {
      // TODO
    });

    // **Required with `comfort-fade` preview**. The line of the blob in the pull request diff that the comment applies to. For a multi-line comment, the last line of the range that your comment applies to.
    // int line
    test('to test the property `line`', () async {
      // TODO
    });

    // **Required when using multi-line comments**. To create multi-line comments, you must use the `comfort-fade` preview header. The `start_line` is the first line in the pull request diff that your multi-line comment applies to. To learn more about multi-line comments, see \"[Commenting on a pull request](https://help.github.com/en/articles/commenting-on-a-pull-request#adding-line-comments-to-a-pull-request)\" in the GitHub Help documentation.
    // int startLine
    test('to test the property `startLine`', () async {
      // TODO
    });

    // **Required when using multi-line comments**. To create multi-line comments, you must use the `comfort-fade` preview header. The `start_side` is the starting side of the diff that the comment applies to. Can be `LEFT` or `RIGHT`. To learn more about multi-line comments, see \"[Commenting on a pull request](https://help.github.com/en/articles/commenting-on-a-pull-request#adding-line-comments-to-a-pull-request)\" in the GitHub Help documentation. See `side` in this table for additional context.
    // String startSide
    test('to test the property `startSide`', () async {
      // TODO
    });

    // int inReplyTo
    test('to test the property `inReplyTo`', () async {
      // TODO
    });


  });

}
