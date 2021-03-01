//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.6

// ignore_for_file: unused_import

import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';

part 'inline_response200.g.dart';

abstract class InlineResponse200 implements Built<InlineResponse200, InlineResponse200Builder> {

    @nullable
    @BuiltValueField(wireName: r'current_user_url')
    String get currentUserUrl;

    @nullable
    @BuiltValueField(wireName: r'current_user_authorizations_html_url')
    String get currentUserAuthorizationsHtmlUrl;

    @nullable
    @BuiltValueField(wireName: r'authorizations_url')
    String get authorizationsUrl;

    @nullable
    @BuiltValueField(wireName: r'code_search_url')
    String get codeSearchUrl;

    @nullable
    @BuiltValueField(wireName: r'commit_search_url')
    String get commitSearchUrl;

    @nullable
    @BuiltValueField(wireName: r'emails_url')
    String get emailsUrl;

    @nullable
    @BuiltValueField(wireName: r'emojis_url')
    String get emojisUrl;

    @nullable
    @BuiltValueField(wireName: r'events_url')
    String get eventsUrl;

    @nullable
    @BuiltValueField(wireName: r'feeds_url')
    String get feedsUrl;

    @nullable
    @BuiltValueField(wireName: r'followers_url')
    String get followersUrl;

    @nullable
    @BuiltValueField(wireName: r'following_url')
    String get followingUrl;

    @nullable
    @BuiltValueField(wireName: r'gists_url')
    String get gistsUrl;

    @nullable
    @BuiltValueField(wireName: r'hub_url')
    String get hubUrl;

    @nullable
    @BuiltValueField(wireName: r'issue_search_url')
    String get issueSearchUrl;

    @nullable
    @BuiltValueField(wireName: r'issues_url')
    String get issuesUrl;

    @nullable
    @BuiltValueField(wireName: r'keys_url')
    String get keysUrl;

    @nullable
    @BuiltValueField(wireName: r'label_search_url')
    String get labelSearchUrl;

    @nullable
    @BuiltValueField(wireName: r'notifications_url')
    String get notificationsUrl;

    @nullable
    @BuiltValueField(wireName: r'organization_url')
    String get organizationUrl;

    @nullable
    @BuiltValueField(wireName: r'organization_repositories_url')
    String get organizationRepositoriesUrl;

    @nullable
    @BuiltValueField(wireName: r'organization_teams_url')
    String get organizationTeamsUrl;

    @nullable
    @BuiltValueField(wireName: r'public_gists_url')
    String get publicGistsUrl;

    @nullable
    @BuiltValueField(wireName: r'rate_limit_url')
    String get rateLimitUrl;

    @nullable
    @BuiltValueField(wireName: r'repository_url')
    String get repositoryUrl;

    @nullable
    @BuiltValueField(wireName: r'repository_search_url')
    String get repositorySearchUrl;

    @nullable
    @BuiltValueField(wireName: r'current_user_repositories_url')
    String get currentUserRepositoriesUrl;

    @nullable
    @BuiltValueField(wireName: r'starred_url')
    String get starredUrl;

    @nullable
    @BuiltValueField(wireName: r'starred_gists_url')
    String get starredGistsUrl;

    @nullable
    @BuiltValueField(wireName: r'topic_search_url')
    String get topicSearchUrl;

    @nullable
    @BuiltValueField(wireName: r'user_url')
    String get userUrl;

    @nullable
    @BuiltValueField(wireName: r'user_organizations_url')
    String get userOrganizationsUrl;

    @nullable
    @BuiltValueField(wireName: r'user_repositories_url')
    String get userRepositoriesUrl;

    @nullable
    @BuiltValueField(wireName: r'user_search_url')
    String get userSearchUrl;

    // Boilerplate code needed to wire-up generated code
    InlineResponse200._();

    static void _initializeBuilder(InlineResponse200Builder b) => b;

    factory InlineResponse200([void updates(InlineResponse200Builder b)]) = _$InlineResponse200;
    static Serializer<InlineResponse200> get serializer => _$inlineResponse200Serializer;
}

