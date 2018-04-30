final RegExp githubDateRemoveRegExp = new RegExp(r'\.\d*');

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
    queryString.write("$key=${Uri.encodeComponent(params[key].toString())}");
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

/// Puts a [name] and [value] into the [map] if [value] is not null. If [value]
/// is null, nothing is added.
void putValue(String name, dynamic value, Map<String, dynamic> map) {
  if (value != null) {
    map[name] = value;
  }
}

//TODO(kevmoo): use regex here.
Map<String, String> parseLinkHeader(String input) {
  var out = <String, String>{};
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

List<MapEntry<dynamic, dynamic>> mapToList(Map<dynamic, dynamic> input) {
  var out = <MapEntry<dynamic, dynamic>>[];
  for (var key in input.keys) {
    out.add(new MapEntry<dynamic, dynamic>(key, input[key]));
  }
  return out;
}

class MapEntry<K, V> {
  final K key;
  final V value;

  MapEntry(this.key, this.value);
}

/// Internal method to handle null for parsing dates.
DateTime parseDateTime(String input) {
  if (input == null) {
    return null;
  }

  return DateTime.parse(input);
}

Map<String, dynamic> createNonNullMap(Map<String, dynamic> input) {
  var map = <String, dynamic>{};
  for (var key in input.keys) {
    if (input[key] != null) {
      map[key] = input[key];
    }
  }
  return map;
}

// TODO: only used in test – delete?
int parseFancyNumber(String input) {
  input = input.trim();
  if (input.contains(",")) input = input.replaceAll(",", "");

  var multipliers = {"h": 100, "k": 1000, "ht": 100000, "m": 1000000};
  int value;

  if (!multipliers.keys.any((m) => input.endsWith(m))) {
    value = int.parse(input);
  } else {
    var m = multipliers.keys.firstWhere((m) => input.endsWith(m));
    input = input.substring(0, input.length - m.length);
    value = num.parse(input) * multipliers[m];
  }

  return value;
}
