import 'dart:convert';

import 'package:github/src/common/model/pulls.dart';
import 'package:test/test.dart';

const String samplePullRequest = '''
  {
    "url": "https://api.github.com/repos/flutter/cocoon/pulls/2703",
    "id": 1344460863,
    "node_id": "PR_kwDOA8VHis5QItg_",
    "html_url": "https://github.com/flutter/cocoon/pull/2703",
    "diff_url": "https://github.com/flutter/cocoon/pull/2703.diff",
    "patch_url": "https://github.com/flutter/cocoon/pull/2703.patch",
    "issue_url": "https://api.github.com/repos/flutter/cocoon/issues/2703",
    "number": 2703,
    "state": "open",
    "locked": false,
    "title": "Bump url_launcher from 6.1.10 to 6.1.11 in /dashboard",
    "user": {
      "login": "dependabot[bot]",
      "id": 49699333,
      "node_id": "MDM6Qm90NDk2OTkzMzM=",
      "avatar_url": "https://avatars.githubusercontent.com/in/29110?v=4",
      "gravatar_id": "",
      "url": "https://api.github.com/users/dependabot%5Bbot%5D",
      "html_url": "https://github.com/apps/dependabot",
      "type": "Bot",
      "site_admin": false
    },
    "body": "Bumps [url_launcher](https://github.com/flutter/packages/tree/main/packages/url_launcher) from 6.1.10 to 6.1.11.",
    "created_at": "2023-05-09T22:23:34Z",
    "updated_at": "2023-05-09T22:23:35Z",
    "closed_at": null,
    "merged_at": null,
    "merge_commit_sha": "252a1a4370e30631b090eeeda182879985cc8f08",
    "assignee": null,
    "assignees": [

    ],
    "requested_reviewers": [

    ],
    "requested_teams": [

    ],
    "labels": [
      {
        "id": 3960015931,
        "node_id": "LA_kwDOA8VHis7sCQw7",
        "url": "https://api.github.com/repos/flutter/cocoon/labels/autosubmit",
        "name": "autosubmit",
        "color": "0E8A16",
        "default": false,
        "description": "Merge PR when tree becomes green via auto submit App"
      }
    ],
    "milestone": null,
    "draft": false,
    "commits_url": "https://api.github.com/repos/flutter/cocoon/pulls/2703/commits",
    "review_comments_url": "https://api.github.com/repos/flutter/cocoon/pulls/2703/comments",
    "review_comment_url": "https://api.github.com/repos/flutter/cocoon/pulls/comments{/number}",
    "comments_url": "https://api.github.com/repos/flutter/cocoon/issues/2703/comments",
    "statuses_url": "https://api.github.com/repos/flutter/cocoon/statuses/57ec5a040c8a631e39b3f3dee82a77fdf79b6e19",
    "head": {
      "label": "flutter:dependabot/pub/dashboard/url_launcher-6.1.11",
      "ref": "dependabot/pub/dashboard/url_launcher-6.1.11",
      "sha": "57ec5a040c8a631e39b3f3dee82a77fdf79b6e19",
      "user": {
        "login": "flutter",
        "id": 14101776,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjE0MTAxNzc2",
        "avatar_url": "https://avatars.githubusercontent.com/u/14101776?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/flutter",
        "html_url": "https://github.com/flutter",
        "type": "Organization",
        "site_admin": false
      },
      "repo": {
        "id": 63260554,
        "node_id": "MDEwOlJlcG9zaXRvcnk2MzI2MDU1NA==",
        "name": "cocoon",
        "full_name": "flutter/cocoon",
        "private": false,
        "owner": {
          "login": "flutter",
          "id": 14101776,
          "node_id": "MDEyOk9yZ2FuaXphdGlvbjE0MTAxNzc2",
          "avatar_url": "https://avatars.githubusercontent.com/u/14101776?v=4",
          "gravatar_id": "",
          "url": "https://api.github.com/users/flutter",
          "html_url": "https://github.com/flutter",
          "type": "Organization",
          "site_admin": false
        },
        "html_url": "https://github.com/flutter/cocoon",
        "description": "Flutter's build coordinator and aggregator",
        "fork": false,
        "url": "https://api.github.com/repos/flutter/cocoon",
        "forks_url": "https://api.github.com/repos/flutter/cocoon/forks",
        "created_at": "2016-07-13T16:04:04Z",
        "updated_at": "2023-04-12T16:34:46Z",
        "pushed_at": "2023-05-09T22:23:35Z",
        "git_url": "git://github.com/flutter/cocoon.git",
        "ssh_url": "git@github.com:flutter/cocoon.git",
        "clone_url": "https://github.com/flutter/cocoon.git",
        "svn_url": "https://github.com/flutter/cocoon",
        "homepage": null,
        "size": 13247,
        "stargazers_count": 171,
        "watchers_count": 171,
        "license": {
          "key": "bsd-3-clause",
          "name": "BSD 3-Clause New or Revised License",
          "spdx_id": "BSD-3-Clause",
          "url": "https://api.github.com/licenses/bsd-3-clause",
          "node_id": "MDc6TGljZW5zZTU="
        },
        "allow_forking": true,
        "is_template": false,
        "web_commit_signoff_required": false,
        "topics": [

        ],
        "visibility": "public",
        "forks": 91,
        "open_issues": 2,
        "watchers": 171,
        "default_branch": "main",
        "allow_squash_merge": true,
        "allow_merge_commit": false,
        "allow_rebase_merge": false,
        "allow_auto_merge": false,
        "delete_branch_on_merge": false,
        "allow_update_branch": false,
        "use_squash_pr_title_as_default": true,
        "squash_merge_commit_message": "PR_BODY",
        "squash_merge_commit_title": "PR_TITLE",
        "merge_commit_message": "PR_TITLE",
        "merge_commit_title": "MERGE_MESSAGE"
      }
    },
    "base": {
      "label": "flutter:main",
      "ref": "main",
      "sha": "152dd99368b8417b2ede8ed49d5923e594a3b0f2",
      "user": {
        "login": "flutter",
        "id": 14101776,
        "node_id": "MDEyOk9yZ2FuaXphdGlvbjE0MTAxNzc2",
        "avatar_url": "https://avatars.githubusercontent.com/u/14101776?v=4",
        "gravatar_id": "",
        "url": "https://api.github.com/users/flutter",
        "html_url": "https://github.com/flutter",
        "type": "Organization",
        "site_admin": false
      },
      "repo": {
        "id": 63260554,
        "node_id": "MDEwOlJlcG9zaXRvcnk2MzI2MDU1NA==",
        "name": "cocoon",
        "full_name": "flutter/cocoon",
        "private": false,
        "owner": {
          "login": "flutter",
          "id": 14101776,
          "node_id": "MDEyOk9yZ2FuaXphdGlvbjE0MTAxNzc2",
          "avatar_url": "https://avatars.githubusercontent.com/u/14101776?v=4",
          "gravatar_id": "",
          "url": "https://api.github.com/users/flutter",
          "html_url": "https://github.com/flutter",
          "type": "Organization",
          "site_admin": false
        },
        "html_url": "https://github.com/flutter/cocoon",
        "description": "Flutter's build coordinator and aggregator",
        "fork": false,
        "url": "https://api.github.com/repos/flutter/cocoon",
        "forks_url": "https://api.github.com/repos/flutter/cocoon/forks",
        "created_at": "2016-07-13T16:04:04Z",
        "updated_at": "2023-04-12T16:34:46Z",
        "pushed_at": "2023-05-09T22:23:35Z",
        "git_url": "git://github.com/flutter/cocoon.git",
        "ssh_url": "git@github.com:flutter/cocoon.git",
        "clone_url": "https://github.com/flutter/cocoon.git",
        "svn_url": "https://github.com/flutter/cocoon",
        "homepage": null,
        "size": 13247,
        "license": {
          "key": "bsd-3-clause",
          "name": "BSD 3-Clause New or Revised License",
          "spdx_id": "BSD-3-Clause",
          "url": "https://api.github.com/licenses/bsd-3-clause",
          "node_id": "MDc6TGljZW5zZTU="
        },
        "allow_forking": true,
        "is_template": false,
        "web_commit_signoff_required": false,
        "topics": [

        ],
        "visibility": "public",
        "forks": 91,
        "open_issues": 2,
        "watchers": 171,
        "default_branch": "main",
        "allow_squash_merge": true,
        "allow_merge_commit": false,
        "allow_rebase_merge": false,
        "allow_auto_merge": false,
        "delete_branch_on_merge": false,
        "allow_update_branch": false,
        "use_squash_pr_title_as_default": true,
        "squash_merge_commit_message": "PR_BODY",
        "squash_merge_commit_title": "PR_TITLE",
        "merge_commit_message": "PR_TITLE",
        "merge_commit_title": "MERGE_MESSAGE"
      }
    },
    "author_association": "CONTRIBUTOR",
    "auto_merge": null,
    "active_lock_reason": null,
    "merged": false,
    "mergeable": true,
    "rebaseable": true,
    "mergeable_state": "unstable",
    "merged_by": null,
    "comments": 0,
    "review_comments": 0,
    "maintainer_can_modify": false,
    "commits": 1,
    "additions": 119,
    "deletions": 202,
    "changed_files": 2
  }
''';

void main() {
  group('Pull Request fromJson', () {
    test('Node ID is collected', () {
      final pullRequest = PullRequest.fromJson(jsonDecode(samplePullRequest));
      expect(pullRequest, isNotNull);
      expect(pullRequest.nodeId, "PR_kwDOA8VHis5QItg_");
    });
  });
}
