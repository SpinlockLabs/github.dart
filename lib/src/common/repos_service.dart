import 'dart:async';
import 'dart:convert';
import 'package:github/src/common.dart';
import 'package:github/src/common/model/repos_releases.dart';
import 'package:github/src/common/model/users.dart';
import 'package:github/src/common/util/pagination.dart';
import 'package:github/src/util.dart';
import 'package:http/http.dart' as http;
import 'package:meta/meta.dart';

/// The [RepositoriesService] handles communication with repository related
/// methods of the GitHub API.
///
/// API docs: https://developer.github.com/v3/repos/
class RepositoriesService extends Service {
  RepositoriesService(GitHub github) : super(github);

  /// Lists the repositories of the currently authenticated user.
  ///
  /// API docs: https://developer.github.com/v3/repos/#list-your-repositories
  Stream<Repository> listRepositories(
      {String type = 'owner',
      String sort = 'full_name',
      String direction = 'asc'}) {
    final params = <String, dynamic>{
      'type': type,
      'sort': sort,
      'direction': direction,
    };

    return PaginationHelper(github).objects<Map<String, dynamic>, Repository>(
      'GET',
      '/user/repos',
      (i) => Repository.fromJson(i),
      params: params,
    );
  }

  /// Lists the repositories of the user specified by [user] in a streamed fashion.
  ///
  /// API docs: https://developer.github.com/v3/repos/#list-user-repositories
  Stream<Repository> listUserRepositories(String user,
      {String type = 'owner',
      String sort = 'full_name',
      String direction = 'asc'}) {
    ArgumentError.checkNotNull(user);
    final params = <String, dynamic>{
      'type': type,
      'sort': sort,
      'direction': direction
    };

    return PaginationHelper(github).objects<Map<String, dynamic>, Repository>(
      'GET',
      '/users/$user/repos',
      (i) => Repository.fromJson(i),
      params: params,
    );
  }

  /// List repositories for the specified [org].
  ///
  /// API docs: https://developer.github.com/v3/repos/#list-user-repositories
  Stream<Repository> listOrganizationRepositories(String org,
      {String type = 'all'}) {
    ArgumentError.checkNotNull(org);
    final params = <String, dynamic>{'type': type};

    return PaginationHelper(github).objects<Map<String, dynamic>, Repository>(
      'GET',
      '/orgs/$org/repos',
      (i) => Repository.fromJson(i),
      params: params,
    );
  }

  /// Lists all the public repositories on GitHub, in the order that they were
  /// created.
  ///
  /// If [limit] is not null, it is used to specify the amount of repositories to fetch.
  /// If [limit] is null, it will fetch ALL the repositories on GitHub.
  ///
  /// API docs: https://developer.github.com/v3/repos/#list-all-public-repositories
  Stream<Repository> listPublicRepositories({int limit = 50, DateTime since}) {
    final params = <String, dynamic>{};

    if (since != null) {
      params['since'] = since.toIso8601String();
    }

    final pages = limit != null ? (limit / 30).ceil() : null;

    return PaginationHelper(github)
        .fetchStreamed('GET', '/repositories', pages: pages, params: params)
        .expand<Repository>((http.Response response) {
      final list = jsonDecode(response.body) as List<Map<String, dynamic>>;

      return list.map((Map<String, dynamic> it) => Repository.fromJson(it));
    });
  }

  /// Creates a repository with [repository]. If an [org] is specified, the new
  /// repository will be created under that organization. If no [org] is
  /// specified, it will be created for the authenticated user.
  ///
  /// API docs: https://developer.github.com/v3/repos/#create
  Future<Repository> createRepository(CreateRepository repository,
      {String org}) async {
    ArgumentError.checkNotNull(repository);
    if (org != null) {
      return github.postJSON<Map<String, dynamic>, TeamRepository>(
        '/orgs/$org/repos',
        body: jsonEncode(repository),
        convert: (i) => TeamRepository.fromJson(i),
      );
    } else {
      return github.postJSON<Map<String, dynamic>, Repository>(
        '/user/repos',
        body: jsonEncode(repository),
        convert: (i) => Repository.fromJson(i),
      );
    }
  }

  Future<LicenseDetails> getLicense(RepositorySlug slug) async {
    ArgumentError.checkNotNull(slug);
    return github.getJSON<Map<String, dynamic>, LicenseDetails>(
      '/repos/${slug.owner}/${slug.name}/license',
      convert: (json) => LicenseDetails.fromJson(json),
    );
  }

  /// Fetches the repository specified by the [slug].
  ///
  /// API docs: https://developer.github.com/v3/repos/#get
  Future<Repository> getRepository(RepositorySlug slug) async {
    ArgumentError.checkNotNull(slug);
    return github.getJSON<Map<String, dynamic>, Repository>(
      '/repos/${slug.owner}/${slug.name}',
      convert: (i) => Repository.fromJson(i),
      statusCode: StatusCodes.OK,
      fail: (http.Response response) {
        if (response.statusCode == 404) {
          throw RepositoryNotFound(github, slug.fullName);
        }
      },
    );
  }

  /// Fetches a list of repositories specified by [slugs].
  Stream<Repository> getRepositories(List<RepositorySlug> slugs) async* {
    for (final slug in slugs) {
      final repo = await getRepository(slug);
      yield repo;
    }
  }

  /// Edit a Repository.
  ///
  /// API docs: https://developer.github.com/v3/repos/#edit
  Future<Repository> editRepository(RepositorySlug slug,
      {String name,
      String description,
      String homepage,
      bool private,
      bool hasIssues,
      bool hasWiki,
      bool hasDownloads}) async {
    ArgumentError.checkNotNull(slug);
    final data = createNonNullMap({
      'name': name,
      'description': description,
      'homepage': homepage,
      'private': private,
      'has_issues': hasIssues,
      'has_wiki': hasWiki,
      'has_downloads': hasDownloads,
      'default_branch': 'defaultBranch'
    });
    return github.postJSON(
      '/repos/${slug.fullName}',
      body: jsonEncode(data),
      statusCode: 200,
    );
  }

  /// Deletes a repository.
  ///
  /// Returns true if it was successfully deleted.
  ///
  /// API docs: https://developer.github.com/v3/repos/#delete-a-repository
  Future<bool> deleteRepository(RepositorySlug slug) async {
    ArgumentError.checkNotNull(slug);
    return github
        .request(
          'DELETE',
          '/repos/${slug.fullName}',
          statusCode: StatusCodes.NO_CONTENT,
        )
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  /// Lists the contributors of the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/repos/#list-contributors
  Stream<User> listContributors(RepositorySlug slug, {bool anon = false}) {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(anon);
    return PaginationHelper(github).objects<Map<String, dynamic>, User>(
      'GET',
      '/repos/${slug.fullName}/contributors',
      (i) => User.fromJson(i),
      params: <String, dynamic>{'anon': anon.toString()},
    );
  }

  /// Lists the teams of the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/repos/#list-teams
  Stream<Team> listTeams(RepositorySlug slug) {
    ArgumentError.checkNotNull(slug);
    return PaginationHelper(github).objects<Map<String, dynamic>, Team>(
      'GET',
      '/repos/${slug.fullName}/teams',
      (i) => Team.fromJson(i),
    );
  }

  /// Gets a language breakdown for the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/repos/#list-languages
  Future<LanguageBreakdown> listLanguages(RepositorySlug slug) async {
    ArgumentError.checkNotNull(slug);
    return github.getJSON<Map<String, dynamic>, LanguageBreakdown>(
      '/repos/${slug.fullName}/languages',
      statusCode: StatusCodes.OK,
      convert: (input) => LanguageBreakdown(input.cast<String, int>()),
    );
  }

  /// Lists the tags of the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/repos/#list-tags
  Stream<Tag> listTags(RepositorySlug slug) {
    ArgumentError.checkNotNull(slug);
    return PaginationHelper(github).objects<Map<String, dynamic>, Tag>(
      'GET',
      '/repos/${slug.fullName}/tags',
      (i) => Tag.fromJson(i),
    );
  }

  /// Lists the branches of the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/repos/#list-branches
  Stream<Branch> listBranches(RepositorySlug slug) {
    ArgumentError.checkNotNull(slug);
    return PaginationHelper(github).objects<Map<String, dynamic>, Branch>(
      'GET',
      '/repos/${slug.fullName}/branches',
      (i) => Branch.fromJson(i),
    );
  }

  /// Fetches the specified branch.
  ///
  /// API docs: https://developer.github.com/v3/repos/#get-branch
  Future<Branch> getBranch(RepositorySlug slug, String branch) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(branch);
    return github.getJSON<Map<String, dynamic>, Branch>(
      '/repos/${slug.fullName}/branches/$branch',
      convert: (i) => Branch.fromJson(i),
    );
  }

  /// Lists the users that have access to the repository identified by [slug].
  ///
  /// API docs: https://developer.github.com/v3/repos/collaborators/#list
  Stream<Collaborator> listCollaborators(RepositorySlug slug) {
    ArgumentError.checkNotNull(slug);
    return PaginationHelper(github).objects(
      'GET',
      '/repos/${slug.fullName}/collaborators',
      (json) => Collaborator.fromJson(json),
    );
  }

  Future<bool> isCollaborator(RepositorySlug slug, String user) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(user);
    var catchError = false;
    http.Response response;
    try {
      response = await github.request(
        'GET',
        '/repos/${slug.fullName}/collaborators/$user',
        statusCode: StatusCodes.NO_CONTENT,
        fail: (response) {
          if (response.statusCode == StatusCodes.NOT_FOUND) {
            catchError = true;
          }
        },
      );
      if (response.statusCode == StatusCodes.NO_CONTENT) {
        return true;
      }
    } catch (e) {
      if (!catchError) {
        rethrow;
      }
    }
    return false;
  }

  Future<bool> addCollaborator(RepositorySlug slug, String user) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(user);
    return github
        .request(
          'PUT',
          '/repos/${slug.fullName}/collaborators/$user',
          statusCode: StatusCodes.NO_CONTENT,
        )
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  Future<bool> removeCollaborator(RepositorySlug slug, String user) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(user);
    return github
        .request(
          'DELETE',
          '/repos/${slug.fullName}/collaborators/$user',
          statusCode: StatusCodes.NO_CONTENT,
        )
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  /// Returns a list of all comments for a specific commit.
  ///
  /// https://developer.github.com/v3/repos/comments/#list-comments-for-a-single-commit
  Stream<CommitComment> listSingleCommitComments(
    RepositorySlug slug,
    RepositoryCommit commit,
  ) {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(commit);
    return PaginationHelper(github)
        .objects<Map<String, dynamic>, CommitComment>(
      'GET',
      '/repos/${slug.fullName}/commits/${commit.sha}/comments',
      (i) => CommitComment.fromJson(i),
      statusCode: StatusCodes.OK,
    );
  }

  /// Returns a list of all commit comments in a repository.
  ///
  /// https://developer.github.com/v3/repos/comments/#list-commit-comments-for-a-repository
  Stream<CommitComment> listCommitComments(RepositorySlug slug) {
    ArgumentError.checkNotNull(slug);
    return PaginationHelper(github)
        .objects<Map<String, dynamic>, CommitComment>(
      'GET',
      'repos/${slug.fullName}/comments',
      (i) => CommitComment.fromJson(i),
      statusCode: StatusCodes.OK,
    );
  }

  /// Create a comment for a commit using its sha.
  /// * [body]: The contents of the comment.
  /// * [path]: Relative path of the file to comment on.
  /// * [position]: Line index in the diff to comment on.
  /// * [line]: **Deprecated**. Use position parameter instead. Line number in the file to comment on.
  ///
  /// https://developer.github.com/v3/repos/comments/#create-a-commit-comment
  Future<CommitComment> createCommitComment(
    RepositorySlug slug,
    RepositoryCommit commit, {
    @required String body,
    String path,
    int position,
    @Deprecated('Use position parameter instead') int line,
  }) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(commit);
    final data = createNonNullMap({
      'body': body,
      'path': path,
      'position': position,
      'line': line,
    });
    return github.postJSON<Map<String, dynamic>, CommitComment>(
      '/repos/${slug.fullName}/commits/${commit.sha}/comments',
      body: jsonEncode(data),
      statusCode: StatusCodes.CREATED,
      convert: (i) => CommitComment.fromJson(i),
    );
  }

  /// Retrieve a commit comment by its id.
  ///
  /// https://developer.github.com/v3/repos/comments/#get-a-single-commit-comment
  Future<CommitComment> getCommitComment(RepositorySlug slug,
      {@required int id}) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(id);
    return github.getJSON<Map<String, dynamic>, CommitComment>(
      '/repos/${slug.fullName}/comments/$id',
      statusCode: StatusCodes.OK,
      convert: (i) => CommitComment.fromJson(i),
    );
  }

  /// Update a commit comment
  /// * [id]: id of the comment to update.
  /// * [body]: new body of the comment.
  ///
  /// Returns the updated commit comment.
  ///
  /// https://developer.github.com/v3/repos/comments/#update-a-commit-comment
  Future<CommitComment> updateCommitComment(RepositorySlug slug,
      {@required int id, @required String body}) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(id);
    ArgumentError.checkNotNull(body);
    return github.postJSON<Map<String, dynamic>, CommitComment>(
      '/repos/${slug.fullName}/comments/$id',
      body: jsonEncode(createNonNullMap({'body': body})),
      statusCode: StatusCodes.OK,
      convert: (i) => CommitComment.fromJson(i),
    );
  }

  /// Delete a commit comment.
  /// *[id]: id of the comment to delete.
  ///
  /// https://developer.github.com/v3/repos/comments/#delete-a-commit-comment
  Future<bool> deleteCommitComment(RepositorySlug slug,
      {@required int id}) async {
    ArgumentError.checkNotNull(slug);
    return github
        .request(
          'DELETE',
          '/repos/${slug.fullName}/comments/$id',
          statusCode: StatusCodes.NO_CONTENT,
        )
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  /// Lists the commits of the provided repository [slug].
  ///
  /// API docs: https://developer.github.com/v3/repos/commits/#list-commits-on-a-repository
  Stream<RepositoryCommit> listCommits(RepositorySlug slug) {
    ArgumentError.checkNotNull(slug);
    return PaginationHelper(github)
        .objects<Map<String, dynamic>, RepositoryCommit>(
      'GET',
      '/repos/${slug.fullName}/commits',
      (i) => RepositoryCommit.fromJson(i),
    );
  }

  /// Fetches the specified commit.
  ///
  /// API docs: https://developer.github.com/v3/repos/commits/#get-a-single-commit
  Future<RepositoryCommit> getCommit(RepositorySlug slug, String sha) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(sha);
    return github.getJSON<Map<String, dynamic>, RepositoryCommit>(
      '/repos/${slug.fullName}/commits/$sha',
      convert: (i) => RepositoryCommit.fromJson(i),
      statusCode: StatusCodes.OK,
    );
  }

  Future<String> getCommitDiff(RepositorySlug slug, String sha) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(sha);
    return github
        .request(
          'GET',
          '/repos/${slug.fullName}/commits/$sha',
          headers: <String, String>{
            'Accept': 'application/vnd.github.VERSION.diff'
          },
          statusCode: StatusCodes.OK,
        )
        .then((r) => r.body);
  }

  /// [refBase] and [refHead] can be the same value for a branch, commit, or ref
  /// in [slug] or specify other repositories by using `repo:ref` syntax.
  ///
  /// API docs: https://developer.github.com/v3/repos/commits/#compare-two-commits
  Future<GitHubComparison> compareCommits(
    RepositorySlug slug,
    String refBase,
    String refHead,
  ) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(refBase);
    ArgumentError.checkNotNull(refHead);
    return github.getJSON<Map<String, dynamic>, GitHubComparison>(
      '/repos/${slug.fullName}/compare/$refBase...$refHead',
      convert: (j) => GitHubComparison.fromJson(j),
    );
  }

  /// Fetches the readme file for a repository.
  ///
  /// The name of the commit/branch/tag may be specified with [ref]. If no [ref]
  /// is defined, the repository's default branch is used (usually master).
  ///
  /// API docs: https://developer.github.com/v3/repos/contents/#get-the-readme
  Future<GitHubFile> getReadme(RepositorySlug slug, {String ref}) async {
    ArgumentError.checkNotNull(slug);
    final headers = <String, String>{};

    var url = '/repos/${slug.fullName}/readme';

    if (ref != null) {
      url += '?ref=$ref';
    }

    return github.getJSON(url, headers: headers, statusCode: StatusCodes.OK,
        fail: (http.Response response) {
      if (response.statusCode == StatusCodes.NOT_FOUND) {
        throw NotFound(github, response.body);
      }
    }, convert: (Map<String, dynamic> input) {
      var file = GitHubFile.fromJson(input);
      if (file != null && slug != null) {
        file.sourceRepository = slug;
      }
      return file;
    });
  }

  /// Fetches content in a repository at the specified [path].
  ///
  /// When the [path] references a file, the returned [RepositoryContents]
  /// contains the metadata AND content of a single file.
  ///
  /// When the [path] references a directory, the returned [RepositoryContents]
  /// contains the metadata of all the files and/or subdirectories.
  ///
  /// Use [RepositoryContents.isFile] or [RepositoryContents.isDirectory] to
  /// distinguish between both result types.
  ///
  /// The name of the commit/branch/tag may be specified with [ref]. If no [ref]
  /// is defined, the repository's default branch is used (usually master).
  ///
  /// API docs: https://developer.github.com/v3/repos/contents/#get-contents
  Future<RepositoryContents> getContents(RepositorySlug slug, String path,
      {String ref}) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(path);
    var url = '/repos/${slug.fullName}/contents/$path';

    if (ref != null) {
      url += '?ref=$ref';
    }

    return github.getJSON(
      url,
      convert: (input) {
        final contents = RepositoryContents();
        if (input is Map) {
          // Weird one-off. If the content of `input` is JSON w/ a message
          // it was likely a 404 – but we don't have the status code here
          // But we can guess an the JSON content
          if (input.containsKey('message')) {
            throw GitHubError(github, input['message'],
                apiUrl: input['documentation_url']);
          }
          contents.file = GitHubFile.fromJson(input as Map<String, dynamic>);
        } else {
          contents.tree =
              (input as List).map((it) => GitHubFile.fromJson(it)).toList();
        }
        return contents;
      },
    );
  }

  /// Creates a new file in a repository.
  ///
  /// API docs: https://developer.github.com/v3/repos/contents/#create-a-file
  Future<ContentCreation> createFile(
      RepositorySlug slug, CreateFile file) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(file);
    final response = await github.request(
      'PUT',
      '/repos/${slug.fullName}/contents/${file.path}',
      body: jsonEncode(file),
    );
    return ContentCreation.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
  }

  /// Updates the specified file.
  ///
  /// API docs: https://developer.github.com/v3/repos/contents/#update-a-file
  Future<ContentCreation> updateFile(RepositorySlug slug, String path,
      String message, String content, String sha,
      {String branch}) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(path);
    final map = createNonNullMap({
      'message': message,
      'content': content,
      'sha': sha,
      'branch': branch,
    });
    final response = await github.request(
      'PUT',
      '/repos/${slug.fullName}/contents/$path',
      body: jsonEncode(map),
    );
    return ContentCreation.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
  }

  /// Deletes the specified file.
  ///
  /// API docs: https://developer.github.com/v3/repos/contents/#delete-a-file
  Future<ContentCreation> deleteFile(RepositorySlug slug, String path,
      String message, String sha, String branch) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(path);
    final map =
        createNonNullMap({'message': message, 'sha': sha, 'branch': branch});
    final response = await github.request(
      'DELETE',
      '/repos/${slug.fullName}/contents/$path',
      body: jsonEncode(map),
      statusCode: StatusCodes.OK,
    );
    return ContentCreation.fromJson(
        jsonDecode(response.body) as Map<String, dynamic>);
  }

  /// Gets an archive link for the specified repository and reference.
  ///
  /// API docs: https://developer.github.com/v3/repos/contents/#get-archive-link
  Future<String> getArchiveLink(RepositorySlug slug, String ref,
      {String format = 'tarball'}) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(ref);
    ArgumentError.checkNotNull(format);
    final response = await github.request(
      'GET',
      '/repos/${slug.fullName}/$format/$ref',
      statusCode: StatusCodes.FOUND,
    );
    return response.headers['Location'];
  }

  /// Lists the forks of the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/repos/forks/#list-forks
  Stream<Repository> listForks(RepositorySlug slug) {
    ArgumentError.checkNotNull(slug);
    return PaginationHelper(github).objects<Map<String, dynamic>, Repository>(
      'GET',
      '/repos/${slug.fullName}/forks',
      (i) => Repository.fromJson(i),
    );
  }

  /// Creates a fork for the authenticated user.
  ///
  /// API docs: https://developer.github.com/v3/repos/forks/#create-a-fork
  Future<Repository> createFork(RepositorySlug slug, [CreateFork fork]) async {
    ArgumentError.checkNotNull(slug);
    fork ??= CreateFork();
    return github.postJSON<Map<String, dynamic>, Repository>(
      '/repos/${slug.fullName}/forks',
      body: jsonEncode(fork),
      convert: (i) => Repository.fromJson(i),
    );
  }

  /// Lists the hooks of the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/repos/hooks/#list-hooks
  Stream<Hook> listHooks(RepositorySlug slug) {
    ArgumentError.checkNotNull(slug);
    return PaginationHelper(github).objects<Map<String, dynamic>, Hook>(
      'GET',
      '/repos/${slug.fullName}/hooks',
      (i) => Hook.fromJson(i)..repoName = slug.fullName,
    );
  }

  /// Fetches a single hook by [id].
  ///
  /// API docs: https://developer.github.com/v3/repos/hooks/#get-single-hook
  Future<Hook> getHook(RepositorySlug slug, int id) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(id);
    return github.getJSON<Map<String, dynamic>, Hook>(
      '/repos/${slug.fullName}/hooks/$id',
      convert: (i) => Hook.fromJson(i)..repoName = slug.fullName,
    );
  }

  /// Creates a repository hook based on the specified [hook].
  ///
  /// API docs: https://developer.github.com/v3/repos/hooks/#create-a-hook
  Future<Hook> createHook(RepositorySlug slug, CreateHook hook) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(hook);
    return github.postJSON<Map<String, dynamic>, Hook>(
      '/repos/${slug.fullName}/hooks',
      convert: (i) => Hook.fromJson(i)..repoName = slug.fullName,
      body: jsonEncode(hook),
    );
  }

  /// Edits a hook.
  /// * [configUrl]: The URL to which the payloads will be delivered.
  /// * [configContentType]: The media type used to serialize the payloads. Supported values include json and form. The default is form.
  /// * [configSecret]: If provided, the secret will be used as the key to generate the HMAC hex digest value in the X-Hub-Signature header.
  /// * [configInsecureSsl]: Determines whether the SSL certificate of the host for url will be verified when delivering payloads. We strongly recommend not setting this to true as you are subject to man-in-the-middle and other attacks.
  /// * [events]: Determines what events the hook is triggered for. This replaces the entire array of events. Default: ['push'].
  /// * [addEvents]: Determines a list of events to be added to the list of events that the Hook triggers for.
  /// * [removeEvents]: Determines a list of events to be removed from the list of events that the Hook triggers for.
  /// * [active]: Determines if notifications are sent when the webhook is triggered. Set to true to send notifications.
  ///
  /// Leave blank the unedited fields.
  /// Returns the edited hook.
  ///
  /// https://developer.github.com/v3/repos/hooks/#edit-a-hook
  Future<Hook> editHook(
    RepositorySlug slug,
    Hook hookToEdit, {
    String configUrl,
    String configContentType,
    String configSecret,
    bool configInsecureSsl,
    List<String> events,
    List<String> addEvents,
    List<String> removeEvents,
    bool active,
  }) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(hookToEdit);
    ArgumentError.checkNotNull(configUrl ?? hookToEdit.config.url);
    if (configContentType != 'json' && configContentType != 'form') {
      throw ArgumentError.value(configContentType, 'configContentType');
    }
    return github.postJSON<Map<String, dynamic>, Hook>(
      '/repos/${slug.fullName}/hooks/${hookToEdit.id.toString()}',
      statusCode: StatusCodes.OK,
      convert: (i) => Hook.fromJson(i)..repoName = slug.fullName,
      body: jsonEncode(createNonNullMap(<String, dynamic>{
        'active': active ?? hookToEdit.active,
        'events': events ?? hookToEdit.events,
        'add_events': addEvents,
        'remove_events': removeEvents,
        'config': <String, dynamic>{
          'url': configUrl ?? hookToEdit.config.url,
          'content_type': configContentType ?? hookToEdit.config.contentType,
          'secret': configSecret ?? hookToEdit.config.secret,
          'insecure_ssl':
              configInsecureSsl == null || !configInsecureSsl ? '0' : '1',
        },
      })),
    );
  }

  /// Triggers a hook with the latest push.
  ///
  /// API docs: https://developer.github.com/v3/repos/hooks/#test-a-push-hook
  Future<bool> testPushHook(RepositorySlug slug, int id) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(id);
    return github
        .request(
          'POST',
          '/repos/${slug.fullName}/hooks/$id/tests',
          statusCode: StatusCodes.NO_CONTENT,
        )
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  /// Pings the hook.
  ///
  /// API docs: https://developer.github.com/v3/repos/hooks/#ping-a-hook
  Future<bool> pingHook(RepositorySlug slug, int id) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(id);
    return github
        .request(
          'POST',
          '/repos/${slug.fullName}/hooks/$id/pings',
          statusCode: StatusCodes.NO_CONTENT,
        )
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  Future<bool> deleteHook(RepositorySlug slug, int id) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(id);
    return github
        .request(
          'DELETE',
          '/repos/${slug.fullName}/hooks/$id',
          statusCode: StatusCodes.NO_CONTENT,
        )
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  // TODO: Implement other hook methods: https://developer.github.com/v3/repos/hooks/

  /// Lists the deploy keys for a repository.
  ///
  /// API docs: https://developer.github.com/v3/repos/keys/#list
  Stream<PublicKey> listDeployKeys(RepositorySlug slug) {
    ArgumentError.checkNotNull(slug);
    return PaginationHelper(github).objects<Map<String, dynamic>, PublicKey>(
      'GET',
      '/repos/${slug.fullName}/keys',
      (i) => PublicKey.fromJson(i),
    );
  }

  /// Get a deploy key.
  /// * [id]: id of the key to retrieve.
  ///
  /// https://developer.github.com/v3/repos/keys/#get
  Future<PublicKey> getDeployKey(RepositorySlug slug,
      {@required int id}) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(id);
    return github.getJSON<Map<String, dynamic>, PublicKey>(
      '/repos/${slug.fullName}/keys/$id',
      statusCode: StatusCodes.OK,
      convert: (i) => PublicKey.fromJson(i),
    );
  }

  /// Adds a deploy key for a repository.
  ///
  /// API docs: https://developer.github.com/v3/repos/keys/#create
  Future<PublicKey> createDeployKey(
      RepositorySlug slug, CreatePublicKey key) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(key);
    return github.postJSON<Map<String, dynamic>, PublicKey>(
      '/repos/${slug.fullName}/keys',
      body: jsonEncode(key),
      statusCode: StatusCodes.CREATED,
      convert: (i) => PublicKey.fromJson(i),
    );
  }

  /// Delete a deploy key.
  ///
  /// https://developer.github.com/v3/repos/keys/#delete
  Future<bool> deleteDeployKey(
      {@required RepositorySlug slug, @required PublicKey key}) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(key);
    return github
        .request(
          'DELETE',
          '/repos/${slug.fullName}/keys/${key.id}',
          statusCode: StatusCodes.NO_CONTENT,
        )
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  /// Merges a branch in the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/repos/merging/#perform-a-merge
  Future<RepositoryCommit> merge(RepositorySlug slug, CreateMerge merge) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(merge);
    return github.postJSON<Map<String, dynamic>, RepositoryCommit>(
      '/repos/${slug.fullName}/merges',
      body: jsonEncode(merge),
      convert: (i) => RepositoryCommit.fromJson(i),
      statusCode: StatusCodes.CREATED,
    );
  }

  /// Fetches the GitHub pages information for the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/repos/pages/#get-information-about-a-pages-site
  Future<RepositoryPages> getPagesInfo(RepositorySlug slug) async {
    ArgumentError.checkNotNull(slug);
    return github.getJSON<Map<String, dynamic>, RepositoryPages>(
      '/repos/${slug.fullName}/pages',
      statusCode: StatusCodes.OK,
      convert: (i) => RepositoryPages.fromJson(i),
    );
  }

  /// List Pages builds.
  ///
  /// API docs: https://developer.github.com/v3/repos/pages/#list-pages-builds
  Stream<PageBuild> listPagesBuilds(RepositorySlug slug) {
    ArgumentError.checkNotNull(slug);
    return PaginationHelper(github).objects<Map<String, dynamic>, PageBuild>(
      'GET',
      '/repos/${slug.fullName}/pages/builds',
      (i) => PageBuild.fromJson(i),
      statusCode: StatusCodes.OK,
    );
  }

  /// Get latest Pages build.
  ///
  /// API docs: https://developer.github.com/v3/repos/pages/#list-latest-pages-build
  Future<PageBuild> getLatestPagesBuild(RepositorySlug slug) async {
    ArgumentError.checkNotNull(slug);
    return github.getJSON(
      '/repos/${slug.fullName}/pages/builds/latest',
      convert: (i) => PageBuild.fromJson(i),
      statusCode: StatusCodes.OK,
    );
  }

  // Releases

  /// Lists releases for the specified repository.
  ///
  /// API docs: https://developer.github.com/v3/repos/releases/#list-releases-for-a-repository
  Stream<Release> listReleases(RepositorySlug slug) {
    ArgumentError.checkNotNull(slug);
    return PaginationHelper(github).objects<Map<String, dynamic>, Release>(
      'GET',
      '/repos/${slug.fullName}/releases',
      (i) => Release.fromJson(i),
    );
  }

  /// Fetches a single release by the release ID.
  ///
  /// API docs: https://developer.github.com/v3/repos/releases/#get-a-single-release
  Future<Release> getReleaseById(RepositorySlug slug, int id) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(id);
    return github.getJSON<Map<String, dynamic>, Release>(
      '/repos/${slug.fullName}/releases/$id',
      convert: (i) => Release.fromJson(i),
    );
  }

  /// Fetches a single release by the release tag name.
  ///
  /// API docs: https://developer.github.com/v3/repos/releases/#get-a-release-by-tag-name
  Future<Release> getReleaseByTagName(RepositorySlug slug, String tagName) =>
      github.getJSON('/repos/${slug.fullName}/releases/tags/$tagName',
          convert: (i) => Release.fromJson(i));

  /// Creates a Release based on the specified [createRelease].
  ///
  /// If [getIfExists] is true, this returns an already existing release instead of an error.
  /// Defaults to true.
  /// API docs: https://developer.github.com/v3/repos/releases/#create-a-release
  Future<Release> createRelease(
    RepositorySlug slug,
    CreateRelease createRelease, {
    bool getIfExists = true,
  }) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(createRelease);
    final release = await github.postJSON<Map<String, dynamic>, Release>(
      '/repos/${slug.fullName}/releases',
      convert: (i) => Release.fromJson(i),
      body: jsonEncode(createRelease.toJson()),
    );
    if (release.hasErrors) {
      final alreadyExistsErrorCode = release.errors.firstWhere(
        (error) => error['code'] == 'already_exists',
        orElse: () => null,
      );
      if (alreadyExistsErrorCode != null) {
        final field = alreadyExistsErrorCode['field'];
        if (field == 'tag_name') {
          return getReleaseByTagName(slug, createRelease.tagName);
        }
      } else {
        print(
            'Unexpected response from the API. Returning response. \n Errors: ${release.errors}');
      }
    }
    return release;
  }

  /// Edits the given release with new fields.
  /// * [tagName]: The name of the tag.
  /// * [targetCommitish]: Specifies the commitish value that determines where the Git tag is created from. Can be any branch or commit SHA. Unused if the Git tag already exists. Default: the repository's default branch (usually master).
  /// * [name]: The name of the release.
  /// * [body]: Text describing the contents of the tag.
  /// * [draft]: true makes the release a draft, and false publishes the release.
  /// * [preRelease]: true to identify the release as a prerelease, false to identify the release as a full release.
  ///
  /// Leave blank the fields you don't want to edit.
  ///
  /// API docs: https://developer.github.com/v3/repos/releases/#edit-a-release
  Future<Release> editRelease(
    RepositorySlug slug,
    Release releaseToEdit, {
    String tagName,
    String targetCommitish,
    String name,
    String body,
    bool draft,
    bool preRelease,
  }) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(releaseToEdit);
    return github.postJSON<Map<String, dynamic>, Release>(
      '/repos/${slug.fullName}/releases/${releaseToEdit.id.toString()}',
      body: jsonEncode(createNonNullMap(<String, dynamic>{
        'tag_name': tagName ?? releaseToEdit.tagName,
        'target_commitish': targetCommitish ?? releaseToEdit.targetCommitish,
        'name': name ?? releaseToEdit.name,
        'body': body ?? releaseToEdit.body,
        'draft': draft ?? releaseToEdit.isDraft,
        'prerelease': preRelease ?? releaseToEdit.isPrerelease,
      })),
      statusCode: StatusCodes.OK,
      convert: (i) => Release.fromJson(i),
    );
  }

  /// Delete the release.
  ///
  /// API docs: https://developer.github.com/v3/repos/releases/#delete-a-release
  Future<bool> deleteRelease(RepositorySlug slug, Release release) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(release);
    return github
        .request(
          'DELETE',
          '/repos/${slug.fullName}/releases/${release.id}',
          statusCode: StatusCodes.NO_CONTENT,
        )
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  /// Lists assets for a release.
  ///
  /// API docs: https://developer.github.com/v3/repos/releases/#list-assets-for-a-release
  Stream<ReleaseAsset> listReleaseAssets(RepositorySlug slug, Release release) {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(release);
    return PaginationHelper(github).objects<Map<String, dynamic>, ReleaseAsset>(
      'GET',
      '/repos/${slug.fullName}/releases/${release.id}/assets',
      (i) => ReleaseAsset.fromJson(i),
      statusCode: StatusCodes.OK,
    );
  }

  /// Get a single release asset.
  ///
  /// API docs: https://developer.github.com/v3/repos/releases/#get-a-single-release-asset
  // TODO: implement a way to retrieve the asset's binary content
  Future<ReleaseAsset> getReleaseAsset(RepositorySlug slug, Release release,
      {@required int assetId}) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(release);
    return github.postJSON<Map<String, dynamic>, ReleaseAsset>(
      '/repos/${slug.fullName}/releases/assets/$assetId',
      statusCode: StatusCodes.OK,
      convert: (i) => ReleaseAsset.fromJson(i),
    );
  }

  /// Edits a release asset.
  ///
  /// API docs: https://developer.github.com/v3/repos/releases/#edit-a-release-asset
  Future<ReleaseAsset> editReleaseAsset(
    RepositorySlug slug,
    ReleaseAsset assetToEdit, {
    String name,
    String label,
  }) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(assetToEdit);
    return github.postJSON<Map<String, dynamic>, ReleaseAsset>(
      '/repos/${slug.fullName}/releases/assets/${assetToEdit.id}',
      statusCode: StatusCodes.OK,
      convert: (i) => ReleaseAsset.fromJson(i),
      body: jsonEncode(createNonNullMap(<String, dynamic>{
        'name': name ?? assetToEdit.name,
        'label': label ?? assetToEdit.label,
      })),
    );
  }

  /// Delete a release asset.
  ///
  /// API docs: https://developer.github.com/v3/repos/releases/#delete-a-release-asset
  Future<bool> deleteReleaseAsset(
      RepositorySlug slug, ReleaseAsset asset) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(asset);
    return github
        .request(
          'DELETE',
          '/repos/${slug.fullName}/releases/assets/${asset.id}',
          statusCode: StatusCodes.NO_CONTENT,
        )
        .then((response) => response.statusCode == StatusCodes.NO_CONTENT);
  }

  Future<List<ReleaseAsset>> uploadReleaseAssets(
    Release release,
    Iterable<CreateReleaseAsset> createReleaseAssets,
  ) async {
    final releaseAssets = <ReleaseAsset>[];
    for (final createReleaseAsset in createReleaseAssets) {
      final headers = {'Content-Type': createReleaseAsset.contentType};
      final releaseAsset = await github.postJSON(
          release.getUploadUrlFor(
            createReleaseAsset.name,
            createReleaseAsset.label,
          ),
          headers: headers,
          body: createReleaseAsset.assetData,
          convert: (i) => ReleaseAsset.fromJson(i));
      releaseAssets.add(releaseAsset);
    }
    return releaseAssets;
  }

  /// Lists repository contributor statistics.
  ///
  /// It's possible that this API will throw [NotReady] in which case you should
  /// try the call again later.
  ///
  /// API docs: https://developer.github.com/v3/repos/statistics/#contributors
  Future<List<ContributorStatistics>> listContributorStats(
    RepositorySlug slug,
  ) async {
    ArgumentError.checkNotNull(slug);
    final path = '/repos/${slug.fullName}/stats/contributors';
    final response =
        await github.request('GET', path, headers: {'Accept': v3ApiMimeType});

    if (response.statusCode == StatusCodes.OK) {
      return (jsonDecode(response.body) as List)
          .map((e) => ContributorStatistics.fromJson(e))
          .toList();
    } else if (response.statusCode == StatusCodes.ACCEPTED) {
      throw NotReady(github, path);
    }
    github.handleStatusCode(response);
  }

  /// Fetches commit counts for the past year.
  ///
  /// API docs: https://developer.github.com/v3/repos/statistics/#commit-activity
  Stream<YearCommitCountWeek> listCommitActivity(RepositorySlug slug) {
    ArgumentError.checkNotNull(slug);
    return PaginationHelper(github)
        .objects<Map<String, dynamic>, YearCommitCountWeek>(
      'GET',
      '/repos/${slug.fullName}/stats/commit_activity',
      (i) => YearCommitCountWeek.fromJson(i),
    );
  }

  /// Fetches weekly addition and deletion counts.
  ///
  /// API docs: https://developer.github.com/v3/repos/statistics/#code-frequency
  Stream<WeeklyChangesCount> listCodeFrequency(RepositorySlug slug) {
    ArgumentError.checkNotNull(slug);
    return PaginationHelper(github)
        .objects<Map<String, dynamic>, WeeklyChangesCount>(
      'GET',
      '/repos/${slug.fullName}/stats/code_frequency',
      (i) => WeeklyChangesCount.fromJson(i),
    );
  }

  /// Fetches Participation Breakdowns.
  ///
  /// API docs: https://developer.github.com/v3/repos/statistics/#participation
  Future<ContributorParticipation> getParticipation(RepositorySlug slug) async {
    ArgumentError.checkNotNull(slug);
    return github.getJSON(
      '/repos/${slug.fullName}/stats/participation',
      statusCode: StatusCodes.OK,
      convert: (i) => ContributorParticipation.fromJson(i),
    );
  }

  /// Fetches Punchcard.
  ///
  /// API docs: https://developer.github.com/v3/repos/statistics/#punch-card
  Stream<PunchcardEntry> listPunchcard(RepositorySlug slug) {
    ArgumentError.checkNotNull(slug);
    return PaginationHelper(github)
        .objects<Map<String, dynamic>, PunchcardEntry>(
      'GET',
      '/repos/${slug.fullName}/stats/punchcard',
      (i) => PunchcardEntry.fromJson(i),
    );
  }

  /// Lists the statuses of a repository at the specified reference.
  /// The [ref] can be a SHA, a branch name, or a tag name.
  ///
  /// API docs: https://developer.github.com/v3/repos/statuses/#list-statuses-for-a-specific-ref
  Stream<RepositoryStatus> listStatuses(RepositorySlug slug, String ref) {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(ref);
    return PaginationHelper(github)
        .objects<Map<String, dynamic>, RepositoryStatus>(
      'GET',
      '/repos/${slug.fullName}/commits/$ref/statuses',
      (i) => RepositoryStatus.fromJson(i),
    );
  }

  /// Creates a new status for a repository at the specified reference.
  /// The [ref] can be a SHA, a branch name, or a tag name.
  ///
  /// API docs: https://developer.github.com/v3/repos/statuses/#create-a-status
  Future<RepositoryStatus> createStatus(
      RepositorySlug slug, String ref, CreateStatus request) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(ref);
    ArgumentError.checkNotNull(request);
    return github.postJSON<Map<String, dynamic>, RepositoryStatus>(
      '/repos/${slug.fullName}/statuses/$ref',
      body: jsonEncode(request),
      convert: (i) => RepositoryStatus.fromJson(i),
    );
  }

  /// Gets a Combined Status for the specified repository and ref.
  ///
  /// API docs: https://developer.github.com/v3/repos/statuses/#get-the-combined-status-for-a-specific-ref
  Future<CombinedRepositoryStatus> getCombinedStatus(
      RepositorySlug slug, String ref) async {
    ArgumentError.checkNotNull(slug);
    ArgumentError.checkNotNull(ref);
    return github.getJSON<Map<String, dynamic>, CombinedRepositoryStatus>(
      '/repos/${slug.fullName}/commits/$ref/status',
      convert: (i) => CombinedRepositoryStatus.fromJson(i),
      statusCode: StatusCodes.OK,
    );
  }
}
