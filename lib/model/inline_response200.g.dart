// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response200.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse200> _$inlineResponse200Serializer =
    new _$InlineResponse200Serializer();

class _$InlineResponse200Serializer
    implements StructuredSerializer<InlineResponse200> {
  @override
  final Iterable<Type> types = const [InlineResponse200, _$InlineResponse200];
  @override
  final String wireName = 'InlineResponse200';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse200 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.currentUserUrl != null) {
      result
        ..add('current_user_url')
        ..add(serializers.serialize(object.currentUserUrl,
            specifiedType: const FullType(String)));
    }
    if (object.currentUserAuthorizationsHtmlUrl != null) {
      result
        ..add('current_user_authorizations_html_url')
        ..add(serializers.serialize(object.currentUserAuthorizationsHtmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.authorizationsUrl != null) {
      result
        ..add('authorizations_url')
        ..add(serializers.serialize(object.authorizationsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.codeSearchUrl != null) {
      result
        ..add('code_search_url')
        ..add(serializers.serialize(object.codeSearchUrl,
            specifiedType: const FullType(String)));
    }
    if (object.commitSearchUrl != null) {
      result
        ..add('commit_search_url')
        ..add(serializers.serialize(object.commitSearchUrl,
            specifiedType: const FullType(String)));
    }
    if (object.emailsUrl != null) {
      result
        ..add('emails_url')
        ..add(serializers.serialize(object.emailsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.emojisUrl != null) {
      result
        ..add('emojis_url')
        ..add(serializers.serialize(object.emojisUrl,
            specifiedType: const FullType(String)));
    }
    if (object.eventsUrl != null) {
      result
        ..add('events_url')
        ..add(serializers.serialize(object.eventsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.feedsUrl != null) {
      result
        ..add('feeds_url')
        ..add(serializers.serialize(object.feedsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.followersUrl != null) {
      result
        ..add('followers_url')
        ..add(serializers.serialize(object.followersUrl,
            specifiedType: const FullType(String)));
    }
    if (object.followingUrl != null) {
      result
        ..add('following_url')
        ..add(serializers.serialize(object.followingUrl,
            specifiedType: const FullType(String)));
    }
    if (object.gistsUrl != null) {
      result
        ..add('gists_url')
        ..add(serializers.serialize(object.gistsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.hubUrl != null) {
      result
        ..add('hub_url')
        ..add(serializers.serialize(object.hubUrl,
            specifiedType: const FullType(String)));
    }
    if (object.issueSearchUrl != null) {
      result
        ..add('issue_search_url')
        ..add(serializers.serialize(object.issueSearchUrl,
            specifiedType: const FullType(String)));
    }
    if (object.issuesUrl != null) {
      result
        ..add('issues_url')
        ..add(serializers.serialize(object.issuesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.keysUrl != null) {
      result
        ..add('keys_url')
        ..add(serializers.serialize(object.keysUrl,
            specifiedType: const FullType(String)));
    }
    if (object.labelSearchUrl != null) {
      result
        ..add('label_search_url')
        ..add(serializers.serialize(object.labelSearchUrl,
            specifiedType: const FullType(String)));
    }
    if (object.notificationsUrl != null) {
      result
        ..add('notifications_url')
        ..add(serializers.serialize(object.notificationsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.organizationUrl != null) {
      result
        ..add('organization_url')
        ..add(serializers.serialize(object.organizationUrl,
            specifiedType: const FullType(String)));
    }
    if (object.organizationRepositoriesUrl != null) {
      result
        ..add('organization_repositories_url')
        ..add(serializers.serialize(object.organizationRepositoriesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.organizationTeamsUrl != null) {
      result
        ..add('organization_teams_url')
        ..add(serializers.serialize(object.organizationTeamsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.publicGistsUrl != null) {
      result
        ..add('public_gists_url')
        ..add(serializers.serialize(object.publicGistsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.rateLimitUrl != null) {
      result
        ..add('rate_limit_url')
        ..add(serializers.serialize(object.rateLimitUrl,
            specifiedType: const FullType(String)));
    }
    if (object.repositoryUrl != null) {
      result
        ..add('repository_url')
        ..add(serializers.serialize(object.repositoryUrl,
            specifiedType: const FullType(String)));
    }
    if (object.repositorySearchUrl != null) {
      result
        ..add('repository_search_url')
        ..add(serializers.serialize(object.repositorySearchUrl,
            specifiedType: const FullType(String)));
    }
    if (object.currentUserRepositoriesUrl != null) {
      result
        ..add('current_user_repositories_url')
        ..add(serializers.serialize(object.currentUserRepositoriesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.starredUrl != null) {
      result
        ..add('starred_url')
        ..add(serializers.serialize(object.starredUrl,
            specifiedType: const FullType(String)));
    }
    if (object.starredGistsUrl != null) {
      result
        ..add('starred_gists_url')
        ..add(serializers.serialize(object.starredGistsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.topicSearchUrl != null) {
      result
        ..add('topic_search_url')
        ..add(serializers.serialize(object.topicSearchUrl,
            specifiedType: const FullType(String)));
    }
    if (object.userUrl != null) {
      result
        ..add('user_url')
        ..add(serializers.serialize(object.userUrl,
            specifiedType: const FullType(String)));
    }
    if (object.userOrganizationsUrl != null) {
      result
        ..add('user_organizations_url')
        ..add(serializers.serialize(object.userOrganizationsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.userRepositoriesUrl != null) {
      result
        ..add('user_repositories_url')
        ..add(serializers.serialize(object.userRepositoriesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.userSearchUrl != null) {
      result
        ..add('user_search_url')
        ..add(serializers.serialize(object.userSearchUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineResponse200 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse200Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'current_user_url':
          result.currentUserUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'current_user_authorizations_html_url':
          result.currentUserAuthorizationsHtmlUrl = serializers.deserialize(
              value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'authorizations_url':
          result.authorizationsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'code_search_url':
          result.codeSearchUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit_search_url':
          result.commitSearchUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'emails_url':
          result.emailsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'emojis_url':
          result.emojisUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'events_url':
          result.eventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'feeds_url':
          result.feedsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'followers_url':
          result.followersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'following_url':
          result.followingUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gists_url':
          result.gistsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hub_url':
          result.hubUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issue_search_url':
          result.issueSearchUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issues_url':
          result.issuesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'keys_url':
          result.keysUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'label_search_url':
          result.labelSearchUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'notifications_url':
          result.notificationsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organization_url':
          result.organizationUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organization_repositories_url':
          result.organizationRepositoriesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organization_teams_url':
          result.organizationTeamsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'public_gists_url':
          result.publicGistsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'rate_limit_url':
          result.rateLimitUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository_url':
          result.repositoryUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository_search_url':
          result.repositorySearchUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'current_user_repositories_url':
          result.currentUserRepositoriesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'starred_url':
          result.starredUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'starred_gists_url':
          result.starredGistsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'topic_search_url':
          result.topicSearchUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_url':
          result.userUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_organizations_url':
          result.userOrganizationsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_repositories_url':
          result.userRepositoriesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_search_url':
          result.userSearchUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse200 extends InlineResponse200 {
  @override
  final String currentUserUrl;
  @override
  final String currentUserAuthorizationsHtmlUrl;
  @override
  final String authorizationsUrl;
  @override
  final String codeSearchUrl;
  @override
  final String commitSearchUrl;
  @override
  final String emailsUrl;
  @override
  final String emojisUrl;
  @override
  final String eventsUrl;
  @override
  final String feedsUrl;
  @override
  final String followersUrl;
  @override
  final String followingUrl;
  @override
  final String gistsUrl;
  @override
  final String hubUrl;
  @override
  final String issueSearchUrl;
  @override
  final String issuesUrl;
  @override
  final String keysUrl;
  @override
  final String labelSearchUrl;
  @override
  final String notificationsUrl;
  @override
  final String organizationUrl;
  @override
  final String organizationRepositoriesUrl;
  @override
  final String organizationTeamsUrl;
  @override
  final String publicGistsUrl;
  @override
  final String rateLimitUrl;
  @override
  final String repositoryUrl;
  @override
  final String repositorySearchUrl;
  @override
  final String currentUserRepositoriesUrl;
  @override
  final String starredUrl;
  @override
  final String starredGistsUrl;
  @override
  final String topicSearchUrl;
  @override
  final String userUrl;
  @override
  final String userOrganizationsUrl;
  @override
  final String userRepositoriesUrl;
  @override
  final String userSearchUrl;

  factory _$InlineResponse200(
          [void Function(InlineResponse200Builder) updates]) =>
      (new InlineResponse200Builder()..update(updates)).build();

  _$InlineResponse200._(
      {this.currentUserUrl,
      this.currentUserAuthorizationsHtmlUrl,
      this.authorizationsUrl,
      this.codeSearchUrl,
      this.commitSearchUrl,
      this.emailsUrl,
      this.emojisUrl,
      this.eventsUrl,
      this.feedsUrl,
      this.followersUrl,
      this.followingUrl,
      this.gistsUrl,
      this.hubUrl,
      this.issueSearchUrl,
      this.issuesUrl,
      this.keysUrl,
      this.labelSearchUrl,
      this.notificationsUrl,
      this.organizationUrl,
      this.organizationRepositoriesUrl,
      this.organizationTeamsUrl,
      this.publicGistsUrl,
      this.rateLimitUrl,
      this.repositoryUrl,
      this.repositorySearchUrl,
      this.currentUserRepositoriesUrl,
      this.starredUrl,
      this.starredGistsUrl,
      this.topicSearchUrl,
      this.userUrl,
      this.userOrganizationsUrl,
      this.userRepositoriesUrl,
      this.userSearchUrl})
      : super._();

  @override
  InlineResponse200 rebuild(void Function(InlineResponse200Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse200Builder toBuilder() =>
      new InlineResponse200Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse200 &&
        currentUserUrl == other.currentUserUrl &&
        currentUserAuthorizationsHtmlUrl ==
            other.currentUserAuthorizationsHtmlUrl &&
        authorizationsUrl == other.authorizationsUrl &&
        codeSearchUrl == other.codeSearchUrl &&
        commitSearchUrl == other.commitSearchUrl &&
        emailsUrl == other.emailsUrl &&
        emojisUrl == other.emojisUrl &&
        eventsUrl == other.eventsUrl &&
        feedsUrl == other.feedsUrl &&
        followersUrl == other.followersUrl &&
        followingUrl == other.followingUrl &&
        gistsUrl == other.gistsUrl &&
        hubUrl == other.hubUrl &&
        issueSearchUrl == other.issueSearchUrl &&
        issuesUrl == other.issuesUrl &&
        keysUrl == other.keysUrl &&
        labelSearchUrl == other.labelSearchUrl &&
        notificationsUrl == other.notificationsUrl &&
        organizationUrl == other.organizationUrl &&
        organizationRepositoriesUrl == other.organizationRepositoriesUrl &&
        organizationTeamsUrl == other.organizationTeamsUrl &&
        publicGistsUrl == other.publicGistsUrl &&
        rateLimitUrl == other.rateLimitUrl &&
        repositoryUrl == other.repositoryUrl &&
        repositorySearchUrl == other.repositorySearchUrl &&
        currentUserRepositoriesUrl == other.currentUserRepositoriesUrl &&
        starredUrl == other.starredUrl &&
        starredGistsUrl == other.starredGistsUrl &&
        topicSearchUrl == other.topicSearchUrl &&
        userUrl == other.userUrl &&
        userOrganizationsUrl == other.userOrganizationsUrl &&
        userRepositoriesUrl == other.userRepositoriesUrl &&
        userSearchUrl == other.userSearchUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, currentUserUrl.hashCode), currentUserAuthorizationsHtmlUrl.hashCode), authorizationsUrl.hashCode), codeSearchUrl.hashCode), commitSearchUrl.hashCode), emailsUrl.hashCode), emojisUrl.hashCode), eventsUrl.hashCode), feedsUrl.hashCode), followersUrl.hashCode), followingUrl.hashCode), gistsUrl.hashCode), hubUrl.hashCode), issueSearchUrl.hashCode),
                                                                                issuesUrl.hashCode),
                                                                            keysUrl.hashCode),
                                                                        labelSearchUrl.hashCode),
                                                                    notificationsUrl.hashCode),
                                                                organizationUrl.hashCode),
                                                            organizationRepositoriesUrl.hashCode),
                                                        organizationTeamsUrl.hashCode),
                                                    publicGistsUrl.hashCode),
                                                rateLimitUrl.hashCode),
                                            repositoryUrl.hashCode),
                                        repositorySearchUrl.hashCode),
                                    currentUserRepositoriesUrl.hashCode),
                                starredUrl.hashCode),
                            starredGistsUrl.hashCode),
                        topicSearchUrl.hashCode),
                    userUrl.hashCode),
                userOrganizationsUrl.hashCode),
            userRepositoriesUrl.hashCode),
        userSearchUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse200')
          ..add('currentUserUrl', currentUserUrl)
          ..add('currentUserAuthorizationsHtmlUrl',
              currentUserAuthorizationsHtmlUrl)
          ..add('authorizationsUrl', authorizationsUrl)
          ..add('codeSearchUrl', codeSearchUrl)
          ..add('commitSearchUrl', commitSearchUrl)
          ..add('emailsUrl', emailsUrl)
          ..add('emojisUrl', emojisUrl)
          ..add('eventsUrl', eventsUrl)
          ..add('feedsUrl', feedsUrl)
          ..add('followersUrl', followersUrl)
          ..add('followingUrl', followingUrl)
          ..add('gistsUrl', gistsUrl)
          ..add('hubUrl', hubUrl)
          ..add('issueSearchUrl', issueSearchUrl)
          ..add('issuesUrl', issuesUrl)
          ..add('keysUrl', keysUrl)
          ..add('labelSearchUrl', labelSearchUrl)
          ..add('notificationsUrl', notificationsUrl)
          ..add('organizationUrl', organizationUrl)
          ..add('organizationRepositoriesUrl', organizationRepositoriesUrl)
          ..add('organizationTeamsUrl', organizationTeamsUrl)
          ..add('publicGistsUrl', publicGistsUrl)
          ..add('rateLimitUrl', rateLimitUrl)
          ..add('repositoryUrl', repositoryUrl)
          ..add('repositorySearchUrl', repositorySearchUrl)
          ..add('currentUserRepositoriesUrl', currentUserRepositoriesUrl)
          ..add('starredUrl', starredUrl)
          ..add('starredGistsUrl', starredGistsUrl)
          ..add('topicSearchUrl', topicSearchUrl)
          ..add('userUrl', userUrl)
          ..add('userOrganizationsUrl', userOrganizationsUrl)
          ..add('userRepositoriesUrl', userRepositoriesUrl)
          ..add('userSearchUrl', userSearchUrl))
        .toString();
  }
}

class InlineResponse200Builder
    implements Builder<InlineResponse200, InlineResponse200Builder> {
  _$InlineResponse200 _$v;

  String _currentUserUrl;
  String get currentUserUrl => _$this._currentUserUrl;
  set currentUserUrl(String currentUserUrl) =>
      _$this._currentUserUrl = currentUserUrl;

  String _currentUserAuthorizationsHtmlUrl;
  String get currentUserAuthorizationsHtmlUrl =>
      _$this._currentUserAuthorizationsHtmlUrl;
  set currentUserAuthorizationsHtmlUrl(
          String currentUserAuthorizationsHtmlUrl) =>
      _$this._currentUserAuthorizationsHtmlUrl =
          currentUserAuthorizationsHtmlUrl;

  String _authorizationsUrl;
  String get authorizationsUrl => _$this._authorizationsUrl;
  set authorizationsUrl(String authorizationsUrl) =>
      _$this._authorizationsUrl = authorizationsUrl;

  String _codeSearchUrl;
  String get codeSearchUrl => _$this._codeSearchUrl;
  set codeSearchUrl(String codeSearchUrl) =>
      _$this._codeSearchUrl = codeSearchUrl;

  String _commitSearchUrl;
  String get commitSearchUrl => _$this._commitSearchUrl;
  set commitSearchUrl(String commitSearchUrl) =>
      _$this._commitSearchUrl = commitSearchUrl;

  String _emailsUrl;
  String get emailsUrl => _$this._emailsUrl;
  set emailsUrl(String emailsUrl) => _$this._emailsUrl = emailsUrl;

  String _emojisUrl;
  String get emojisUrl => _$this._emojisUrl;
  set emojisUrl(String emojisUrl) => _$this._emojisUrl = emojisUrl;

  String _eventsUrl;
  String get eventsUrl => _$this._eventsUrl;
  set eventsUrl(String eventsUrl) => _$this._eventsUrl = eventsUrl;

  String _feedsUrl;
  String get feedsUrl => _$this._feedsUrl;
  set feedsUrl(String feedsUrl) => _$this._feedsUrl = feedsUrl;

  String _followersUrl;
  String get followersUrl => _$this._followersUrl;
  set followersUrl(String followersUrl) => _$this._followersUrl = followersUrl;

  String _followingUrl;
  String get followingUrl => _$this._followingUrl;
  set followingUrl(String followingUrl) => _$this._followingUrl = followingUrl;

  String _gistsUrl;
  String get gistsUrl => _$this._gistsUrl;
  set gistsUrl(String gistsUrl) => _$this._gistsUrl = gistsUrl;

  String _hubUrl;
  String get hubUrl => _$this._hubUrl;
  set hubUrl(String hubUrl) => _$this._hubUrl = hubUrl;

  String _issueSearchUrl;
  String get issueSearchUrl => _$this._issueSearchUrl;
  set issueSearchUrl(String issueSearchUrl) =>
      _$this._issueSearchUrl = issueSearchUrl;

  String _issuesUrl;
  String get issuesUrl => _$this._issuesUrl;
  set issuesUrl(String issuesUrl) => _$this._issuesUrl = issuesUrl;

  String _keysUrl;
  String get keysUrl => _$this._keysUrl;
  set keysUrl(String keysUrl) => _$this._keysUrl = keysUrl;

  String _labelSearchUrl;
  String get labelSearchUrl => _$this._labelSearchUrl;
  set labelSearchUrl(String labelSearchUrl) =>
      _$this._labelSearchUrl = labelSearchUrl;

  String _notificationsUrl;
  String get notificationsUrl => _$this._notificationsUrl;
  set notificationsUrl(String notificationsUrl) =>
      _$this._notificationsUrl = notificationsUrl;

  String _organizationUrl;
  String get organizationUrl => _$this._organizationUrl;
  set organizationUrl(String organizationUrl) =>
      _$this._organizationUrl = organizationUrl;

  String _organizationRepositoriesUrl;
  String get organizationRepositoriesUrl => _$this._organizationRepositoriesUrl;
  set organizationRepositoriesUrl(String organizationRepositoriesUrl) =>
      _$this._organizationRepositoriesUrl = organizationRepositoriesUrl;

  String _organizationTeamsUrl;
  String get organizationTeamsUrl => _$this._organizationTeamsUrl;
  set organizationTeamsUrl(String organizationTeamsUrl) =>
      _$this._organizationTeamsUrl = organizationTeamsUrl;

  String _publicGistsUrl;
  String get publicGistsUrl => _$this._publicGistsUrl;
  set publicGistsUrl(String publicGistsUrl) =>
      _$this._publicGistsUrl = publicGistsUrl;

  String _rateLimitUrl;
  String get rateLimitUrl => _$this._rateLimitUrl;
  set rateLimitUrl(String rateLimitUrl) => _$this._rateLimitUrl = rateLimitUrl;

  String _repositoryUrl;
  String get repositoryUrl => _$this._repositoryUrl;
  set repositoryUrl(String repositoryUrl) =>
      _$this._repositoryUrl = repositoryUrl;

  String _repositorySearchUrl;
  String get repositorySearchUrl => _$this._repositorySearchUrl;
  set repositorySearchUrl(String repositorySearchUrl) =>
      _$this._repositorySearchUrl = repositorySearchUrl;

  String _currentUserRepositoriesUrl;
  String get currentUserRepositoriesUrl => _$this._currentUserRepositoriesUrl;
  set currentUserRepositoriesUrl(String currentUserRepositoriesUrl) =>
      _$this._currentUserRepositoriesUrl = currentUserRepositoriesUrl;

  String _starredUrl;
  String get starredUrl => _$this._starredUrl;
  set starredUrl(String starredUrl) => _$this._starredUrl = starredUrl;

  String _starredGistsUrl;
  String get starredGistsUrl => _$this._starredGistsUrl;
  set starredGistsUrl(String starredGistsUrl) =>
      _$this._starredGistsUrl = starredGistsUrl;

  String _topicSearchUrl;
  String get topicSearchUrl => _$this._topicSearchUrl;
  set topicSearchUrl(String topicSearchUrl) =>
      _$this._topicSearchUrl = topicSearchUrl;

  String _userUrl;
  String get userUrl => _$this._userUrl;
  set userUrl(String userUrl) => _$this._userUrl = userUrl;

  String _userOrganizationsUrl;
  String get userOrganizationsUrl => _$this._userOrganizationsUrl;
  set userOrganizationsUrl(String userOrganizationsUrl) =>
      _$this._userOrganizationsUrl = userOrganizationsUrl;

  String _userRepositoriesUrl;
  String get userRepositoriesUrl => _$this._userRepositoriesUrl;
  set userRepositoriesUrl(String userRepositoriesUrl) =>
      _$this._userRepositoriesUrl = userRepositoriesUrl;

  String _userSearchUrl;
  String get userSearchUrl => _$this._userSearchUrl;
  set userSearchUrl(String userSearchUrl) =>
      _$this._userSearchUrl = userSearchUrl;

  InlineResponse200Builder() {
    InlineResponse200._initializeBuilder(this);
  }

  InlineResponse200Builder get _$this {
    if (_$v != null) {
      _currentUserUrl = _$v.currentUserUrl;
      _currentUserAuthorizationsHtmlUrl = _$v.currentUserAuthorizationsHtmlUrl;
      _authorizationsUrl = _$v.authorizationsUrl;
      _codeSearchUrl = _$v.codeSearchUrl;
      _commitSearchUrl = _$v.commitSearchUrl;
      _emailsUrl = _$v.emailsUrl;
      _emojisUrl = _$v.emojisUrl;
      _eventsUrl = _$v.eventsUrl;
      _feedsUrl = _$v.feedsUrl;
      _followersUrl = _$v.followersUrl;
      _followingUrl = _$v.followingUrl;
      _gistsUrl = _$v.gistsUrl;
      _hubUrl = _$v.hubUrl;
      _issueSearchUrl = _$v.issueSearchUrl;
      _issuesUrl = _$v.issuesUrl;
      _keysUrl = _$v.keysUrl;
      _labelSearchUrl = _$v.labelSearchUrl;
      _notificationsUrl = _$v.notificationsUrl;
      _organizationUrl = _$v.organizationUrl;
      _organizationRepositoriesUrl = _$v.organizationRepositoriesUrl;
      _organizationTeamsUrl = _$v.organizationTeamsUrl;
      _publicGistsUrl = _$v.publicGistsUrl;
      _rateLimitUrl = _$v.rateLimitUrl;
      _repositoryUrl = _$v.repositoryUrl;
      _repositorySearchUrl = _$v.repositorySearchUrl;
      _currentUserRepositoriesUrl = _$v.currentUserRepositoriesUrl;
      _starredUrl = _$v.starredUrl;
      _starredGistsUrl = _$v.starredGistsUrl;
      _topicSearchUrl = _$v.topicSearchUrl;
      _userUrl = _$v.userUrl;
      _userOrganizationsUrl = _$v.userOrganizationsUrl;
      _userRepositoriesUrl = _$v.userRepositoriesUrl;
      _userSearchUrl = _$v.userSearchUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse200 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse200;
  }

  @override
  void update(void Function(InlineResponse200Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse200 build() {
    final _$result = _$v ??
        new _$InlineResponse200._(
            currentUserUrl: currentUserUrl,
            currentUserAuthorizationsHtmlUrl: currentUserAuthorizationsHtmlUrl,
            authorizationsUrl: authorizationsUrl,
            codeSearchUrl: codeSearchUrl,
            commitSearchUrl: commitSearchUrl,
            emailsUrl: emailsUrl,
            emojisUrl: emojisUrl,
            eventsUrl: eventsUrl,
            feedsUrl: feedsUrl,
            followersUrl: followersUrl,
            followingUrl: followingUrl,
            gistsUrl: gistsUrl,
            hubUrl: hubUrl,
            issueSearchUrl: issueSearchUrl,
            issuesUrl: issuesUrl,
            keysUrl: keysUrl,
            labelSearchUrl: labelSearchUrl,
            notificationsUrl: notificationsUrl,
            organizationUrl: organizationUrl,
            organizationRepositoriesUrl: organizationRepositoriesUrl,
            organizationTeamsUrl: organizationTeamsUrl,
            publicGistsUrl: publicGistsUrl,
            rateLimitUrl: rateLimitUrl,
            repositoryUrl: repositoryUrl,
            repositorySearchUrl: repositorySearchUrl,
            currentUserRepositoriesUrl: currentUserRepositoriesUrl,
            starredUrl: starredUrl,
            starredGistsUrl: starredGistsUrl,
            topicSearchUrl: topicSearchUrl,
            userUrl: userUrl,
            userOrganizationsUrl: userOrganizationsUrl,
            userRepositoriesUrl: userRepositoriesUrl,
            userSearchUrl: userSearchUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
