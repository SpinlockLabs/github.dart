// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'feed.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Feed> _$feedSerializer = new _$FeedSerializer();

class _$FeedSerializer implements StructuredSerializer<Feed> {
  @override
  final Iterable<Type> types = const [Feed, _$Feed];
  @override
  final String wireName = 'Feed';

  @override
  Iterable<Object> serialize(Serializers serializers, Feed object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.timelineUrl != null) {
      result
        ..add('timeline_url')
        ..add(serializers.serialize(object.timelineUrl,
            specifiedType: const FullType(String)));
    }
    if (object.userUrl != null) {
      result
        ..add('user_url')
        ..add(serializers.serialize(object.userUrl,
            specifiedType: const FullType(String)));
    }
    if (object.currentUserPublicUrl != null) {
      result
        ..add('current_user_public_url')
        ..add(serializers.serialize(object.currentUserPublicUrl,
            specifiedType: const FullType(String)));
    }
    if (object.currentUserUrl != null) {
      result
        ..add('current_user_url')
        ..add(serializers.serialize(object.currentUserUrl,
            specifiedType: const FullType(String)));
    }
    if (object.currentUserActorUrl != null) {
      result
        ..add('current_user_actor_url')
        ..add(serializers.serialize(object.currentUserActorUrl,
            specifiedType: const FullType(String)));
    }
    if (object.currentUserOrganizationUrl != null) {
      result
        ..add('current_user_organization_url')
        ..add(serializers.serialize(object.currentUserOrganizationUrl,
            specifiedType: const FullType(String)));
    }
    if (object.currentUserOrganizationUrls != null) {
      result
        ..add('current_user_organization_urls')
        ..add(serializers.serialize(object.currentUserOrganizationUrls,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.securityAdvisoriesUrl != null) {
      result
        ..add('security_advisories_url')
        ..add(serializers.serialize(object.securityAdvisoriesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.links != null) {
      result
        ..add('_links')
        ..add(serializers.serialize(object.links,
            specifiedType: const FullType(FeedLinks)));
    }
    return result;
  }

  @override
  Feed deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'timeline_url':
          result.timelineUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user_url':
          result.userUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'current_user_public_url':
          result.currentUserPublicUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'current_user_url':
          result.currentUserUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'current_user_actor_url':
          result.currentUserActorUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'current_user_organization_url':
          result.currentUserOrganizationUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'current_user_organization_urls':
          result.currentUserOrganizationUrls.replace(serializers.deserialize(
                  value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'security_advisories_url':
          result.securityAdvisoriesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '_links':
          result.links.replace(serializers.deserialize(value,
              specifiedType: const FullType(FeedLinks)) as FeedLinks);
          break;
      }
    }

    return result.build();
  }
}

class _$Feed extends Feed {
  @override
  final String timelineUrl;
  @override
  final String userUrl;
  @override
  final String currentUserPublicUrl;
  @override
  final String currentUserUrl;
  @override
  final String currentUserActorUrl;
  @override
  final String currentUserOrganizationUrl;
  @override
  final BuiltList<String> currentUserOrganizationUrls;
  @override
  final String securityAdvisoriesUrl;
  @override
  final FeedLinks links;

  factory _$Feed([void Function(FeedBuilder) updates]) =>
      (new FeedBuilder()..update(updates)).build();

  _$Feed._(
      {this.timelineUrl,
      this.userUrl,
      this.currentUserPublicUrl,
      this.currentUserUrl,
      this.currentUserActorUrl,
      this.currentUserOrganizationUrl,
      this.currentUserOrganizationUrls,
      this.securityAdvisoriesUrl,
      this.links})
      : super._();

  @override
  Feed rebuild(void Function(FeedBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedBuilder toBuilder() => new FeedBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Feed &&
        timelineUrl == other.timelineUrl &&
        userUrl == other.userUrl &&
        currentUserPublicUrl == other.currentUserPublicUrl &&
        currentUserUrl == other.currentUserUrl &&
        currentUserActorUrl == other.currentUserActorUrl &&
        currentUserOrganizationUrl == other.currentUserOrganizationUrl &&
        currentUserOrganizationUrls == other.currentUserOrganizationUrls &&
        securityAdvisoriesUrl == other.securityAdvisoriesUrl &&
        links == other.links;
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
                                $jc($jc(0, timelineUrl.hashCode),
                                    userUrl.hashCode),
                                currentUserPublicUrl.hashCode),
                            currentUserUrl.hashCode),
                        currentUserActorUrl.hashCode),
                    currentUserOrganizationUrl.hashCode),
                currentUserOrganizationUrls.hashCode),
            securityAdvisoriesUrl.hashCode),
        links.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Feed')
          ..add('timelineUrl', timelineUrl)
          ..add('userUrl', userUrl)
          ..add('currentUserPublicUrl', currentUserPublicUrl)
          ..add('currentUserUrl', currentUserUrl)
          ..add('currentUserActorUrl', currentUserActorUrl)
          ..add('currentUserOrganizationUrl', currentUserOrganizationUrl)
          ..add('currentUserOrganizationUrls', currentUserOrganizationUrls)
          ..add('securityAdvisoriesUrl', securityAdvisoriesUrl)
          ..add('links', links))
        .toString();
  }
}

class FeedBuilder implements Builder<Feed, FeedBuilder> {
  _$Feed _$v;

  String _timelineUrl;
  String get timelineUrl => _$this._timelineUrl;
  set timelineUrl(String timelineUrl) => _$this._timelineUrl = timelineUrl;

  String _userUrl;
  String get userUrl => _$this._userUrl;
  set userUrl(String userUrl) => _$this._userUrl = userUrl;

  String _currentUserPublicUrl;
  String get currentUserPublicUrl => _$this._currentUserPublicUrl;
  set currentUserPublicUrl(String currentUserPublicUrl) =>
      _$this._currentUserPublicUrl = currentUserPublicUrl;

  String _currentUserUrl;
  String get currentUserUrl => _$this._currentUserUrl;
  set currentUserUrl(String currentUserUrl) =>
      _$this._currentUserUrl = currentUserUrl;

  String _currentUserActorUrl;
  String get currentUserActorUrl => _$this._currentUserActorUrl;
  set currentUserActorUrl(String currentUserActorUrl) =>
      _$this._currentUserActorUrl = currentUserActorUrl;

  String _currentUserOrganizationUrl;
  String get currentUserOrganizationUrl => _$this._currentUserOrganizationUrl;
  set currentUserOrganizationUrl(String currentUserOrganizationUrl) =>
      _$this._currentUserOrganizationUrl = currentUserOrganizationUrl;

  ListBuilder<String> _currentUserOrganizationUrls;
  ListBuilder<String> get currentUserOrganizationUrls =>
      _$this._currentUserOrganizationUrls ??= new ListBuilder<String>();
  set currentUserOrganizationUrls(
          ListBuilder<String> currentUserOrganizationUrls) =>
      _$this._currentUserOrganizationUrls = currentUserOrganizationUrls;

  String _securityAdvisoriesUrl;
  String get securityAdvisoriesUrl => _$this._securityAdvisoriesUrl;
  set securityAdvisoriesUrl(String securityAdvisoriesUrl) =>
      _$this._securityAdvisoriesUrl = securityAdvisoriesUrl;

  FeedLinksBuilder _links;
  FeedLinksBuilder get links => _$this._links ??= new FeedLinksBuilder();
  set links(FeedLinksBuilder links) => _$this._links = links;

  FeedBuilder() {
    Feed._initializeBuilder(this);
  }

  FeedBuilder get _$this {
    if (_$v != null) {
      _timelineUrl = _$v.timelineUrl;
      _userUrl = _$v.userUrl;
      _currentUserPublicUrl = _$v.currentUserPublicUrl;
      _currentUserUrl = _$v.currentUserUrl;
      _currentUserActorUrl = _$v.currentUserActorUrl;
      _currentUserOrganizationUrl = _$v.currentUserOrganizationUrl;
      _currentUserOrganizationUrls =
          _$v.currentUserOrganizationUrls?.toBuilder();
      _securityAdvisoriesUrl = _$v.securityAdvisoriesUrl;
      _links = _$v.links?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Feed other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Feed;
  }

  @override
  void update(void Function(FeedBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Feed build() {
    _$Feed _$result;
    try {
      _$result = _$v ??
          new _$Feed._(
              timelineUrl: timelineUrl,
              userUrl: userUrl,
              currentUserPublicUrl: currentUserPublicUrl,
              currentUserUrl: currentUserUrl,
              currentUserActorUrl: currentUserActorUrl,
              currentUserOrganizationUrl: currentUserOrganizationUrl,
              currentUserOrganizationUrls:
                  _currentUserOrganizationUrls?.build(),
              securityAdvisoriesUrl: securityAdvisoriesUrl,
              links: _links?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'currentUserOrganizationUrls';
        _currentUserOrganizationUrls?.build();

        _$failedField = 'links';
        _links?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Feed', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
