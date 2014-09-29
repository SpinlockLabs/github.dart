part of github.common;

/// The [GitService] handles communication with GitHub API methods related 
/// to git data.
///  
/// API docs: https://developer.github.com/v3/git/
class GitService {
  final GitHub github;
  
  GitService(this.github);
  
  /// Fetches a blob from [slug] for a given [sha].
  /// 
  /// API docs: https://developer.github.com/v3/git/blobs/#get-a-blob
  Future<GitBlob> getBlob(RepositorySlug slug, String sha) {
    return github.getJSON('/repos/${slug.fullName}/git/blobs/${sha}', 
        convert: GitBlob.fromJSON, statusCode: StatusCodes.OK); 
  }

  /// Creates a blob with specified [blob] content.
  /// 
  /// API docs: https://developer.github.com/v3/git/blobs/#create-a-blob
  Future<GitBlob> createBlob(RepositorySlug slug, CreateGitBlob blob) {
    return github.postJSON('/repos/${slug.fullName}/git/blobs', 
        convert: GitBlob.fromJSON, statusCode: StatusCodes.CREATED,
        body: blob.toJSON());
  }

  /// Fetches a commit from [slug] for a given [sha].
  /// 
  /// API docs: https://developer.github.com/v3/git/commits/#get-a-commit
  Future<GitCommit> getCommit(RepositorySlug slug, String sha) {
    return github.getJSON('/repos/${slug.fullName}/git/commits/${sha}', 
        convert: GitCommit.fromJSON, statusCode: StatusCodes.OK); 
  }
}