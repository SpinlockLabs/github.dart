// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'team_full.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const TeamFullPrivacyEnum _$teamFullPrivacyEnum_closed =
    const TeamFullPrivacyEnum._('closed');
const TeamFullPrivacyEnum _$teamFullPrivacyEnum_secret =
    const TeamFullPrivacyEnum._('secret');

TeamFullPrivacyEnum _$teamFullPrivacyEnumValueOf(String name) {
  switch (name) {
    case 'closed':
      return _$teamFullPrivacyEnum_closed;
    case 'secret':
      return _$teamFullPrivacyEnum_secret;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<TeamFullPrivacyEnum> _$teamFullPrivacyEnumValues =
    new BuiltSet<TeamFullPrivacyEnum>(const <TeamFullPrivacyEnum>[
  _$teamFullPrivacyEnum_closed,
  _$teamFullPrivacyEnum_secret,
]);

Serializer<TeamFull> _$teamFullSerializer = new _$TeamFullSerializer();
Serializer<TeamFullPrivacyEnum> _$teamFullPrivacyEnumSerializer =
    new _$TeamFullPrivacyEnumSerializer();

class _$TeamFullSerializer implements StructuredSerializer<TeamFull> {
  @override
  final Iterable<Type> types = const [TeamFull, _$TeamFull];
  @override
  final String wireName = 'TeamFull';

  @override
  Iterable<Object> serialize(Serializers serializers, TeamFull object,
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
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.privacy != null) {
      result
        ..add('privacy')
        ..add(serializers.serialize(object.privacy,
            specifiedType: const FullType(TeamFullPrivacyEnum)));
    }
    if (object.permission != null) {
      result
        ..add('permission')
        ..add(serializers.serialize(object.permission,
            specifiedType: const FullType(String)));
    }
    if (object.membersUrl != null) {
      result
        ..add('members_url')
        ..add(serializers.serialize(object.membersUrl,
            specifiedType: const FullType(String)));
    }
    if (object.repositoriesUrl != null) {
      result
        ..add('repositories_url')
        ..add(serializers.serialize(object.repositoriesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.parent != null) {
      result
        ..add('parent')
        ..add(serializers.serialize(object.parent,
            specifiedType: const FullType(TeamSimple)));
    }
    if (object.membersCount != null) {
      result
        ..add('members_count')
        ..add(serializers.serialize(object.membersCount,
            specifiedType: const FullType(int)));
    }
    if (object.reposCount != null) {
      result
        ..add('repos_count')
        ..add(serializers.serialize(object.reposCount,
            specifiedType: const FullType(int)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.organization != null) {
      result
        ..add('organization')
        ..add(serializers.serialize(object.organization,
            specifiedType: const FullType(OrganizationFull)));
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
  TeamFull deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamFullBuilder();

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
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'privacy':
          result.privacy = serializers.deserialize(value,
                  specifiedType: const FullType(TeamFullPrivacyEnum))
              as TeamFullPrivacyEnum;
          break;
        case 'permission':
          result.permission = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'members_url':
          result.membersUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repositories_url':
          result.repositoriesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'parent':
          result.parent.replace(serializers.deserialize(value,
              specifiedType: const FullType(TeamSimple)) as TeamSimple);
          break;
        case 'members_count':
          result.membersCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'repos_count':
          result.reposCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'organization':
          result.organization.replace(serializers.deserialize(value,
                  specifiedType: const FullType(OrganizationFull))
              as OrganizationFull);
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

class _$TeamFullPrivacyEnumSerializer
    implements PrimitiveSerializer<TeamFullPrivacyEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'closed': 'closed',
    'secret': 'secret',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'closed': 'closed',
    'secret': 'secret',
  };

  @override
  final Iterable<Type> types = const <Type>[TeamFullPrivacyEnum];
  @override
  final String wireName = 'TeamFullPrivacyEnum';

  @override
  Object serialize(Serializers serializers, TeamFullPrivacyEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  TeamFullPrivacyEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      TeamFullPrivacyEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$TeamFull extends TeamFull {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String description;
  @override
  final TeamFullPrivacyEnum privacy;
  @override
  final String permission;
  @override
  final String membersUrl;
  @override
  final String repositoriesUrl;
  @override
  final TeamSimple parent;
  @override
  final int membersCount;
  @override
  final int reposCount;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final OrganizationFull organization;
  @override
  final String ldapDn;

  factory _$TeamFull([void Function(TeamFullBuilder) updates]) =>
      (new TeamFullBuilder()..update(updates)).build();

  _$TeamFull._(
      {this.id,
      this.nodeId,
      this.url,
      this.htmlUrl,
      this.name,
      this.slug,
      this.description,
      this.privacy,
      this.permission,
      this.membersUrl,
      this.repositoriesUrl,
      this.parent,
      this.membersCount,
      this.reposCount,
      this.createdAt,
      this.updatedAt,
      this.organization,
      this.ldapDn})
      : super._();

  @override
  TeamFull rebuild(void Function(TeamFullBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamFullBuilder toBuilder() => new TeamFullBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is TeamFull &&
        id == other.id &&
        nodeId == other.nodeId &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        name == other.name &&
        slug == other.slug &&
        description == other.description &&
        privacy == other.privacy &&
        permission == other.permission &&
        membersUrl == other.membersUrl &&
        repositoriesUrl == other.repositoriesUrl &&
        parent == other.parent &&
        membersCount == other.membersCount &&
        reposCount == other.reposCount &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        organization == other.organization &&
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
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        $jc(
                                                                            0,
                                                                            id
                                                                                .hashCode),
                                                                        nodeId
                                                                            .hashCode),
                                                                    url
                                                                        .hashCode),
                                                                htmlUrl
                                                                    .hashCode),
                                                            name.hashCode),
                                                        slug.hashCode),
                                                    description.hashCode),
                                                privacy.hashCode),
                                            permission.hashCode),
                                        membersUrl.hashCode),
                                    repositoriesUrl.hashCode),
                                parent.hashCode),
                            membersCount.hashCode),
                        reposCount.hashCode),
                    createdAt.hashCode),
                updatedAt.hashCode),
            organization.hashCode),
        ldapDn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('TeamFull')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('name', name)
          ..add('slug', slug)
          ..add('description', description)
          ..add('privacy', privacy)
          ..add('permission', permission)
          ..add('membersUrl', membersUrl)
          ..add('repositoriesUrl', repositoriesUrl)
          ..add('parent', parent)
          ..add('membersCount', membersCount)
          ..add('reposCount', reposCount)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('organization', organization)
          ..add('ldapDn', ldapDn))
        .toString();
  }
}

class TeamFullBuilder implements Builder<TeamFull, TeamFullBuilder> {
  _$TeamFull _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  TeamFullPrivacyEnum _privacy;
  TeamFullPrivacyEnum get privacy => _$this._privacy;
  set privacy(TeamFullPrivacyEnum privacy) => _$this._privacy = privacy;

  String _permission;
  String get permission => _$this._permission;
  set permission(String permission) => _$this._permission = permission;

  String _membersUrl;
  String get membersUrl => _$this._membersUrl;
  set membersUrl(String membersUrl) => _$this._membersUrl = membersUrl;

  String _repositoriesUrl;
  String get repositoriesUrl => _$this._repositoriesUrl;
  set repositoriesUrl(String repositoriesUrl) =>
      _$this._repositoriesUrl = repositoriesUrl;

  TeamSimpleBuilder _parent;
  TeamSimpleBuilder get parent => _$this._parent ??= new TeamSimpleBuilder();
  set parent(TeamSimpleBuilder parent) => _$this._parent = parent;

  int _membersCount;
  int get membersCount => _$this._membersCount;
  set membersCount(int membersCount) => _$this._membersCount = membersCount;

  int _reposCount;
  int get reposCount => _$this._reposCount;
  set reposCount(int reposCount) => _$this._reposCount = reposCount;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  OrganizationFullBuilder _organization;
  OrganizationFullBuilder get organization =>
      _$this._organization ??= new OrganizationFullBuilder();
  set organization(OrganizationFullBuilder organization) =>
      _$this._organization = organization;

  String _ldapDn;
  String get ldapDn => _$this._ldapDn;
  set ldapDn(String ldapDn) => _$this._ldapDn = ldapDn;

  TeamFullBuilder() {
    TeamFull._initializeBuilder(this);
  }

  TeamFullBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _name = _$v.name;
      _slug = _$v.slug;
      _description = _$v.description;
      _privacy = _$v.privacy;
      _permission = _$v.permission;
      _membersUrl = _$v.membersUrl;
      _repositoriesUrl = _$v.repositoriesUrl;
      _parent = _$v.parent?.toBuilder();
      _membersCount = _$v.membersCount;
      _reposCount = _$v.reposCount;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _organization = _$v.organization?.toBuilder();
      _ldapDn = _$v.ldapDn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(TeamFull other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$TeamFull;
  }

  @override
  void update(void Function(TeamFullBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$TeamFull build() {
    _$TeamFull _$result;
    try {
      _$result = _$v ??
          new _$TeamFull._(
              id: id,
              nodeId: nodeId,
              url: url,
              htmlUrl: htmlUrl,
              name: name,
              slug: slug,
              description: description,
              privacy: privacy,
              permission: permission,
              membersUrl: membersUrl,
              repositoriesUrl: repositoriesUrl,
              parent: _parent?.build(),
              membersCount: membersCount,
              reposCount: reposCount,
              createdAt: createdAt,
              updatedAt: updatedAt,
              organization: _organization?.build(),
              ldapDn: ldapDn);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'parent';
        _parent?.build();

        _$failedField = 'organization';
        _organization?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'TeamFull', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
