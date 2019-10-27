import "dart:convert";
import 'package:github/src/util.dart';

/// Model class for a public key.
///
/// Note: [PublicKey] is used both by the repositories' deploy keys and by the
/// users' public keys.
class PublicKey {
  int id;
  String key;
  String title;

  static PublicKey fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return PublicKey()
      ..id = input['id']
      ..key = input['key']
      ..title = input['title'];
  }
}

/// Model class for a new public key to be created.
class CreatePublicKey {
  final String title;
  final String key;

  CreatePublicKey(this.title, this.key);

  String toJSON() {
    final map = <String, dynamic>{};
    putValue("title", title, map);
    putValue("key", key, map);
    return jsonEncode(map);
  }
}
