part of github.common;

/// The [GistsService] handles communication with gist
/// methods of the GitHub API.
///  
/// API docs: https://developer.github.com/v3/gists/
class GistsService extends Service {
  GistsService(GitHub github) : super(github);
  
  /// lists gists for a user.
  /// 
  /// API docs: https://developer.github.com/v3/gists/#list-gists
  Stream<Gist> listUserGists(String username) {
    return new PaginationHelper(_github).objects("GET", "/users/${username}/gists", Gist.fromJSON);
  }
  
  /// Fetches the gists for the currently authenticated user.
  /// If the user is not authenticated, this returns all public gists.
  /// 
  /// API docs: https://developer.github.com/v3/gists/#list-gists
  Stream<Gist> listCurrentUserGists() {
    return new PaginationHelper(_github).objects("GET", "/gists", Gist.fromJSON);
  }
  
  /// Fetches the currently authenticated user's public gists.
  /// 
  /// API docs: https://developer.github.com/v3/gists/#list-gists
  Stream<Gist> listCurrentUserPublicGists() {
    return new PaginationHelper(_github).objects("GET", "/gists/public", Gist.fromJSON);
  }
  
  /// Fetches the currently authenticated user's starred gists.
  /// 
  /// API docs: https://developer.github.com/v3/gists/#list-gists
  Stream<Gist> listCurrentUserStarredGists() {
    return new PaginationHelper(_github).objects("GET", "/gists/starred", Gist.fromJSON);
  }
  
  /// Fetches a Gist by the specified [id].
  /// 
  /// API docs: https://developer.github.com/v3/gists/#get-a-single-gist
  Future<Gist> getGist(String id) {
    return _github.getJSON("/gist/${id}", statusCode: StatusCodes.OK, 
        convert: Gist.fromJSON);
  }
  
  // TODO: Implement createGist: https://developer.github.com/v3/gists/#create-a-gist
  // TODO: Implement editGist: https://developer.github.com/v3/gists/#edit-a-gist
  // TODO: Implement deleteGist: https://developer.github.com/v3/gists/#delete-a-gist
  // TODO: Implement listGistCommits: https://developer.github.com/v3/gists/#list-gist-commits
  // TODO: Implement starGist: https://developer.github.com/v3/gists/#star-a-gist
  // TODO: Implement unstarGist: https://developer.github.com/v3/gists/#unstar-a-gist
  // TODO: Implement isStarredGist: https://developer.github.com/v3/gists/#check-if-a-gist-is-starred
  // TODO: Implement forkGist: https://developer.github.com/v3/gists/#fork-a-gist
  // TODO: Implement listGistForks: https://developer.github.com/v3/gists/#list-gist-forks
  
  /// Lists all comments for a gist.
  /// 
  /// API docs: https://developer.github.com/v3/gists/comments/#list-comments-on-a-gist
  Stream<GistComment> listComments(String gistId) {
    return new PaginationHelper(_github).objects("GET", "/gists/${gistId}/comments", 
        GistComment.fromJSON);
  }
  
  // TODO: Implement getComment: https://developer.github.com/v3/gists/comments/#get-a-single-comment
  
  /// Creates a comment for a gist.
  /// 
  /// API docs: https://developer.github.com/v3/gists/comments/#create-a-comment
  Future<GistComment> createComment(String gistId, CreateGistComment request) {
    return _github.postJSON("/gists/${gistId}/comments", body: request.toJSON(), 
        convert: GistComment.fromJSON);
  }
  
  // TODO: Implement editComment: https://developer.github.com/v3/gists/comments/#edit-a-comment
  // TODO: Implement deleteComment: https://developer.github.com/v3/gists/comments/#delete-a-comment
}