part of github.common;

/// The [GitService] handles communication with git related methods of the 
/// GitHub API.
///  
/// API docs: https://developer.github.com/v3/git/blobs/
class GitService extends Service {
  
  GitService(GitHub github) : super(github);
  
  /// Fetches a blob from [slug] for a given [sha].
  /// 
  /// API docs: https://developer.github.com/v3/git/blobs/#get-a-blob
  Future<GitBlob> getBlob(RepositorySlug slug, String sha) {
    return _github.getJSON('/repos/${slug.fullName}/git/blobs/${sha}', 
        convert: GitBlob.fromJSON, statusCode: StatusCodes.OK); 
  }

  /// Creates a blob with specified [blob] content.
  /// 
  /// API docs: https://developer.github.com/v3/git/blobs/#create-a-blob
  Future<GitBlob> createBlob(RepositorySlug slug, CreateGitBlob blob) {
    return _github.postJSON('/repos/${slug.fullName}/git/blobs', 
        convert: GitBlob.fromJSON, statusCode: StatusCodes.CREATED,
        body: blob.toJSON());
  }
  
  /// Fetches a commit from [slug] for a given [sha].
  /// 
  /// API docs: https://developer.github.com/v3/git/commits/#get-a-commit
  Future<GitCommit> getCommit(RepositorySlug slug, String sha) {
    return _github.getJSON('/repos/${slug.fullName}/git/commits/${sha}', 
        convert: GitCommit.fromJSON, statusCode: StatusCodes.OK); 
  }
  
  // TODO: Implement createCommit: https://developer.github.com/v3/git/commits/#create-a-commit
  
  // TODO: Implement git references methods: https://developer.github.com/v3/git/refs/
  
  // TODO: Implement git tags methods: https://developer.github.com/v3/git/tags/
  
  // TODO: Implement git trees methods: https://developer.github.com/v3/git/trees/
}