/// The Core of GitHub for Dart.
/// Contains the Models and other GitHub stuff.
library github.common;

import "dart:async";
import "dart:convert"
    show
        base64Decode,
        base64Encode,
        jsonEncode,
        jsonDecode,
        LineSplitter,
        utf8,
        json;

import "package:http/http.dart" as http;
import 'package:http_parser/http_parser.dart' as http_parser;
import "package:json_annotation/json_annotation.dart";
import 'package:meta/meta.dart' as meta show alwaysThrows;

import 'common/model/repos_releases.dart';
import 'common/model/users.dart';
import "common/util/pagination.dart";
import 'util.dart';

export 'common/model/repos_releases.dart';
export "common/model/users.dart";
export "common/util/pagination.dart";

part "common/activity_service.dart";
part "common/authorizations_service.dart";
part "common/gists_service.dart";
part "common/git_service.dart";
part "common/github.dart";
part "common/issues_service.dart";
part "common/misc_service.dart";
part "common/model/activity.dart";
part "common/model/authorizations.dart";
part "common/model/gists.dart";
part "common/model/git.dart";
part "common/model/issues.dart";
part "common/model/keys.dart";
part "common/model/misc.dart";
part "common/model/notifications.dart";
part "common/model/orgs.dart";
part "common/model/pulls.dart";
part "common/model/repos.dart";
part "common/model/repos_commits.dart";
part "common/model/repos_contents.dart";
part "common/model/repos_forks.dart";
part "common/model/repos_hooks.dart";
part "common/model/repos_merging.dart";
part "common/model/repos_pages.dart";
part "common/model/repos_stats.dart";
part "common/model/repos_statuses.dart";
part "common/model/search.dart";
part "common/orgs_service.dart";
part "common/pulls_service.dart";
part "common/repos_service.dart";
part "common/search_service.dart";
part "common/url_shortener_service.dart";
part "common/users_service.dart";
part "common/util/auth.dart";
part "common/util/crawler.dart";
part "common/util/errors.dart";
part "common/util/json.dart";
part "common/util/oauth2.dart";
part "common/util/service.dart";
part "common/util/utils.dart";
part "common.g.dart";

void _applyExpandos(Object target, http.Response response) {
  _etagExpando[target] = response.headers['etag'];
  if (response.headers['date'] != null) {
    _dateExpando[target] = http_parser.parseHttpDate(response.headers['date']);
  }
}

final _etagExpando = Expando<String>('etag');
final _dateExpando = Expando<DateTime>('date');

String getResponseEtag(Object obj) => _etagExpando[obj];
DateTime getResponseDate(Object obj) => _dateExpando[obj];
