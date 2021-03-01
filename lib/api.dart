//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

library github.api;

import 'package:dio/dio.dart';
import 'package:built_value/serializer.dart';
import 'package:github/serializers.dart';
import 'package:github/auth/api_key_auth.dart';
import 'package:github/auth/basic_auth.dart';
import 'package:github/auth/oauth.dart';
import 'package:github/api/actions_api.dart';
import 'package:github/api/activity_api.dart';
import 'package:github/api/apps_api.dart';
import 'package:github/api/audit_log_api.dart';
import 'package:github/api/billing_api.dart';
import 'package:github/api/checks_api.dart';
import 'package:github/api/code_scanning_api.dart';
import 'package:github/api/codes_of_conduct_api.dart';
import 'package:github/api/emojis_api.dart';
import 'package:github/api/enterprise_admin_api.dart';
import 'package:github/api/gists_api.dart';
import 'package:github/api/git_api.dart';
import 'package:github/api/gitignore_api.dart';
import 'package:github/api/interactions_api.dart';
import 'package:github/api/issues_api.dart';
import 'package:github/api/licenses_api.dart';
import 'package:github/api/markdown_api.dart';
import 'package:github/api/meta_api.dart';
import 'package:github/api/migrations_api.dart';
import 'package:github/api/oauth_authorizations_api.dart';
import 'package:github/api/orgs_api.dart';
import 'package:github/api/packages_api.dart';
import 'package:github/api/projects_api.dart';
import 'package:github/api/pulls_api.dart';
import 'package:github/api/rate_limit_api.dart';
import 'package:github/api/reactions_api.dart';
import 'package:github/api/repos_api.dart';
import 'package:github/api/scim_api.dart';
import 'package:github/api/search_api.dart';
import 'package:github/api/secret_scanning_api.dart';
import 'package:github/api/teams_api.dart';
import 'package:github/api/users_api.dart';


final _defaultInterceptors = [
  OAuthInterceptor(),
  BasicAuthInterceptor(),
  ApiKeyAuthInterceptor(),
];

class Github {

    static const String basePath = r'https://api.github.com';

    final Dio dio;

    final Serializers serializers;

    Github({
      Dio dio,
      Serializers serializers,
      String basePathOverride,
      List<Interceptor> interceptors,
    })  : this.serializers = serializers ?? standardSerializers,
          this.dio = dio ??
              Dio(BaseOptions(
                baseUrl: basePathOverride ?? basePath,
                connectTimeout: 5000,
                receiveTimeout: 3000,
              )) {
      if (interceptors == null) {
        this.dio.interceptors.addAll(_defaultInterceptors);
      } else {
        this.dio.interceptors.addAll(interceptors);
      }
    }

    void setOAuthToken(String name, String token) {
        (this.dio.interceptors.firstWhere((element) => element is OAuthInterceptor, orElse: null) as OAuthInterceptor)?.tokens[name] = token;
    }

    void setBasicAuth(String name, String username, String password) {
        (this.dio.interceptors.firstWhere((element) => element is BasicAuthInterceptor, orElse: null) as BasicAuthInterceptor)?.authInfo[name] = BasicAuthInfo(username, password);
    }

    void setApiKey(String name, String apiKey) {
        (this.dio.interceptors.firstWhere((element) => element is ApiKeyAuthInterceptor, orElse: null) as ApiKeyAuthInterceptor)?.apiKeys[name] = apiKey;
    }


    /**
    * Get ActionsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ActionsApi getActionsApi() {
    return ActionsApi(dio, serializers);
    }


    /**
    * Get ActivityApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ActivityApi getActivityApi() {
    return ActivityApi(dio, serializers);
    }


    /**
    * Get AppsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    AppsApi getAppsApi() {
    return AppsApi(dio, serializers);
    }


    /**
    * Get AuditLogApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    AuditLogApi getAuditLogApi() {
    return AuditLogApi(dio, serializers);
    }


    /**
    * Get BillingApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    BillingApi getBillingApi() {
    return BillingApi(dio, serializers);
    }


    /**
    * Get ChecksApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ChecksApi getChecksApi() {
    return ChecksApi(dio, serializers);
    }


    /**
    * Get CodeScanningApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    CodeScanningApi getCodeScanningApi() {
    return CodeScanningApi(dio, serializers);
    }


    /**
    * Get CodesOfConductApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    CodesOfConductApi getCodesOfConductApi() {
    return CodesOfConductApi(dio, serializers);
    }


    /**
    * Get EmojisApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    EmojisApi getEmojisApi() {
    return EmojisApi(dio, serializers);
    }


    /**
    * Get EnterpriseAdminApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    EnterpriseAdminApi getEnterpriseAdminApi() {
    return EnterpriseAdminApi(dio, serializers);
    }


    /**
    * Get GistsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    GistsApi getGistsApi() {
    return GistsApi(dio, serializers);
    }


    /**
    * Get GitApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    GitApi getGitApi() {
    return GitApi(dio, serializers);
    }


    /**
    * Get GitignoreApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    GitignoreApi getGitignoreApi() {
    return GitignoreApi(dio, serializers);
    }


    /**
    * Get InteractionsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    InteractionsApi getInteractionsApi() {
    return InteractionsApi(dio, serializers);
    }


    /**
    * Get IssuesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    IssuesApi getIssuesApi() {
    return IssuesApi(dio, serializers);
    }


    /**
    * Get LicensesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    LicensesApi getLicensesApi() {
    return LicensesApi(dio, serializers);
    }


    /**
    * Get MarkdownApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    MarkdownApi getMarkdownApi() {
    return MarkdownApi(dio, serializers);
    }


    /**
    * Get MetaApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    MetaApi getMetaApi() {
    return MetaApi(dio, serializers);
    }


    /**
    * Get MigrationsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    MigrationsApi getMigrationsApi() {
    return MigrationsApi(dio, serializers);
    }


    /**
    * Get OauthAuthorizationsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    OauthAuthorizationsApi getOauthAuthorizationsApi() {
    return OauthAuthorizationsApi(dio, serializers);
    }


    /**
    * Get OrgsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    OrgsApi getOrgsApi() {
    return OrgsApi(dio, serializers);
    }


    /**
    * Get PackagesApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    PackagesApi getPackagesApi() {
    return PackagesApi(dio, serializers);
    }


    /**
    * Get ProjectsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ProjectsApi getProjectsApi() {
    return ProjectsApi(dio, serializers);
    }


    /**
    * Get PullsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    PullsApi getPullsApi() {
    return PullsApi(dio, serializers);
    }


    /**
    * Get RateLimitApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    RateLimitApi getRateLimitApi() {
    return RateLimitApi(dio, serializers);
    }


    /**
    * Get ReactionsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ReactionsApi getReactionsApi() {
    return ReactionsApi(dio, serializers);
    }


    /**
    * Get ReposApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ReposApi getReposApi() {
    return ReposApi(dio, serializers);
    }


    /**
    * Get ScimApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    ScimApi getScimApi() {
    return ScimApi(dio, serializers);
    }


    /**
    * Get SearchApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    SearchApi getSearchApi() {
    return SearchApi(dio, serializers);
    }


    /**
    * Get SecretScanningApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    SecretScanningApi getSecretScanningApi() {
    return SecretScanningApi(dio, serializers);
    }


    /**
    * Get TeamsApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    TeamsApi getTeamsApi() {
    return TeamsApi(dio, serializers);
    }


    /**
    * Get UsersApi instance, base route and serializer can be overridden by a given but be careful,
    * by doing that all interceptors will not be executed
    */
    UsersApi getUsersApi() {
    return UsersApi(dio, serializers);
    }


}
