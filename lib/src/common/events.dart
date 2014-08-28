part of github.common;

class EventPoller {
  final GitHub github;
  final String path;
  final List<String> handledEvents = [];

  Timer _timer;
  StreamController _controller;
  
  String _lastFetch;

  EventPoller(this.github, this.path);

  Stream<Event> start({bool onlyNew: false, int interval}) {
    if (_timer != null) {
      throw new Exception("Polling already started.");
    }

    _controller = new StreamController();

    void handleEvent(http.Response response) {
      if (interval == null) {
        interval = int.parse(response.headers['x-poll-interval']);
      }
      
      if (response.statusCode == 304) {
        return;
      }
      
      var json = JSON.decode(response.body);
      
      if (!(onlyNew && _timer == null)) {
        for (var item in json) {
          var event = Event.fromJSON(github, item);
          
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
          
          if (_lastFetch != null) {
            headers['If-None-Match'] = _lastFetch;
          }
          
          github.request("GET", path, headers: headers).then(handleEvent);
        });
      }
    }
    
    var headers = {};
    
    if (_lastFetch != null) {
      headers['If-None-Match'] = _lastFetch;
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

class Event {
  final GitHub github;

  Repository repo;
  User actor;
  Organization org;

  @ApiName("created_at")
  DateTime createdAt;

  String id;

  Map<String, dynamic> payload;

  Event(this.github);

  static Event fromJSON(GitHub github, input) {
    var event = new Event(github);

    event
        ..repo = Repository.fromJSON(github, input['repo'])
        ..org = Organization.fromJSON(github, input['org'])
        ..createdAt = parseDateTime(input['created_at'])
        ..id = input['id']
        ..actor = User.fromJSON(github, input['actor'])
        ..payload = input['payload'];

    return event;
  }
}
