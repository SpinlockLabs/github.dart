/**
 * The Core of GitHub for Dart.
 *
 * Contains the Models and other GitHub stuff.
 */
library github.common;

import "dart:async";
import "dart:convert" show BASE64, JSON, UTF8;

import "package:html/dom.dart" as html;
import "package:html/parser.dart" as htmlParser;
import "package:http/http.dart" as http;
import "package:quiver/async.dart" show FutureGroup;
import "package:xml/xml.dart" as xml;

import 'src/util.dart';

part "src/common/activity_service.dart";
part "src/common/authorizations_service.dart";
part "src/common/blog_service.dart";
part "src/common/explore_service.dart";
part "src/common/gists_service.dart";
part "src/common/git_service.dart";
part "src/common/github.dart";
part "src/common/issues_service.dart";
part "src/common/misc_service.dart";
part "src/common/model/activity.dart";
part "src/common/model/authorizations.dart";
part "src/common/model/blog.dart";
part "src/common/model/explore.dart";
part "src/common/model/gists.dart";
part "src/common/model/git.dart";
part "src/common/model/issues.dart";
part "src/common/model/keys.dart";
part "src/common/model/misc.dart";
part "src/common/model/notifications.dart";
part "src/common/model/orgs.dart";
part "src/common/model/pulls.dart";
part "src/common/model/repos.dart";
part "src/common/model/repos_commits.dart";
part "src/common/model/repos_contents.dart";
part "src/common/model/repos_forks.dart";
part "src/common/model/repos_hooks.dart";
part "src/common/model/repos_merging.dart";
part "src/common/model/repos_pages.dart";
part "src/common/model/repos_releases.dart";
part "src/common/model/repos_stats.dart";
part "src/common/model/repos_statuses.dart";
part "src/common/model/search.dart";
part "src/common/model/users.dart";
part "src/common/orgs_service.dart";
part "src/common/pulls_service.dart";
part "src/common/repos_service.dart";
part "src/common/search_service.dart";
part "src/common/url_shortener_service.dart";
part "src/common/users_service.dart";
part "src/common/util/auth.dart";
part "src/common/util/crawler.dart";
part "src/common/util/errors.dart";
part "src/common/util/json.dart";
part "src/common/util/oauth2.dart";
part "src/common/util/pagination.dart";
part "src/common/util/service.dart";
part "src/common/util/utils.dart";

