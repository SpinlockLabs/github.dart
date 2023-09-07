import 'dart:convert';

import 'package:github/github.dart';
import 'package:github/hooks.dart';
import 'package:test/test.dart';

const _licenseJson = r'''  {
  "name": "LICENSE",
  "path": "LICENSE",
  "sha": "68bcabfb39b7af5a1f5efbb8f651d51e16d60398",
  "size": 2500,
  "url": "https://api.github.com/repos/dart-lang/sdk/contents/LICENSE?ref=master",
  "html_url": "https://github.com/dart-lang/sdk/blob/master/LICENSE",
  "git_url": "https://api.github.com/repos/dart-lang/sdk/git/blobs/68bcabfb39b7af5a1f5efbb8f651d51e16d60398",
  "download_url": "https://raw.githubusercontent.com/dart-lang/sdk/master/LICENSE",
  "type": "file",
  "content": "VGhpcyBsaWNlbnNlIGFwcGxpZXMgdG8gYWxsIHBhcnRzIG9mIERhcnQgdGhh\ndCBhcmUgbm90IGV4dGVybmFsbHkKbWFpbnRhaW5lZCBsaWJyYXJpZXMuIFRo\nZSBleHRlcm5hbCBtYWludGFpbmVkIGxpYnJhcmllcyB1c2VkIGJ5CkRhcnQg\nYXJlOgoKNy1aaXAgLSBpbiB0aGlyZF9wYXJ0eS83emlwCkpTQ1JFIC0gaW4g\ncnVudGltZS90aGlyZF9wYXJ0eS9qc2NyZQpBbnQgLSBpbiB0aGlyZF9wYXJ0\neS9hcGFjaGVfYW50CmFyZ3M0aiAtIGluIHRoaXJkX3BhcnR5L2FyZ3M0agpi\nemlwMiAtIGluIHRoaXJkX3BhcnR5L2J6aXAyCkNvbW1vbnMgSU8gLSBpbiB0\naGlyZF9wYXJ0eS9jb21tb25zLWlvCkNvbW1vbnMgTGFuZyBpbiB0aGlyZF9w\nYXJ0eS9jb21tb25zLWxhbmcKRWNsaXBzZSAtIGluIHRoaXJkX3BhcnR5L2Vj\nbGlwc2UKZ3N1dGlsIC0gaW4gdGhpcmRfcGFydHkvZ3N1dGlsCkd1YXZhIC0g\naW4gdGhpcmRfcGFydHkvZ3VhdmEKaGFtY3Jlc3QgLSBpbiB0aGlyZF9wYXJ0\neS9oYW1jcmVzdApIdHRwbGliMiAtIGluIHNhbXBsZXMvdGhpcmRfcGFydHkv\naHR0cGxpYjIKSlNPTiAtIGluIHRoaXJkX3BhcnR5L2pzb24KSlVuaXQgLSBp\nbiB0aGlyZF9wYXJ0eS9qdW5pdApOU1MgLSBpbiB0aGlyZF9wYXJ0eS9uc3Mg\nYW5kIHRoaXJkX3BhcnR5L25ldF9uc3MKT2F1dGggLSBpbiBzYW1wbGVzL3Ro\naXJkX3BhcnR5L29hdXRoMmNsaWVudApTUUxpdGUgLSBpbiB0aGlyZF9wYXJ0\neS9zcWxpdGUKd2ViZXJrbmVjaHQgLSBpbiB0aGlyZF9wYXJ0eS93ZWJlcmtu\nZWNodAp6bGliIC0gaW4gdGhpcmRfcGFydHkvemxpYgpmZXN0IC0gaW4gdGhp\ncmRfcGFydHkvZmVzdAptb2NraXRvIC0gaW4gdGhpcmRfcGFydHkvbW9ja2l0\nbwoKVGhlIGxpYnJhcmllcyBtYXkgaGF2ZSB0aGVpciBvd24gbGljZW5zZXM7\nIHdlIHJlY29tbWVuZCB5b3UgcmVhZCB0aGVtLAphcyB0aGVpciB0ZXJtcyBt\nYXkgZGlmZmVyIGZyb20gdGhlIHRlcm1zIGJlbG93LgoKQ29weXJpZ2h0IDIw\nMTIsIHRoZSBEYXJ0IHByb2plY3QgYXV0aG9ycy4gQWxsIHJpZ2h0cyByZXNl\ncnZlZC4KUmVkaXN0cmlidXRpb24gYW5kIHVzZSBpbiBzb3VyY2UgYW5kIGJp\nbmFyeSBmb3Jtcywgd2l0aCBvciB3aXRob3V0Cm1vZGlmaWNhdGlvbiwgYXJl\nIHBlcm1pdHRlZCBwcm92aWRlZCB0aGF0IHRoZSBmb2xsb3dpbmcgY29uZGl0\naW9ucyBhcmUKbWV0OgogICAgKiBSZWRpc3RyaWJ1dGlvbnMgb2Ygc291cmNl\nIGNvZGUgbXVzdCByZXRhaW4gdGhlIGFib3ZlIGNvcHlyaWdodAogICAgICBu\nb3RpY2UsIHRoaXMgbGlzdCBvZiBjb25kaXRpb25zIGFuZCB0aGUgZm9sbG93\naW5nIGRpc2NsYWltZXIuCiAgICAqIFJlZGlzdHJpYnV0aW9ucyBpbiBiaW5h\ncnkgZm9ybSBtdXN0IHJlcHJvZHVjZSB0aGUgYWJvdmUKICAgICAgY29weXJp\nZ2h0IG5vdGljZSwgdGhpcyBsaXN0IG9mIGNvbmRpdGlvbnMgYW5kIHRoZSBm\nb2xsb3dpbmcKICAgICAgZGlzY2xhaW1lciBpbiB0aGUgZG9jdW1lbnRhdGlv\nbiBhbmQvb3Igb3RoZXIgbWF0ZXJpYWxzIHByb3ZpZGVkCiAgICAgIHdpdGgg\ndGhlIGRpc3RyaWJ1dGlvbi4KICAgICogTmVpdGhlciB0aGUgbmFtZSBvZiBH\nb29nbGUgSW5jLiBub3IgdGhlIG5hbWVzIG9mIGl0cwogICAgICBjb250cmli\ndXRvcnMgbWF5IGJlIHVzZWQgdG8gZW5kb3JzZSBvciBwcm9tb3RlIHByb2R1\nY3RzIGRlcml2ZWQKICAgICAgZnJvbSB0aGlzIHNvZnR3YXJlIHdpdGhvdXQg\nc3BlY2lmaWMgcHJpb3Igd3JpdHRlbiBwZXJtaXNzaW9uLgpUSElTIFNPRlRX\nQVJFIElTIFBST1ZJREVEIEJZIFRIRSBDT1BZUklHSFQgSE9MREVSUyBBTkQg\nQ09OVFJJQlVUT1JTCiJBUyBJUyIgQU5EIEFOWSBFWFBSRVNTIE9SIElNUExJ\nRUQgV0FSUkFOVElFUywgSU5DTFVESU5HLCBCVVQgTk9UCkxJTUlURUQgVE8s\nIFRIRSBJTVBMSUVEIFdBUlJBTlRJRVMgT0YgTUVSQ0hBTlRBQklMSVRZIEFO\nRCBGSVRORVNTIEZPUgpBIFBBUlRJQ1VMQVIgUFVSUE9TRSBBUkUgRElTQ0xB\nSU1FRC4gSU4gTk8gRVZFTlQgU0hBTEwgVEhFIENPUFlSSUdIVApPV05FUiBP\nUiBDT05UUklCVVRPUlMgQkUgTElBQkxFIEZPUiBBTlkgRElSRUNULCBJTkRJ\nUkVDVCwgSU5DSURFTlRBTCwKU1BFQ0lBTCwgRVhFTVBMQVJZLCBPUiBDT05T\nRVFVRU5USUFMIERBTUFHRVMgKElOQ0xVRElORywgQlVUIE5PVApMSU1JVEVE\nIFRPLCBQUk9DVVJFTUVOVCBPRiBTVUJTVElUVVRFIEdPT0RTIE9SIFNFUlZJ\nQ0VTOyBMT1NTIE9GIFVTRSwKREFUQSwgT1IgUFJPRklUUzsgT1IgQlVTSU5F\nU1MgSU5URVJSVVBUSU9OKSBIT1dFVkVSIENBVVNFRCBBTkQgT04gQU5ZClRI\nRU9SWSBPRiBMSUFCSUxJVFksIFdIRVRIRVIgSU4gQ09OVFJBQ1QsIFNUUklD\nVCBMSUFCSUxJVFksIE9SIFRPUlQKKElOQ0xVRElORyBORUdMSUdFTkNFIE9S\nIE9USEVSV0lTRSkgQVJJU0lORyBJTiBBTlkgV0FZIE9VVCBPRiBUSEUgVVNF\nCk9GIFRISVMgU09GVFdBUkUsIEVWRU4gSUYgQURWSVNFRCBPRiBUSEUgUE9T\nU0lCSUxJVFkgT0YgU1VDSCBEQU1BR0UuCg==\n",
  "encoding": "base64",
  "_links": {
    "self": "https://api.github.com/repos/dart-lang/sdk/contents/LICENSE?ref=master",
    "git": "https://api.github.com/repos/dart-lang/sdk/git/blobs/68bcabfb39b7af5a1f5efbb8f651d51e16d60398",
    "html": "https://github.com/dart-lang/sdk/blob/master/LICENSE"
  },
  "license": {
    "key": "other",
    "name": "Other",
    "spdx_id": null,
    "url": null,
    "node_id": "MDc6TGljZW5zZTA="
  }
}''';

const _pushEventJson = r'''{
  "ref": "refs/heads/main",
  "before": "def456def456",
  "after": "abc123abc123",
  "base_ref": null,
  "repository": {
    "name": "fake-repository",
    "id": 680238321,
    "full_name": "fakeuser/fake-repository",
    "owner": {
      "login": "fakeuser",
      "id": 102626803,
      "avatar_url": "https://avatars.githubusercontent.com/u/102626803?v=4",
      "html_url": "https://github.com/fakeuser"
    },
    "private": false,
    "fork": false,
    "html_url": "https://github.com/fakeuser/fake-repository",
    "description": "",
    "clone_url": "https://github.com/fakeuser/fake-repository.git",
    "ssh_url": "git@github.com:fakeuser/fake-repository.git",
    "svn_url": "https://github.com/fakeuser/fake-repository",
    "git_url": "git://github.com/fakeuser/fake-repository.git",
    "homepage": "",
    "size": 1,
    "stargazers_count": 0,
    "watchers_count": 0,
    "language": "",
    "has_issues": true,
    "has_wiki": true,
    "has_downloads": true,
    "has_pages": false,
    "forks_count": 0,
    "open_issues_count": 0,
    "default_branch": "main",
    "subscribers_count": 0,
    "network_count": 0,
    "created_at": 1692379465,
    "pushed_at": 1694031233,
    "updated_at": "2023-08-18T17:24:25.000Z",
    "archived": false,
    "disabled": false,
    "allow_forking": true,
    "assignees_url": "https://api.github.com/repos/fakeuser/fake-repository/assignees{/user}",
    "blobs_url": "https://api.github.com/repos/fakeuser/fake-repository/git/blobs{/sha}",
    "branches_url": "https://api.github.com/repos/fakeuser/fake-repository/branches{/branch}",
    "collaborators_url": "https://api.github.com/repos/fakeuser/fake-repository/collaborators{/collaborator}",
    "comments_url": "https://api.github.com/repos/fakeuser/fake-repository/comments{/number}",
    "commits_url": "https://api.github.com/repos/fakeuser/fake-repository/commits{/sha}",
    "compare_url": "https://api.github.com/repos/fakeuser/fake-repository/compare/{base}...{head}",
    "contents_url": "https://api.github.com/repos/fakeuser/fake-repository/contents/{+path}",
    "contributors_url": "https://api.github.com/repos/fakeuser/fake-repository/contributors",
    "deployments_url": "https://api.github.com/repos/fakeuser/fake-repository/deployments",
    "downloads_url": "https://api.github.com/repos/fakeuser/fake-repository/downloads",
    "events_url": "https://api.github.com/repos/fakeuser/fake-repository/events",
    "forks": 0,
    "forks_url": "https://api.github.com/repos/fakeuser/fake-repository/forks",
    "git_commits_url": "https://api.github.com/repos/fakeuser/fake-repository/git/commits{/sha}",
    "git_refs_url": "https://api.github.com/repos/fakeuser/fake-repository/git/refs{/sha}",
    "git_tags_url": "https://api.github.com/repos/fakeuser/fake-repository/git/tags{/sha}",
    "has_discussions": false,
    "has_projects": true,
    "hooks_url": "https://api.github.com/repos/fakeuser/fake-repository/hooks",
    "is_template": false,
    "issue_comment_url": "https://api.github.com/repos/fakeuser/fake-repository/issues/comments{/number}",
    "issue_events_url": "https://api.github.com/repos/fakeuser/fake-repository/issues/events{/number}",
    "issues_url": "https://api.github.com/repos/fakeuser/fake-repository/issues{/number}",
    "keys_url": "https://api.github.com/repos/fakeuser/fake-repository/keys{/key_id}",
    "labels_url": "https://api.github.com/repos/fakeuser/fake-repository/labels{/name}",
    "languages_url": "https://api.github.com/repos/fakeuser/fake-repository/languages",
    "master_branch": "main",
    "merges_url": "https://api.github.com/repos/fakeuser/fake-repository/merges",
    "milestones_url": "https://api.github.com/repos/fakeuser/fake-repository/milestones{/number}",
    "node_id": "R_kgDOKIuc8Q",
    "notifications_url": "https://api.github.com/repos/fakeuser/fake-repository/notifications{?since,all,participating}",
    "open_issues": 0,
    "pulls_url": "https://api.github.com/repos/fakeuser/fake-repository/pulls{/number}",
    "releases_url": "https://api.github.com/repos/fakeuser/fake-repository/releases{/id}",
    "stargazers_url": "https://api.github.com/repos/fakeuser/fake-repository/stargazers",
    "statuses_url": "https://api.github.com/repos/fakeuser/fake-repository/statuses/{sha}",
    "subscribers_url": "https://api.github.com/repos/fakeuser/fake-repository/subscribers",
    "subscription_url": "https://api.github.com/repos/fakeuser/fake-repository/subscription",
    "tags_url": "https://api.github.com/repos/fakeuser/fake-repository/tags",
    "teams_url": "https://api.github.com/repos/fakeuser/fake-repository/teams",
    "topics": [],
    "trees_url": "https://api.github.com/repos/fakeuser/fake-repository/git/trees{/sha}",
    "url": "https://github.com/fakeuser/fake-repository",
    "visibility": "public",
    "watchers": 0,
    "web_commit_signoff_required": false
  },
  "head_commit":     {
    "id": "f1eab4d20a72fe5495183136e36584dfab447faf",
    "message": "A message",
    "timestamp": "2023-09-06T15:14:10.000Z",
    "url": "fake-github-url.com"
  },
  "commits": [
    {
      "id": "f1eab4d20a72fe5495183136e36584dfab447faf",
      "message": "A message",
      "timestamp": "2023-09-06T15:14:10.000Z",
      "url": "fake-github-url.com"
    }
  ],
  "sender": {
    "login": "fakeuser",
    "id": 102626803,
    "avatar_url": "https://avatars.githubusercontent.com/u/102626803?v=4",
    "html_url": "https://github.com/fakeuser",
    "site_admin": false,
    "events_url": "https://api.github.com/users/fakeuser/events{/privacy}",
    "followers_url": "https://api.github.com/users/fakeuser/followers",
    "following_url": "https://api.github.com/users/fakeuser/following{/other_user}",
    "gists_url": "https://api.github.com/users/fakeuser/gists{/gist_id}",
    "gravatar_id": "",
    "node_id": "U_kgDOBh318w",
    "organizations_url": "https://api.github.com/users/fakeuser/orgs",
    "received_events_url": "https://api.github.com/users/fakeuser/received_events",
    "repos_url": "https://api.github.com/users/fakeuser/repos",
    "starred_url": "https://api.github.com/users/fakeuser/starred{/owner}{/repo}",
    "subscriptions_url": "https://api.github.com/users/fakeuser/subscriptions",
    "type": "User",
    "url": "https://api.github.com/users/fakeuser"
  }
}
''';

void main() {
  test('License round-trip', () {
    final licenseJson = jsonDecode(_licenseJson) as Map<String, dynamic>;

    final instance = LicenseDetails.fromJson(licenseJson);

    final toJson = instance.toJson();

    expect(_prettyEncode(toJson), _prettyEncode(licenseJson));
  });

  test('PushEvent round-trip', () {
    final pushEventJson = jsonDecode(_pushEventJson) as Map<String, dynamic>;

    final instance = PushEvent.fromJson(pushEventJson);

    final toJson = instance.toJson();

    expect(_prettyEncode(toJson), _prettyEncode(pushEventJson));
  });
}

String _prettyEncode(obj) => GitHubJson.encode(obj, indent: ' ');
