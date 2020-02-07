import 'dart:async';
import 'dart:convert';
import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:github/src/common/util/pagination.dart';
import 'package:github/src/util.dart';
import 'package:http/http.dart' as http;

/// The [ActivityService] handles communication with activity related methods
/// of the GitHub API.
///
/// API docs: https://developer.github.com/v3/activity/
class ActivityService extends Service {
  ActivityService(GitHub github) : super(github);

  /// Lists public events.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events
  Stream<Event> listPublicEvents({int pages = 2}) {
    return PaginationHelper(github)
        .objects('GET', '/events', (i) => Event.fromJson(i), pages: pages);
  }

  /// Lists public events for a network of repositories.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events-for-a-network-of-repositories
  Stream<Event> listRepositoryNetworkEvents(RepositorySlug slug,
      {int pages = 2}) {
    return PaginationHelper(github).objects(
        'GET', '/networks/${slug.fullName}/events', (i) => Event.fromJson(i),
        pages: pages);
  }

  /// Returns an [EventPoller] for repository network events.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events-for-a-network-of-repositories
  EventPoller pollRepositoryNetworkEvents(RepositorySlug slug) =>
      EventPoller(github, '/networks/${slug.fullName}/events');

  /// Returns an [EventPoller] for repository issue events.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-repository-events
  EventPoller pollRepositoryIssueEvents(RepositorySlug slug) =>
      EventPoller(github, '/repos/${slug.fullName}/issues/events');

  /// Lists repository issue events.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-repository-events
  Stream<Event> listRepositoryIssueEvents(RepositorySlug slug, {int pages}) {
    return PaginationHelper(github).objects('GET',
        '/repos/${slug.fullName}/issues/events', (i) => Event.fromJson(i),
        pages: pages);
  }

  /// Returns an [EventPoller] for public events.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events
  EventPoller pollPublicEvents() => EventPoller(github, '/events');

  /// Lists repository events.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-repository-events
  Stream<Event> listRepositoryEvents(RepositorySlug slug, {int pages}) {
    return PaginationHelper(github).objects(
        'GET', '/repos/${slug.fullName}/events', (i) => Event.fromJson(i),
        pages: pages);
  }

  /// Returns an [EventPoller] for repository events.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-repository-events
  EventPoller pollRepositoryEvents(RepositorySlug slug) =>
      EventPoller(github, '/repos/${slug.fullName}/events');

  /// Lists public events for an organization.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events-for-an-organization
  Stream<Event> listEventsForOrganization(String name, {int pages}) {
    return PaginationHelper(github).objects(
        'GET', '/orgs/$name/events', (i) => Event.fromJson(i),
        pages: pages);
  }

  /// Returns an [EventPoller] for public events for an organization.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events-for-an-organization
  EventPoller pollEventsForOrganization(String name) =>
      EventPoller(github, '/orgs/$name/events');

  /// Returns an [EventPoller] for events received by a user.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-events-that-a-user-has-received
  EventPoller pollEventsReceivedByUser(String user) =>
      EventPoller(github, '/users/$user/received_events');

  /// Returns an [EventPoller] for public events received by a user.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events-that-a-user-has-received
  EventPoller pollPublicEventsReceivedByUser(String user) =>
      EventPoller(github, '/users/$user/received_events/public');

  /// Lists the events performed by a user.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-events-performed-by-a-user
  Stream<Event> listEventsPerformedByUser(String username, {int pages}) {
    return PaginationHelper(github).objects(
        'GET', '/users/$username/events', (i) => Event.fromJson(i),
        pages: pages);
  }

  /// Lists the public events performed by a user.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events-performed-by-a-user
  Stream<Event> listPublicEventsPerformedByUser(String username, {int pages}) {
    return PaginationHelper(github).objects(
        'GET', '/users/$username/events/public', (i) => Event.fromJson(i),
        pages: pages);
  }

  /// Returns an [EventPoller] for the user's organization dashboard.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-events-for-an-organization
  EventPoller pollUserEventsForOrganization(String user, String organization) =>
      EventPoller(github, '/users/$user/events/orgs/$organization');

  // TODO: Implement listFeeds: https://developer.github.com/v3/activity/feeds/#list-feeds

  /// Lists all notifications for the current user.
  ///
  /// API docs: https://developer.github.com/v3/activity/notifications/#list-your-notifications
  Stream<Notification> listNotifications(
      {bool all = false, bool participating = false}) {
    return PaginationHelper(github).objects(
        'GET', '/notifications', (i) => Notification.fromJson(i),
        params: {'all': all, 'participating': participating});
  }

  /// Lists all notifications for a given repository.
  ///
  /// API docs: https://developer.github.com/v3/activity/notifications/#list-your-notifications-in-a-repository
  Stream<Notification> listRepositoryNotifications(RepositorySlug repository,
      {bool all = false, bool participating = false}) {
    return PaginationHelper(github).objects(
        'GET',
        '/repos/${repository.fullName}/notifications',
        (i) => Notification.fromJson(i),
        params: {'all': all, 'participating': participating});
  }

  /// Marks all notifications up to [lastRead] as read.
  ///
  /// API docs: https://developer.github.com/v3/activity/notifications/#mark-as-read
  Future<bool> markNotificationsRead({DateTime lastRead}) {
    final data = {};

    if (lastRead != null) {
      data['last_read_at'] = lastRead.toIso8601String();
    }

    return github
        .request('PUT', '/notifications', body: jsonEncode(data))
        .then((response) {
      return response.statusCode == 205;
    });
  }

  /// Marks all notifications up to [lastRead] in the specified repository as
  /// read.
  ///
  /// API docs:https://developer.github.com/v3/activity/notifications/#mark-notifications-as-read-in-a-repository
  Future<bool> markRepositoryNotificationsRead(
    RepositorySlug slug, {
    DateTime lastRead,
  }) {
    final data = {};

    if (lastRead != null) {
      data['last_read_at'] = lastRead.toIso8601String();
    }

    return github
        .request('PUT', '/repos/${slug.fullName}/notifications',
            body: jsonEncode(data))
        .then((response) {
      return response.statusCode == 205;
    });
  }

  /// Fetches the specified notification thread.
  ///
  /// API docs: https://developer.github.com/v3/activity/notifications/#view-a-single-thread
  Future<Notification> getThread(String threadId) =>
      github.getJSON('/notification/threads/$threadId',
          statusCode: StatusCodes.OK, convert: (i) => Notification.fromJson(i));

  /// Mark the specified notification thread as read.
  ///
  /// API docs: https://developer.github.com/v3/activity/notifications/#mark-a-thread-as-read
  Future<bool> markThreadRead(String threadId) {
    return github
        .request('PATCH', '/notifications/threads/$threadId')
        .then((response) {
      return response.statusCode == StatusCodes.RESET_CONTENT;
    });
  }

  // TODO: Implement getThreadSubscription: https://developer.github.com/v3/activity/notifications/#get-a-thread-subscription
  // TODO: Implement setThreadSubscription: https://developer.github.com/v3/activity/notifications/#set-a-thread-subscription
  // TODO: Implement deleteThreadSubscription: https://developer.github.com/v3/activity/notifications/#delete-a-thread-subscription

  /// Lists people who have starred the specified repo.
  ///
  /// API docs: https://developer.github.com/v3/activity/starring/#list-stargazers
  Stream<User> listStargazers(RepositorySlug slug) {
    return PaginationHelper(github).objects(
        'GET', '/repos/${slug.fullName}/stargazers', (i) => User.fromJson(i));
  }

  /// Lists all the repos starred by a user.
  ///
  /// API docs: https://developer.github.com/v3/activity/starring/#list-repositories-being-starred
  Stream<Repository> listStarredByUser(String user) {
    return PaginationHelper(github)
        .objects('GET', '/users/$user/starred', (i) => Repository.fromJson(i));
  }

  /// Lists all the repos by the current user.
  ///
  /// API docs: https://developer.github.com/v3/activity/starring/#list-repositories-being-starred
  Stream<Repository> listStarred() {
    return PaginationHelper(github)
        .objects('GET', '/user/starred', (i) => Repository.fromJson(i));
  }

  /// Checks if the currently authenticated user has starred the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/activity/starring/#check-if-you-are-starring-a-repository
  Future<bool> isStarred(RepositorySlug slug) {
    return github
        .request('GET', '/user/starred/${slug.fullName}')
        .then((response) {
      return response.statusCode == 204;
    });
  }

  /// Stars the specified repository for the currently authenticated user.
  ///
  /// API docs: https://developer.github.com/v3/activity/starring/#star-a-repository
  Future star(RepositorySlug slug) {
    return github.request('PUT', '/user/starred/${slug.fullName}',
        headers: {'Content-Length': '0'}).then((response) {
      return null;
    });
  }

  /// Unstars the specified repository for the currently authenticated user.
  ///
  /// API docs: https://developer.github.com/v3/activity/starring/#unstar-a-repository
  Future unstar(RepositorySlug slug) {
    return github.request('DELETE', '/user/starred/${slug.fullName}',
        headers: {'Content-Length': '0'}).then((response) {
      return null;
    });
  }

  /// Lists the watchers of the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/activity/watching/#list-watchers
  Stream<User> listWatchers(RepositorySlug slug) {
    return PaginationHelper(github).objects(
        'GET', '/repos/${slug.fullName}/subscribers', (i) => User.fromJson(i));
  }

  /// Lists the repositories the specified user is watching.
  ///
  /// API docs: https://developer.github.com/v3/activity/watching/#list-repositories-being-watched
  Stream<Repository> listWatchedByUser(String user) {
    return PaginationHelper(github).objects(
        'GET', '/users/$user/subscriptions', (i) => Repository.fromJson(i));
  }

  /// Lists the repositories the current user is watching.
  ///
  /// API docs: https://developer.github.com/v3/activity/watching/#list-repositories-being-watched
  Stream<Repository> listWatched() {
    return PaginationHelper(github)
        .objects('GET', '/user/subscriptions', (i) => Repository.fromJson(i));
  }

  /// Fetches repository subscription information.
  ///
  /// API docs: https://developer.github.com/v3/activity/watching/#get-a-repository-subscription
  Future<RepositorySubscription> getRepositorySubscription(
          RepositorySlug slug) =>
      github.getJSON('/repos/${slug.fullName}/subscription',
          statusCode: StatusCodes.OK,
          convert: (i) => RepositorySubscription.fromJson(i));

  /// Sets the Repository Subscription Status
  ///
  /// API docs: https://developer.github.com/v3/activity/watching/#set-a-repository-subscription
  Future<RepositorySubscription> setRepositorySubscription(
    RepositorySlug slug, {
    bool subscribed,
    bool ignored,
  }) {
    final map =
        createNonNullMap({'subscribed': subscribed, 'ignored': ignored});

    return github.postJSON(
      '/repos/${slug.fullName}/subscription',
      statusCode: StatusCodes.OK,
      convert: (i) => RepositorySubscription.fromJson(i),
      body: jsonEncode(map),
    );
  }

  /// Deletes a Repository Subscription
  ///
  /// API docs: https://developer.github.com/v3/activity/watching/#delete-a-repository-subscription
  Future deleteRepositorySubscription(RepositorySlug slug) {
    return github.request('DELETE', '/repos/${slug.fullName}/subscription',
        headers: {'Content-Length': '0'}).then((response) {
      return null;
    });
  }
}

class EventPoller {
  final GitHub github;
  final String path;
  final List<String> handledEvents = [];

  Timer _timer;
  StreamController<Event> _controller;

  String _lastFetched;

  EventPoller(this.github, this.path);

  Stream<Event> start({bool onlyNew = false, int interval, DateTime after}) {
    if (_timer != null) {
      throw Exception('Polling already started.');
    }

    if (after != null) {
      after = after.toUtc();
    }

    _controller = StreamController<Event>();

    void handleEvent(http.Response response) {
      interval ??= int.parse(response.headers['x-poll-interval']);

      if (response.statusCode == 304) {
        return;
      }

      _lastFetched = response.headers['ETag'];

      final json = List<Map<String, dynamic>>.from(jsonDecode(response.body));

      if (!(onlyNew && _timer == null)) {
        for (final item in json) {
          final event = Event.fromJson(item);

          if (after == null ? false : event.createdAt.toUtc().isBefore(after)) {
            continue;
          }

          if (handledEvents.contains(event.id)) {
            continue;
          }

          handledEvents.add(event.id);

          _controller.add(event);
        }
      }

      _timer ??= Timer.periodic(Duration(seconds: interval), (timer) {
        final headers = <String, String>{};

        if (_lastFetched != null) {
          headers['If-None-Match'] = _lastFetched;
        }

        github.request('GET', path, headers: headers).then(handleEvent);
      });
    }

    final headers = <String, String>{};

    if (_lastFetched != null) {
      headers['If-None-Match'] = _lastFetched;
    }

    github.request('GET', path, headers: headers).then(handleEvent);

    return _controller.stream;
  }

  Future stop() {
    if (_timer == null) {
      throw Exception('Polling not started.');
    }

    _timer.cancel();
    final future = _controller.close();

    _timer = null;
    _controller = null;

    return future;
  }
}
