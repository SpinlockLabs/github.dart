part of github.common;

/// The [ActivityService] handles communication with activity related methods
/// of the GitHub API.
///
/// API docs: https://developer.github.com/v3/activity/
class ActivityService extends Service {
  ActivityService(GitHub github) : super(github);

  /// Lists public events.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events
  Stream<Event> listPublicEvents({int pages: 2}) {
    return new PaginationHelper(_github).objects(
        "GET", "/events", Event.fromJSON, pages: pages);
  }

  /// Lists public events for a network of repositories.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events-for-a-network-of-repositories
  Stream<Event> listRepositoryNetworkEvents(RepositorySlug slug,
      {int pages: 2}) {
    return new PaginationHelper(_github).objects(
        "GET", "/networks/${slug.fullName}/events", Event.fromJSON,
        pages: pages);
  }

  /// Returns an [EventPoller] for repository network events.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events-for-a-network-of-repositories
  EventPoller pollRepositoryNetworkEvents(RepositorySlug slug) =>
      new EventPoller(_github, "/networks/${slug.fullName}/events");

  /// Returns an [EventPoller] for repository issue events.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-repository-events
  EventPoller pollRepositoryIssueEvents(RepositorySlug slug) =>
      new EventPoller(_github, "/repos/${slug.fullName}/issues/events");

  /// Lists repository issue events.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-repository-events
  Stream<Event> listRepositoryIssueEvents(RepositorySlug slug, {int pages}) {
    return new PaginationHelper(_github).objects(
        "GET", "/repos/${slug.fullName}/issues/events", Event.fromJSON,
        pages: pages);
  }

  /// Returns an [EventPoller] for public events.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events
  EventPoller pollPublicEvents() => new EventPoller(_github, "/events");

  /// Lists repository events.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-repository-events
  Stream<Event> listRepositoryEvents(RepositorySlug slug, {int pages}) {
    return new PaginationHelper(_github).objects(
        "GET", "/repos/${slug.fullName}/events", Event.fromJSON, pages: pages);
  }

  /// Returns an [EventPoller] for repository events.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-repository-events
  EventPoller pollRepositoryEvents(RepositorySlug slug) =>
      new EventPoller(_github, "/repos/${slug.fullName}/events");

  /// Lists public events for an organization.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events-for-an-organization
  Stream<Event> listEventsForOrganization(String name, {int pages}) {
    return new PaginationHelper(_github).objects(
        "GET", "/orgs/${name}/events", Event.fromJSON, pages: pages);
  }

  /// Returns an [EventPoller] for public events for an organization.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events-for-an-organization
  EventPoller pollEventsForOrganization(String name) =>
      new EventPoller(_github, "/orgs/${name}/events");

  /// Returns an [EventPoller] for events performed by a user.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-events-that-a-user-has-received
  EventPoller pollEventsReceivedByUser(String user) =>
      new EventPoller(_github, "/users/${user}/events");

  /// Returns an [EventPoller] for events performed by a user.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events-that-a-user-has-received
  EventPoller pollPublicEventsReceivedByUser(String user) =>
      new EventPoller(_github, "/repos/${user}/events/public");

  /// Lists the events performed by a user.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-events-performed-by-a-user
  Stream<Event> listEventsPerformedByUser(String username, {int pages}) {
    return new PaginationHelper(_github).objects(
        "GET", "/users/${username}/events", Event.fromJSON, pages: pages);
  }

  /// Lists the public events performed by a user.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-public-events-performed-by-a-user
  Stream<Event> listPublicEventsPerformedByUser(String username, {int pages}) {
    return new PaginationHelper(_github).objects(
        "GET", "/users/${username}/events/public", Event.fromJSON,
        pages: pages);
  }

  /// Returns an [EventPoller] for the user's organization dashboard.
  ///
  /// API docs: https://developer.github.com/v3/activity/events/#list-events-for-an-organization
  EventPoller pollUserEventsForOrganization(String user, String organization) =>
      new EventPoller(_github, "/users/${user}/events/orgs/${organization}");

  // TODO: Implement listFeeds: https://developer.github.com/v3/activity/feeds/#list-feeds

  /// Lists all notifications for the current user.
  ///
  /// API docs: https://developer.github.com/v3/activity/notifications/#list-your-notifications
  Stream<Notification> listNotifications(
      {bool all: false, bool participating: false}) {
    return new PaginationHelper(_github).objects(
        "GET", '/notifications', Notification.fromJSON,
        params: {"all": all, "participating": participating});
  }

  /// Lists all notifications for a given repository.
  ///
  /// API docs: https://developer.github.com/v3/activity/notifications/#list-your-notifications-in-a-repository
  Stream<Notification> listRepositoryNotifications(RepositorySlug repository,
      {bool all: false, bool participating: false}) {
    return new PaginationHelper(_github).objects("GET",
        '/repos/${repository.fullName}/notifications', Notification.fromJSON,
        params: {"all": all, "participating": participating});
  }

  /// Marks all notifications up to [lastRead] as read.
  ///
  /// API docs: https://developer.github.com/v3/activity/notifications/#mark-as-read
  Future<bool> markNotificationsRead({DateTime lastRead}) {
    var data = {};

    if (lastRead != null) data["last_read_at"] = lastRead.toIso8601String();

    return _github
        .request("PUT", "/notifications", body: JSON.encode(data))
        .then((response) {
      return response.statusCode == 205;
    });
  }

  /// Marks all notifications up to [lastRead] in the specified repository as
  /// read.
  ///
  /// API docs:https://developer.github.com/v3/activity/notifications/#mark-notifications-as-read-in-a-repository
  Future<bool> markRepositoryNotificationsRead(RepositorySlug slug,
      {DateTime lastRead}) {
    var data = {};

    if (lastRead != null) data["last_read_at"] = lastRead.toIso8601String();

    return _github
        .request("PUT", "/repos/${slug.fullName}/notifications",
            body: JSON.encode(data))
        .then((response) {
      return response.statusCode == 205;
    });
  }

  /// Fetches the specified notification thread.
  ///
  /// API docs: https://developer.github.com/v3/activity/notifications/#view-a-single-thread
  Future<Notification> getThread(String threadId) {
    return _github.getJSON("/notification/threads/${threadId}",
        statusCode: StatusCodes.OK, convert: Notification.fromJSON);
  }

  // TODO: Implement markThreadRead: https://developer.github.com/v3/activity/notifications/#mark-a-thread-as-read
  // TODO: Implement getThreadSubscription: https://developer.github.com/v3/activity/notifications/#get-a-thread-subscription
  // TODO: Implement setThreadSubscription: https://developer.github.com/v3/activity/notifications/#set-a-thread-subscription
  // TODO: Implement deleteThreadSubscription: https://developer.github.com/v3/activity/notifications/#delete-a-thread-subscription

  /// Lists people who have starred the specified repo.
  ///
  /// API docs: https://developer.github.com/v3/activity/starring/#list-stargazers
  Stream<User> listStargazers(RepositorySlug slug) {
    return new PaginationHelper(_github).objects(
        "GET", "/repos/${slug.fullName}/stargazers", User.fromJSON);
  }

  /// Lists all the repos starred by a user.
  ///
  /// API docs: https://developer.github.com/v3/activity/starring/#list-repositories-being-starred
  Stream<Repository> listStarredByUser(String user) {
    return new PaginationHelper(_github).objects(
        "GET", "/users/${user}/starred", Repository.fromJSON);
  }

  /// Lists all the repos by the current user.
  ///
  /// API docs: https://developer.github.com/v3/activity/starring/#list-repositories-being-starred
  Stream<Repository> listStarred() {
    return new PaginationHelper(_github).objects(
        "GET", "/user/starred", Repository.fromJSON);
  }

  /// Checks if the currently authenticated user has starred the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/activity/starring/#check-if-you-are-starring-a-repository
  Future<bool> isStarred(RepositorySlug slug) {
    return _github
        .request("GET", "/user/starred/${slug.fullName}")
        .then((response) {
      return response.statusCode == 204;
    });
  }

  /// Stars the specified repository for the currently authenticated user.
  ///
  /// API docs: https://developer.github.com/v3/activity/starring/#star-a-repository
  Future star(RepositorySlug slug) {
    return _github
        .request("PUT", "/user/starred/${slug.fullName}",
            headers: {"Content-Length": 0})
        .then((response) {
      return null;
    });
  }

  /// Unstars the specified repository for the currently authenticated user.
  ///
  /// API docs: https://developer.github.com/v3/activity/starring/#unstar-a-repository
  Future unstar(RepositorySlug slug) {
    return _github
        .request("DELETE", "/user/starred/${slug.fullName}",
            headers: {"Content-Length": 0})
        .then((response) {
      return null;
    });
  }

  /// Lists the watchers of the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/activity/watching/#list-watchers
  Stream<User> listWatchers(RepositorySlug slug) {
    return new PaginationHelper(_github).objects(
        "GET", "/repos/${slug.fullName}/subscribers", User.fromJSON);
  }

  /// Lists the repositories the specified user is watching.
  ///
  /// API docs: https://developer.github.com/v3/activity/watching/#list-repositories-being-watched
  Stream<Repository> listWatchedByUser(String user) {
    return new PaginationHelper(_github).objects(
        "GET", '/users/${user}/subscriptions', Repository.fromJSON);
  }

  /// Lists the repositories the current user is watching.
  ///
  /// API docs: https://developer.github.com/v3/activity/watching/#list-repositories-being-watched
  Stream<Repository> listWatched() {
    return new PaginationHelper(_github).objects(
        "GET", '/user/subscriptions', Repository.fromJSON);
  }

  /// Fetches repository subscription information.
  ///
  /// API docs: https://developer.github.com/v3/activity/watching/#get-a-repository-subscription
  Future<RepositorySubscription> getRepositorySubscription(
      RepositorySlug slug) {
    return _github.getJSON("/repos/${slug.fullName}/subscription",
        statusCode: StatusCodes.OK, convert: RepositorySubscription.fromJSON);
  }

  /// Sets the Repository Subscription Status
  ///
  /// API docs: https://developer.github.com/v3/activity/watching/#set-a-repository-subscription
  Future<RepositorySubscription> setRepositorySubscription(RepositorySlug slug,
      {bool subscribed, bool ignored}) {
    var map = createNonNullMap({"subscribed": subscribed, "ignored": ignored});

    return _github.postJSON("/repos/${slug.fullName}/subscription",
        statusCode: StatusCodes.OK,
        convert: RepositorySubscription.fromJSON,
        body: map);
  }

  /// Deletes a Repository Subscription
  ///
  /// API docs: https://developer.github.com/v3/activity/watching/#delete-a-repository-subscription
  Future deleteRepositorySubscription(RepositorySlug slug) {
    return _github
        .request("DELETE", "/repos/${slug.fullName}/subscription",
            headers: {"Content-Length": 0})
        .then((response) {
      return null;
    });
  }
}

class EventPoller {
  final GitHub github;
  final String path;
  final List<String> handledEvents = [];

  Timer _timer;
  StreamController _controller;

  String _lastFetched;

  EventPoller(this.github, this.path);

  Stream<Event> start({bool onlyNew: false, int interval, DateTime after}) {
    if (_timer != null) {
      throw new Exception("Polling already started.");
    }

    if (after != null) after = after.toUtc();

    _controller = new StreamController();

    void handleEvent(http.Response response) {
      if (interval == null) {
        interval = int.parse(response.headers['x-poll-interval']);
      }

      if (response.statusCode == 304) {
        return;
      }

      _lastFetched = response.headers['ETag'];

      var json = JSON.decode(response.body);

      if (!(onlyNew && _timer == null)) {
        for (var item in json) {
          var event = Event.fromJSON(item);

          if (event.createdAt.toUtc().isBefore(after)) {
            continue;
          }

          if (handledEvents.contains(event.id)) {
            continue;
          }

          handledEvents.add(event.id);

          _controller.add(event);
        }
      }

      if (_timer == null) {
        _timer = new Timer.periodic(new Duration(seconds: interval), (timer) {
          var headers = {};

          if (_lastFetched != null) {
            headers['If-None-Match'] = _lastFetched;
          }

          github.request("GET", path, headers: headers).then(handleEvent);
        });
      }
    }

    var headers = {};

    if (_lastFetched != null) {
      headers['If-None-Match'] = _lastFetched;
    }

    github.request("GET", path, headers: headers).then(handleEvent);

    return _controller.stream;
  }

  Future stop() {
    if (_timer == null) {
      throw new Exception("Polling not started.");
    }

    _timer.cancel();
    var future = _controller.close();

    _timer = null;
    _controller = null;

    return future;
  }
}
