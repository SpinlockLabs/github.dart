// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'organization_simple.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrganizationSimple> _$organizationSimpleSerializer =
    new _$OrganizationSimpleSerializer();

class _$OrganizationSimpleSerializer
    implements StructuredSerializer<OrganizationSimple> {
  @override
  final Iterable<Type> types = const [OrganizationSimple, _$OrganizationSimple];
  @override
  final String wireName = 'OrganizationSimple';

  @override
  Iterable<Object> serialize(Serializers serializers, OrganizationSimple object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.login != null) {
      result
        ..add('login')
        ..add(serializers.serialize(object.login,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.reposUrl != null) {
      result
        ..add('repos_url')
        ..add(serializers.serialize(object.reposUrl,
            specifiedType: const FullType(String)));
    }
    if (object.eventsUrl != null) {
      result
        ..add('events_url')
        ..add(serializers.serialize(object.eventsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.hooksUrl != null) {
      result
        ..add('hooks_url')
        ..add(serializers.serialize(object.hooksUrl,
            specifiedType: const FullType(String)));
    }
    if (object.issuesUrl != null) {
      result
        ..add('issues_url')
        ..add(serializers.serialize(object.issuesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.membersUrl != null) {
      result
        ..add('members_url')
        ..add(serializers.serialize(object.membersUrl,
            specifiedType: const FullType(String)));
    }
    if (object.publicMembersUrl != null) {
      result
        ..add('public_members_url')
        ..add(serializers.serialize(object.publicMembersUrl,
            specifiedType: const FullType(String)));
    }
    if (object.avatarUrl != null) {
      result
        ..add('avatar_url')
        ..add(serializers.serialize(object.avatarUrl,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OrganizationSimple deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrganizationSimpleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repos_url':
          result.reposUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'events_url':
          result.eventsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hooks_url':
          result.hooksUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issues_url':
          result.issuesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'members_url':
          result.membersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'public_members_url':
          result.publicMembersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar_url':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OrganizationSimple extends OrganizationSimple {
  @override
  final String login;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String url;
  @override
  final String reposUrl;
  @override
  final String eventsUrl;
  @override
  final String hooksUrl;
  @override
  final String issuesUrl;
  @override
  final String membersUrl;
  @override
  final String publicMembersUrl;
  @override
  final String avatarUrl;
  @override
  final String description;

  factory _$OrganizationSimple(
          [void Function(OrganizationSimpleBuilder) updates]) =>
      (new OrganizationSimpleBuilder()..update(updates)).build();

  _$OrganizationSimple._(
      {this.login,
      this.id,
      this.nodeId,
      this.url,
      this.reposUrl,
      this.eventsUrl,
      this.hooksUrl,
      this.issuesUrl,
      this.membersUrl,
      this.publicMembersUrl,
      this.avatarUrl,
      this.description})
      : super._();

  @override
  OrganizationSimple rebuild(
          void Function(OrganizationSimpleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationSimpleBuilder toBuilder() =>
      new OrganizationSimpleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationSimple &&
        login == other.login &&
        id == other.id &&
        nodeId == other.nodeId &&
        url == other.url &&
        reposUrl == other.reposUrl &&
        eventsUrl == other.eventsUrl &&
        hooksUrl == other.hooksUrl &&
        issuesUrl == other.issuesUrl &&
        membersUrl == other.membersUrl &&
        publicMembersUrl == other.publicMembersUrl &&
        avatarUrl == other.avatarUrl &&
        description == other.description;
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
                                            $jc($jc(0, login.hashCode),
                                                id.hashCode),
                                            nodeId.hashCode),
                                        url.hashCode),
                                    reposUrl.hashCode),
                                eventsUrl.hashCode),
                            hooksUrl.hashCode),
                        issuesUrl.hashCode),
                    membersUrl.hashCode),
                publicMembersUrl.hashCode),
            avatarUrl.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrganizationSimple')
          ..add('login', login)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('url', url)
          ..add('reposUrl', reposUrl)
          ..add('eventsUrl', eventsUrl)
          ..add('hooksUrl', hooksUrl)
          ..add('issuesUrl', issuesUrl)
          ..add('membersUrl', membersUrl)
          ..add('publicMembersUrl', publicMembersUrl)
          ..add('avatarUrl', avatarUrl)
          ..add('description', description))
        .toString();
  }
}

class OrganizationSimpleBuilder
    implements Builder<OrganizationSimple, OrganizationSimpleBuilder> {
  _$OrganizationSimple _$v;

  String _login;
  String get login => _$this._login;
  set login(String login) => _$this._login = login;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _reposUrl;
  String get reposUrl => _$this._reposUrl;
  set reposUrl(String reposUrl) => _$this._reposUrl = reposUrl;

  String _eventsUrl;
  String get eventsUrl => _$this._eventsUrl;
  set eventsUrl(String eventsUrl) => _$this._eventsUrl = eventsUrl;

  String _hooksUrl;
  String get hooksUrl => _$this._hooksUrl;
  set hooksUrl(String hooksUrl) => _$this._hooksUrl = hooksUrl;

  String _issuesUrl;
  String get issuesUrl => _$this._issuesUrl;
  set issuesUrl(String issuesUrl) => _$this._issuesUrl = issuesUrl;

  String _membersUrl;
  String get membersUrl => _$this._membersUrl;
  set membersUrl(String membersUrl) => _$this._membersUrl = membersUrl;

  String _publicMembersUrl;
  String get publicMembersUrl => _$this._publicMembersUrl;
  set publicMembersUrl(String publicMembersUrl) =>
      _$this._publicMembersUrl = publicMembersUrl;

  String _avatarUrl;
  String get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  OrganizationSimpleBuilder() {
    OrganizationSimple._initializeBuilder(this);
  }

  OrganizationSimpleBuilder get _$this {
    if (_$v != null) {
      _login = _$v.login;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _url = _$v.url;
      _reposUrl = _$v.reposUrl;
      _eventsUrl = _$v.eventsUrl;
      _hooksUrl = _$v.hooksUrl;
      _issuesUrl = _$v.issuesUrl;
      _membersUrl = _$v.membersUrl;
      _publicMembersUrl = _$v.publicMembersUrl;
      _avatarUrl = _$v.avatarUrl;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationSimple other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrganizationSimple;
  }

  @override
  void update(void Function(OrganizationSimpleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrganizationSimple build() {
    final _$result = _$v ??
        new _$OrganizationSimple._(
            login: login,
            id: id,
            nodeId: nodeId,
            url: url,
            reposUrl: reposUrl,
            eventsUrl: eventsUrl,
            hooksUrl: hooksUrl,
            issuesUrl: issuesUrl,
            membersUrl: membersUrl,
            publicMembersUrl: publicMembersUrl,
            avatarUrl: avatarUrl,
            description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
