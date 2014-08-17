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
DateTime parse_date(String input) {
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