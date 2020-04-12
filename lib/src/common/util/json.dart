import 'dart:convert';

import 'package:github/src/common/util/utils.dart';

/// Creates a Model Object from the JSON [input]
typedef JSONConverter<S, T> = T Function(S input);

/// Internal class for Json encoding
/// that should be used instead of `dart:convert`.
///
/// It contains methods that ensures that converted Json
/// will work with the GitHub API.
class GitHubJson {
  const GitHubJson._();

  /// Called only if an object is of a non primitive type.
  ///
  /// If [object] is a [DateTime], it converts it to a String whose format is compatible with the API.
  /// Else, it uses the default behavior of [JsonEncoder] which is to call `toJson` method onto [object].
  ///
  /// If [object] is not a [DateTime] and don't have a `toJson` method, an exception will be thrown
  /// but handled by [JsonEncoder].
  /// Do not catch it.
  static dynamic _toEncodable(dynamic object) {
    if (object is DateTime) {
      return dateToGitHubIso8601(object);
    }
    // `toJson` could return a [Map] or a [List],
    // so we have to delete null values in them.
    return _checkObject(object.toJson());
  }

  /// Encodes [object] to a Json String compatible with the GitHub API.
  /// It should be used instead of `jsonEncode`.
  ///
  /// Equivalent to `jsonEncode` except that
  /// it converts [DateTime] to a proper String for the GitHub API,
  /// and it also deletes keys associated with null values in maps before converting them.
  ///
  /// The obtained String can be decoded using `jsonDecode`.
  static String encode(Object object, {String indent}) {
    final encoder = JsonEncoder.withIndent(indent, _toEncodable);
    return encoder.convert(_checkObject(object));
  }

  /// Deletes keys associated with null values
  /// in every map contained in [object].
  static dynamic _checkObject(dynamic object) {
    if (object is Map) {
      return Map.fromEntries(object.entries
          .where((e) => e.value != null)
          .map((e) => MapEntry(e.key, _checkObject(e.value))));
    }
    if (object is List) {
      return object.map(_checkObject).toList();
    }
    return object;
  }
}
