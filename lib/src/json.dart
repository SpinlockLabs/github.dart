import 'dart:convert';

import 'package:github/src/common/util/utils.dart';
import 'package:github/src/util.dart';

class GitHubJson {
  GitHubJson._();

  static dynamic _toEncodable(dynamic object) {
    if (object is DateTime) {
      return dateToGitHubIso8601(object);
    }
    return object.toJson();
  }

  static String encode(Object object, {String indent}) {
    final encoder = JsonEncoder.withIndent(indent, _toEncodable);
    if (object is Map) {
      object = createNonNullMap(object as Map, recursive: true);
    }
    if (object is List) {
      object = _parseList(object as List);
    }
    return encoder.convert(object);
  }

  /// Maps maps in input to non-null maps.
  /// Also checks nested lists.
  static List _parseList(List input) {
    return input.map((e) {
      if (e is Map) {
        return createNonNullMap(e, recursive: true);
      }
      if (e is List) {
        return _parseList(e);
      }
      return e;
    }).toList();
  }
}
