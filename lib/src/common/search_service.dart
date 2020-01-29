import 'dart:async';
import 'dart:convert';
import 'package:github/src/common.dart';
import 'package:github/src/common/model/users.dart';
import 'package:github/src/common/util/pagination.dart';

/// The [SearchService] handles communication with search related methods of
/// the GitHub API.
///
/// API docs: https://developer.github.com/v3/search/
class SearchService extends Service {
  SearchService(GitHub github) : super(github);

  /// Search for repositories using [query].
  /// Since the Search Rate Limit is small, this is a best effort implementation.
  ///
  /// API docs: https://developer.github.com/v3/search/#search-repositories
  Stream<Repository> repositories(String query, {String sort, int pages = 2}) {
    final params = <String, dynamic>{'q': query};
    if (sort != null) {
      params['sort'] = sort;
    }

    final controller = StreamController<Repository>();

    var isFirst = true;

    PaginationHelper(github)
        .fetchStreamed('GET', '/search/repositories',
            params: params, pages: pages)
        .listen((response) {
      if (response.statusCode == 403 &&
          response.body.contains('rate limit') &&
          isFirst) {
        throw RateLimitHit(github);
      }

      isFirst = false;

      final input = jsonDecode(response.body);

      if (input['items'] == null) {
        return;
      }

      final items = input['items'] as List;

      items.map((item) => Repository.fromJson(item)).forEach(controller.add);
    }).onDone(controller.close);

    return controller.stream;
  }

  /// Search through code for a given [query].
  /// By default you will get all search results if you consume all
  /// events on the returned stream. To limit results, set the
  /// [pages] and [perPage] parameters.
  ///
  /// You can include any github qualifiers in the query directly
  /// or you can set some of the optional params to set the qualifiers
  /// For example, these do the same thing:
  /// code('awesome language:dart') and
  /// code('awesome', language: 'dart')
  ///
  /// https://developer.github.com/v3/search/#search-code
  Stream<CodeSearchResults> code(
    String query, {
    int pages,
    int perPage,
    String language,
    String filename,
    String extension,
    String user,
    String org,
    String repo,
    String fork,
    String path,
    String size,
    bool inFile = true,
    bool inPath = false,
  }) {
    // Add qualifiers to the query
    // Known Issue: If a query already has a qualifier and the same
    // qualifier parameter is passed in, it will be duplicated.
    // Example: code('example repo:ex', repo: 'ex') will result in
    // a query of 'example repo:ex repo:ex'
    query += _searchQualifier('language', language);
    query += _searchQualifier('filename', filename);
    query += _searchQualifier('extension', extension);
    query += _searchQualifier('user', user);
    query += _searchQualifier('org', org);
    query += _searchQualifier('repo', repo);
    query += _searchQualifier('fork', fork);
    query += _searchQualifier('path', path);
    query += _searchQualifier('size', size);

    // build up the in: qualifier based on the 2 booleans
    var _in = '';
    if (inFile) {
      _in = 'file';
    }
    if (inPath) {
      if (_in.isEmpty) {
        _in = 'path';
      } else {
        _in = 'file,path';
      }
    }
    if (_in.isNotEmpty) {
      query += ' in:$_in';
    }

    final params = <String, dynamic>{};
    params['q'] = query ?? '';
    if (perPage != null) {
      params['per_page'] = perPage.toString();
    }

    return PaginationHelper(github)
        .fetchStreamed('GET', '/search/code', params: params, pages: pages)
        .map((r) => CodeSearchResults.fromJson(json.decode(r.body)));
  }

  String _searchQualifier(String key, String value) {
    if (value != null && value.isNotEmpty) {
      return ' $key:$value';
    }
    return '';
  }

  /// Search for issues and pull-requests using [query].
  /// Since the Search Rate Limit is small, this is a best effort implementation.
  /// API docs: https://developer.github.com/v3/search/#search-issues
  Stream<Issue> issues(String query, {String sort, int pages = 2}) {
    final params = <String, dynamic>{'q': query};
    if (sort != null) {
      params['sort'] = sort;
    }

    final controller = StreamController<Issue>();

    var isFirst = true;

    PaginationHelper(github)
        .fetchStreamed('GET', '/search/issues', params: params, pages: pages)
        .listen((response) {
      if (response.statusCode == 403 &&
          response.body.contains('rate limit') &&
          isFirst) {
        throw RateLimitHit(github);
      }

      isFirst = false;

      final input = jsonDecode(response.body);

      if (input['items'] == null) {
        return;
      }

      final items = input['items'] as List;

      items.map((item) => Issue.fromJson(item)).forEach(controller.add);
    }).onDone(controller.close);

    return controller.stream;
  }

  /// Search for users using [query].
  /// Since the Search Rate Limit is small, this is a best effort implementation.
  ///
  /// API docs: https://developer.github.com/v3/search/#search-users
  Stream<User> users(
    String query, {
    String sort,
    int pages = 2,
    int perPage = 30,
  }) {
    final params = <String, dynamic>{'q': query};

    if (sort != null) {
      params['sort'] = sort;
    }

    params['per_page'] = perPage.toString();

    final controller = StreamController<User>();

    var isFirst = true;

    PaginationHelper(github)
        .fetchStreamed('GET', '/search/users', params: params, pages: pages)
        .listen((response) {
      if (response.statusCode == 403 &&
          response.body.contains('rate limit') &&
          isFirst) {
        throw RateLimitHit(github);
      }

      isFirst = false;

      final input = jsonDecode(response.body);

      if (input['items'] == null) {
        return;
      }

      final items = input['items'] as List;

      items.map((item) => User.fromJson(item)).forEach(controller.add);
    }).onDone(controller.close);

    return controller.stream;
  }
}
