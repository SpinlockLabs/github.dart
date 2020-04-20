import 'package:github/src/common.dart';
import 'package:meta/meta.dart';

/// A Json encodable class that mimics an enum,
/// but with a String value that is used for serialization.
@immutable
abstract class EnumWithValue {
  final String value;

  /// The value will be used when [toJson] or [toString] will be called.
  /// It will also be used to check if two [EnumWithValue] are equal.
  const EnumWithValue(this.value);

  @override
  String toString() => value;

  /// Returns the String value of this.
  String toJson() => value;

  /// True iff [other] is an [EnumWithValue] with the same value as this object.
  @override
  bool operator ==(dynamic other) =>
      other is EnumWithValue && value == other.value;

  @override
  int get hashCode => value.hashCode;
}

/// Marks something as not being ready or complete.
class NotReadyYet {
  /// Informational Message
  final String message;

  const NotReadyYet(this.message);
}

/// Specifies that something should be only used when the specified condition is met.
class OnlyWhen {
  /// Condition
  final String condition;

  const OnlyWhen(this.condition);
}

/// Converts the [date] to GitHub's ISO-8601 format:
///
/// The format is "YYYY-MM-DDTHH:mm:ssZ"
String dateToGitHubIso8601(DateTime date) {
  if (date == null) {
    return null;
  }
  // Regex removes the milliseconds.
  return date.toUtc().toIso8601String().replaceAll(githubDateRemoveRegExp, '');
}

RepositorySlug slugFromAPIUrl(String url) {
  final split = url.split('/');
  final i = split.indexOf('repos') + 1;
  final parts = split.sublist(i, i + 2);
  return RepositorySlug(parts[0], parts[1]);
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

final RegExp githubDateRemoveRegExp = RegExp(r'\.\d*');

const v3ApiMimeType = 'application/vnd.github.v3+json';

String buildQueryString(Map<String, dynamic> params) {
  final queryString = StringBuffer();

  if (params.isNotEmpty && !params.values.every((value) => value == null)) {
    queryString.write('?');
  }

  var i = 0;
  for (final key in params.keys) {
    i++;
    if (params[key] == null) {
      continue;
    }
    queryString.write('$key=${Uri.encodeComponent(params[key].toString())}');
    if (i != params.keys.length) {
      queryString.write('&');
    }
  }
  return queryString.toString();
}

dynamic copyOf(dynamic input) {
  if (input is Iterable) {
    return List.from(input);
  } else if (input is Map) {
    return Map.from(input);
  } else {
    throw Exception('type could not be copied');
  }
}

/// Puts a [name] and [value] into the [map] if [value] is not null. If [value]
/// is null, nothing is added.
void putValue(String name, dynamic value, Map<String, dynamic> map) {
  if (value != null) {
    map[name] = value;
  }
}

List<MapEntry<dynamic, dynamic>> mapToList(Map<dynamic, dynamic> input) {
  final out = <MapEntry<dynamic, dynamic>>[];
  for (final key in input.keys) {
    out.add(MapEntry<dynamic, dynamic>(key, input[key]));
  }
  return out;
}

/// Internal method to handle null for parsing dates.
DateTime parseDateTime(String input) {
  if (input == null) {
    return null;
  }

  return DateTime.parse(input);
}

/// Returns a new map containing only the entries of [input] whose value is not null.
///
/// If [recursive] is true, nested maps are also filtered.
Map<K, V> createNonNullMap<K, V>(Map<K, V> input, {bool recursive = true}) {
  final map = <K, V>{};
  for (final entry in input.entries) {
    if (entry.value != null) {
      map[entry.key] = recursive && entry.value is Map
          ? createNonNullMap(entry.value as Map, recursive: recursive)
          : entry.value;
    }
  }
  return map;
}

// TODO: only used in test – delete?
int parseFancyNumber(String input) {
  input = input.trim();
  if (input.contains(',')) {
    input = input.replaceAll(',', '');
  }

  const multipliers = {'h': 100, 'k': 1000, 'ht': 100000, 'm': 1000000};
  int value;

  if (!multipliers.keys.any((m) => input.endsWith(m))) {
    value = int.parse(input);
  } else {
    final m = multipliers.keys.firstWhere((m) => input.endsWith(m));
    input = input.substring(0, input.length - m.length);
    value = num.parse(input) * multipliers[m];
  }

  return value;
}
