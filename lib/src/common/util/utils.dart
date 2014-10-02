part of github.common;

/// Marks something as not being ready or complete.
class NotReadyYet {
  
  /// Informational Message
  final String message;
  
  const NotReadyYet(this.message);
}

/// Specifies the original API Field Name
class ApiName {
  /**
  /// Original API Field Name
   */
  final String name;
  
  const ApiName(this.name);
}

/// Specifies that something should be only used when the specified condition is met.
class OnlyWhen {
  
  /// Condition
  final String condition;
  
  const OnlyWhen(this.condition);
}

/// Internal method to handle null for parsing dates.
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

int parseFancyNumber(String input) {
  var it = input.endsWith('k') ? input.substring(0, input.length - 1) : input;
  var isThousand = input.endsWith('k');
  var number = num.parse(it);
  if (isThousand) {
    return (number * 1000).toInt();
  }
  return number.toInt();
}

RepositorySlug slugFromAPIUrl(String url) {
  var split = url.split("/");
  var i = split.indexOf("repos") + 1;
  var parts = split.sublist(i, i + 2);
  return new RepositorySlug(parts[0], parts[1]);
}

abstract class StatusCodes {
  static const int OK = 200;
  static const int CREATED = 201;
  static const int ACCEPTED = 202;
  static const int NON_AUTHORITATIVE_INFO = 203;
  static const int NO_CONTENT = 204;
  static const int RESET_CONTENT = 205;
  static const int PARTIAL_CONTENT = 206;
  
  static const int MOVED_PERMANENTLY = 301;
  static const int FOUND = 302;
  static const int NOT_MODIFIED = 304;
  static const int TEMPORARY_REDIRECT = 307;
  
  static const int BAD_REQUEST = 400;
  static const int UNAUTHORIZED = 401;
  static const int PAYMENT_REQUIRED = 402;
  static const int FORBIDDEN = 403;
  static const int NOT_FOUND = 404;
  static const int METHOD_NOT_ALLOWED = 405;
  static const int NOT_ACCEPTABLE = 406;
  static const int PROXY_AUTHENTICATION_REQUIRED = 407;
  static const int REQUEST_TIMEOUT = 408;
  static const int CONFLICT = 409;
  static const int GONE = 410;
  static const int LENGTH_REQUIRED = 411;
  static const int PRECONDITION_FAILED = 412;
  static const int TOO_MANY_REQUESTS = 429;
  
  static bool isClientError(int code) => code > 400 && code < 500;
}