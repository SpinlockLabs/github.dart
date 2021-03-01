// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'team_simple.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<TeamSimple> _$teamSimpleSerializer = new _$TeamSimpleSerializer();

class _$TeamSimpleSerializer implements StructuredSerializer<TeamSimple> {
  @override
  final Iterable<Type> types = const [TeamSimple, _$TeamSimple];
  @override
  final String wireName = 'TeamSimple';

  @override
  Iterable<Object> serialize(Serializers serializers, TeamSimple object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.membersUrl != null) {
      result
        ..add('members_url')
        ..add(serializers.serialize(object.membersUrl,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.permission != null) {
      result
        ..add('permission')
        ..add(serializers.serialize(object.permission,
            specifiedType: const FullType(String)));
    }
    if (object.privacy != null) {
      result
        ..add('privacy')
        ..add(serializers.serialize(object.privacy,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.repositoriesUrl != null) {
      result
        ..add('repositories_url')
        ..add(serializers.serialize(object.repositoriesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    if (object.ldapDn != null) {
      result
        ..add('ldap_dn')
        ..add(serializers.serialize(object.ldapDn,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  TeamSimple deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamSimpleBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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
        case 'members_url':
          result.membersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'permission':
          result.permission = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'privacy':
          result.privacy = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repositories_url':
          result.repositoriesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ldap_dn':
          result.ldapDn = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$TeamSimple extends TeamSimple {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String url;
  @override
  final String membersUrl;
  @override
  final String name;
  @override
  final String description;
  @override
  final String permission;
  @override
  final String privacy;
  @override
  final String htmlUrl;
  @override
  final String repositoriesUrl;
  @override
  final String slug;
  @override
  final String ldapDn;

  factory _$TeamSimple([void Function(TeamSimpleBuilder) updates]) =>
      (new TeamSimpleBuilder()..update(updates)).build();

  _$TeamSimple._(
      {this.id,
      this.nodeId,
      this.url,
      this.membersUrl,
      this.name,
      this.description,
      this.permission,
      this.privacy,
      this.htmlUrl,
      this.repositoriesUrl,
      this.slug,
      this.ldapDn})
      : super._();

  @override
  TeamSimple rebuild(void Function(TeamSimpleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamSimpleBuilder toBuilder() => new TeamSimpleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamSimple &&
        id == other.id &&
        nodeId == other.nodeId &&
        url == other.url &&
        membersUrl == other.membersUrl &&
        name == other.name &&
        description == other.description &&
        permission == other.permission &&
        privacy == other.privacy &&
        htmlUrl == other.htmlUrl &&
        repositoriesUrl == other.repositoriesUrl &&
        slug == other.slug &&
        ldapDn == other.ldapDn;
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
                                            $jc($jc(0, id.hashCode),
                                                nodeId.hashCode),
                                            url.hashCode),
                                        membersUrl.hashCode),
                                    name.hashCode),
                                description.hashCode),
                            permission.hashCode),
                        privacy.hashCode),
                    htmlUrl.hashCode),
                repositoriesUrl.hashCode),
            slug.hashCode),
        ldapDn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamSimple')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('url', url)
          ..add('membersUrl', membersUrl)
          ..add('name', name)
          ..add('description', description)
          ..add('permission', permission)
          ..add('privacy', privacy)
          ..add('htmlUrl', htmlUrl)
          ..add('repositoriesUrl', repositoriesUrl)
          ..add('slug', slug)
          ..add('ldapDn', ldapDn))
        .toString();
  }
}

class TeamSimpleBuilder implements Builder<TeamSimple, TeamSimpleBuilder> {
  _$TeamSimple _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _membersUrl;
  String get membersUrl => _$this._membersUrl;
  set membersUrl(String membersUrl) => _$this._membersUrl = membersUrl;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _permission;
  String get permission => _$this._permission;
  set permission(String permission) => _$this._permission = permission;

  String _privacy;
  String get privacy => _$this._privacy;
  set privacy(String privacy) => _$this._privacy = privacy;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _repositoriesUrl;
  String get repositoriesUrl => _$this._repositoriesUrl;
  set repositoriesUrl(String repositoriesUrl) =>
      _$this._repositoriesUrl = repositoriesUrl;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _ldapDn;
  String get ldapDn => _$this._ldapDn;
  set ldapDn(String ldapDn) => _$this._ldapDn = ldapDn;

  TeamSimpleBuilder() {
    TeamSimple._initializeBuilder(this);
  }

  TeamSimpleBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _url = _$v.url;
      _membersUrl = _$v.membersUrl;
      _name = _$v.name;
      _description = _$v.description;
      _permission = _$v.permission;
      _privacy = _$v.privacy;
      _htmlUrl = _$v.htmlUrl;
      _repositoriesUrl = _$v.repositoriesUrl;
      _slug = _$v.slug;
      _ldapDn = _$v.ldapDn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamSimple other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TeamSimple;
  }

  @override
  void update(void Function(TeamSimpleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamSimple build() {
    final _$result = _$v ??
        new _$TeamSimple._(
            id: id,
            nodeId: nodeId,
            url: url,
            membersUrl: membersUrl,
            name: name,
            description: description,
            permission: permission,
            privacy: privacy,
            htmlUrl: htmlUrl,
            repositoriesUrl: repositoriesUrl,
            slug: slug,
            ldapDn: ldapDn);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
