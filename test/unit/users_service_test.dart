import 'package:github/github.dart';
import 'package:http/http.dart';
import 'package:http/testing.dart';
import 'package:test/test.dart';

void main() {
  group(UsersService, () {
    late GitHub github;
    late UsersService usersService;
    Request? lastRequest;

    void setUpGitHub(Future<Response> Function(Request) handler) {
      final client = MockClient((request) async {
        lastRequest = request;
        return handler(request);
      });
      github = GitHub(client: client);
      usersService = UsersService(github);
    }

    tearDown(() {
      lastRequest = null;
    });

    test('getUserById calls correct endpoint and parses response', () async {
      const userResponse = '''
      {
        "login": "octocat",
        "id": 1,
        "node_id": "MDQ6VXNlcjE=",
        "avatar_url": "https://github.com/images/error/octocat_happy.gif",
        "gravatar_id": "",
        "url": "https://api.github.com/users/octocat",
        "html_url": "https://github.com/octocat",
        "followers_url": "https://api.github.com/users/octocat/followers",
        "following_url": "https://api.github.com/users/octocat/following{/other_user}",
        "gists_url": "https://api.github.com/users/octocat/gists{/gist_id}",
        "starred_url": "https://api.github.com/users/octocat/starred{/owner}{/repo}",
        "subscriptions_url": "https://api.github.com/users/octocat/subscriptions",
        "organizations_url": "https://api.github.com/users/octocat/orgs",
        "repos_url": "https://api.github.com/users/octocat/repos",
        "events_url": "https://api.github.com/users/octocat/events{/privacy}",
        "received_events_url": "https://api.github.com/users/octocat/received_events",
        "type": "User",
        "site_admin": false,
        "name": "monalisa octocat",
        "company": "GitHub",
        "blog": "https://github.com/blog",
        "location": "San Francisco",
        "email": "octocat@github.com",
        "bio": "There once was...",
        "twitter_username": "monatheoctocat",
        "public_repos": 2,
        "public_gists": 1,
        "followers": 20,
        "following": 0,
        "created_at": "2008-01-14T04:33:35Z",
        "updated_at": "2008-01-14T04:33:35Z"
      }
      ''';

      setUpGitHub((request) async {
        return Response(userResponse, 200);
      });

      final user = await usersService.getUserById(1);

      expect(user.login, 'octocat');
      expect(user.id, 1);
      expect(user.nodeId, 'MDQ6VXNlcjE=');
      expect(
        user.avatarUrl,
        'https://github.com/images/error/octocat_happy.gif',
      );
      expect(user.gravatarId, '');
      expect(user.url, 'https://api.github.com/users/octocat');
      expect(user.htmlUrl, 'https://github.com/octocat');
      expect(
        user.followersUrl,
        'https://api.github.com/users/octocat/followers',
      );
      expect(
        user.followingUrl,
        'https://api.github.com/users/octocat/following{/other_user}',
      );
      expect(
        user.gistsUrl,
        'https://api.github.com/users/octocat/gists{/gist_id}',
      );
      expect(
        user.starredUrl,
        'https://api.github.com/users/octocat/starred{/owner}{/repo}',
      );
      expect(
        user.subscriptionsUrl,
        'https://api.github.com/users/octocat/subscriptions',
      );
      expect(
        user.organizationsUrl,
        'https://api.github.com/users/octocat/orgs',
      );
      expect(user.reposUrl, 'https://api.github.com/users/octocat/repos');
      expect(
        user.eventsUrl,
        'https://api.github.com/users/octocat/events{/privacy}',
      );
      expect(
        user.receivedEventsUrl,
        'https://api.github.com/users/octocat/received_events',
      );
      expect(user.type, 'User');
      expect(user.siteAdmin, isFalse);
      expect(user.name, 'monalisa octocat');
      expect(user.company, 'GitHub');
      expect(user.blog, 'https://github.com/blog');
      expect(user.location, 'San Francisco');
      expect(user.email, 'octocat@github.com');
      expect(user.bio, 'There once was...');
      expect(user.twitterUsername, 'monatheoctocat');
      expect(user.publicReposCount, 2);
      expect(user.publicGistsCount, 1);
      expect(user.followersCount, 20);
      expect(user.followingCount, 0);
      expect(user.createdAt, DateTime.parse('2008-01-14T04:33:35Z'));
      expect(user.updatedAt, DateTime.parse('2008-01-14T04:33:35Z'));

      expect(lastRequest, isNotNull);
      expect(lastRequest!.method, 'GET');
      expect(lastRequest!.url.path, '/user/1');
    });
  });
}
