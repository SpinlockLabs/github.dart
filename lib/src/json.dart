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
      object = (object as List)
          .map((e) => e is Map ? createNonNullMap(e, recursive: true) : e)
          .toList();
    }
    return encoder.convert(object);
  }
}
