part of github.common;

class PublicKey {
  final GitHub github;

  int id;
  String key;
  String title;

  PublicKey(this.github);

  static PublicKey fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new PublicKey(github)
        ..id = input['id']
        ..key = input['key']
        ..title = input['title'];
  }
}

class CreatePublicKey {
  final String title;
  final String key;
  
  CreatePublicKey(this.title, this.key);
  
  String toJSON() {
    var map = {};
    putValue("title", title, map);
    putValue("key", key, map);
    return JSON.encode(map);
  }
}