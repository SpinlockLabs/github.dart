import 'dart:async';

/**
 * Marks something as not being ready or complete.
 */
class NotReadyYet {
  /**
   * Informational Message
   */
  final String message;
  
  const NotReadyYet(this.message);
}

/**
 * Specifies the original API Field Name
 */
class ApiName {
  /**
   * Original API Field Name
   */
  final String name;
  
  const ApiName(this.name);
}

/**
 * Specifies that something should be only used when the specified condition is met.
 */
class OnlyWhen {
  /**
   * Condition
   */
  final String condition;
  
  const OnlyWhen(this.condition);
}

/**
 * Internal method to handle null for parsing dates.
 */
DateTime parseDateTime(String input) {
  if (input == null) {
    return null;
  }
  
  return DateTime.parse(input);
}

String buildQueryString(Map<String, dynamic> params) {
  var queryString = new StringBuffer();
  
  if (params.isNotEmpty && !params.values.every((value) => value == null)) {
    queryString.write("?");
  }
  
  var i = 0;
  for (var key in params.keys) {
    i++;
    if (params[key] == null) {
      continue;
    }
    queryString.write("${key}=${Uri.encodeComponent(params[key].toString())}");
    if (i != params.keys.length) {
      queryString.write("&");
    }
  }
  return queryString.toString();
}

dynamic copyOf(dynamic input) {
  if (input is Iterable) {
    return new List.from(input);
  } else if (input is Map) {
    return new Map.from(input);
  } else {
    throw "type could not be copied";
  }
}

void putValue(String name, dynamic value, Map map) {
  if (value != null) {
    map[name] = value;
  }
}

Map<String, String> parseLinkHeader(String input) {
  var out = {};
  var parts = input.split(", ");
  for (var part in parts) {
    if (part[0] != "<") {
      throw new FormatException("Invalid Link Header");
    }
    var kv = part.split("; ");
    var url = kv[0].substring(1);
    url = url.substring(0, url.length - 1);
    var key = kv[1];
    key = key.replaceAll('"', "").substring(4);
    out[key] = url;
  }
  return out;
}

String fullNameFromRepoApiUrl(String url) {
  var split = url.split("/");
  return split[4] + "/" + split[5];
}

class MapEntry<K, V> {
  final K key;
  final V value;
  
  MapEntry(this.key, this.value);
}

List<MapEntry<dynamic, dynamic>> mapToList(Map<dynamic, dynamic> input) {
  var out = [];
  for (var key in input.keys) {
    out.add(new MapEntry<dynamic, dynamic>(key, input[key]));
  }
  return out;
}

class FutureGroup<E> {
  static const _FINISHED = -1;

  int _pending = 0;
  Future _failedTask;
  final Completer<List> _completer = new Completer<List>();
  final List results = [];

  /** Gets the task that failed, if any. */
  Future get failedTask => _failedTask;

  /**
   * Wait for [task] to complete.
   *
   * If this group has already been marked as completed, a [StateError] will be
   * thrown.
   *
   * If this group has a [failedTask], new tasks will be ignored, because the
   * error has already been signaled.
   */
  void add(Future task) {
    if (_failedTask != null) return;
    if (_pending == _FINISHED) throw new StateError("Future already completed");

    _pending++;
    var i = results.length;
    results.add(null);
    task.then((res) {
      results[i] = res;
      if (_failedTask != null) return;
      _pending--;
      if (_pending == 0) {
        _pending = _FINISHED;
        _completer.complete(results);
      }
    }, onError: (e, s) {
      if (_failedTask != null) return;
      _failedTask = task;
      _completer.completeError(e, s);
    });
  }

  /**
   * A Future that complets with a List of the values from all the added
   * tasks, when they have all completed.
   *
   * If any task fails, this Future will receive the error. Only the first
   * error will be sent to the Future.
   */
  Future<List<E>> get future => _completer.future;
}