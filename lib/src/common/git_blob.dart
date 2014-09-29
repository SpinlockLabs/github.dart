part of github.common;

/// Model class for a blob. 
class GitBlob {
  // TODO (marcojakob): Maybe remove GitHub reference from model classes. 
  final GitHub github;
  
  String content;
  String encoding;
  String url;
  String sha;
  int size;
  
  GitBlob(this.github);
  
  static GitBlob fromJSON(GitHub github, input) {
    if (input == null) return null;
    return new GitBlob(github)
        ..content = input['content']
        ..encoding = input['encoding']
        ..url = input['url']
        ..sha = input['sha']
        ..size = input['size'];
  }
}

/// Model class for a new blob to be created.
/// 
/// The [encoding] can be either 'utf-8' or 'base64'.
class CreateGitBlob {
  final String content;
  final String encoding;

  CreateGitBlob(this.content, this.encoding);

  String toJSON() {
    return JSON.encode({
      "content": content,
      "encoding": encoding
    });
  }
}