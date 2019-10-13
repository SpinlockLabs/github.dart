part of github.common;

/// Model class for a public key.
///
/// Note: [PublicKey] is used both by the repositories' deploy keys and by the
/// users' public keys.
@immutable
class PublicKey {
  final int id;
  final String key;
  final String title;

  const PublicKey._({
    @required this.id,
    @required this.key,
    @required this.title,
  });

  factory PublicKey.fromJSON(Map<String, dynamic> input) {
    if (input == null) return null;

    return PublicKey._(
      id: input['id'],
      key: input['key'],
      title: input['title'],
    );
  }
}

/// Model class for a new public key to be created.
@immutable
class CreatePublicKey {
  final String title;
  final String key;

  const CreatePublicKey(this.title, this.key);

  String toJSON() {
    final map = <String, dynamic>{};
    putValue("title", title, map);
    putValue("key", key, map);
    return jsonEncode(map);
  }
}
