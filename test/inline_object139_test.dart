import 'package:github/api.dart';
import 'package:test/test.dart';

// tests for InlineObject139
void main() {
  final instance = InlineObject139();

  group('test InlineObject139', () {
    // The SHA of the commit that needs a review. Not using the latest commit SHA may render your review comment outdated if a subsequent commit modifies the line you specify as the `position`. Defaults to the most recent commit in the pull request when you do not specify a value.
    // String commitId
    test('to test the property `commitId`', () async {
      // TODO
    });

    // **Required** when using `REQUEST_CHANGES` or `COMMENT` for the `event` parameter. The body text of the pull request review.
    // String body
    test('to test the property `body`', () async {
      // TODO
    });

    // The review action you want to perform. The review actions include: `APPROVE`, `REQUEST_CHANGES`, or `COMMENT`. By leaving this blank, you set the review action state to `PENDING`, which means you will need to [submit the pull request review](https://docs.github.com/rest/reference/pulls#submit-a-review-for-a-pull-request) when you are ready.
    // String event
    test('to test the property `event`', () async {
      // TODO
    });

    // Use the following table to specify the location, destination, and contents of the draft review comment.
    // List<ReposOwnerRepoPullsPullNumberReviewsComments> comments (default value: const [])
    test('to test the property `comments`', () async {
      // TODO
    });


  });

}
