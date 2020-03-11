import 'dart:convert';

import 'package:github/src/common/util/utils.dart';
import 'package:github/src/util.dart';

class GitHubJson {
  GitHubJson._();

  static dynamic _toEncodable(dynamic object) {
    if (object is DateTime) {
      return dateToGitHubIso8601(object);
    }
    return _checkObject(object.toJson());
  }

  static String encode(Object object, {String indent}) {
    final encoder = JsonEncoder.withIndent(indent, _toEncodable);
    return encoder.convert(_checkObject(object));
  }

  static dynamic _checkObject(dynamic object) {
    if (object is Map) {
      return createNonNullMap(object, recursive: true);
    }
    if (object is List) {
      return object.map(_checkObject).toList();
    }
    return object;
  }
}
