// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'team.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Team> _$teamSerializer = new _$TeamSerializer();

class _$TeamSerializer implements StructuredSerializer<Team> {
  @override
  final Iterable<Type> types = const [Team, _$Team];
  @override
  final String wireName = 'Team';

  @override
  Iterable<Object> serialize(Serializers serializers, Team object,
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
            specifiedType: const FullType(String)));
    }
    if (object.permission != null) {
      result
        ..add('permission')
        ..add(serializers.serialize(object.permission,
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
    return result;
  }

  @override
  Team deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new TeamBuilder();

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
              specifiedType: const FullType(String)) as String;
          break;
        case 'permission':
          result.permission = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$Team extends Team {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String name;
  @override
  final String slug;
  @override
  final String description;
  @override
  final String privacy;
  @override
  final String permission;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String membersUrl;
  @override
  final String repositoriesUrl;
  @override
  final TeamSimple parent;

  factory _$Team([void Function(TeamBuilder) updates]) =>
      (new TeamBuilder()..update(updates)).build();

  _$Team._(
      {this.id,
      this.nodeId,
      this.name,
      this.slug,
      this.description,
      this.privacy,
      this.permission,
      this.url,
      this.htmlUrl,
      this.membersUrl,
      this.repositoriesUrl,
      this.parent})
      : super._();

  @override
  Team rebuild(void Function(TeamBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  TeamBuilder toBuilder() => new TeamBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Team &&
        id == other.id &&
        nodeId == other.nodeId &&
        name == other.name &&
        slug == other.slug &&
        description == other.description &&
        privacy == other.privacy &&
        permission == other.permission &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        membersUrl == other.membersUrl &&
        repositoriesUrl == other.repositoriesUrl &&
        parent == other.parent;
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
                                            name.hashCode),
                                        slug.hashCode),
                                    description.hashCode),
                                privacy.hashCode),
                            permission.hashCode),
                        url.hashCode),
                    htmlUrl.hashCode),
                membersUrl.hashCode),
            repositoriesUrl.hashCode),
        parent.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Team')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('name', name)
          ..add('slug', slug)
          ..add('description', description)
          ..add('privacy', privacy)
          ..add('permission', permission)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('membersUrl', membersUrl)
          ..add('repositoriesUrl', repositoriesUrl)
          ..add('parent', parent))
        .toString();
  }
}

class TeamBuilder implements Builder<Team, TeamBuilder> {
  _$Team _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _privacy;
  String get privacy => _$this._privacy;
  set privacy(String privacy) => _$this._privacy = privacy;

  String _permission;
  String get permission => _$this._permission;
  set permission(String permission) => _$this._permission = permission;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

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

  TeamBuilder() {
    Team._initializeBuilder(this);
  }

  TeamBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _name = _$v.name;
      _slug = _$v.slug;
      _description = _$v.description;
      _privacy = _$v.privacy;
      _permission = _$v.permission;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _membersUrl = _$v.membersUrl;
      _repositoriesUrl = _$v.repositoriesUrl;
      _parent = _$v.parent?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Team other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Team;
  }

  @override
  void update(void Function(TeamBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Team build() {
    _$Team _$result;
    try {
      _$result = _$v ??
          new _$Team._(
              id: id,
              nodeId: nodeId,
              name: name,
              slug: slug,
              description: description,
              privacy: privacy,
              permission: permission,
              url: url,
              htmlUrl: htmlUrl,
              membersUrl: membersUrl,
              repositoriesUrl: repositoriesUrl,
              parent: _parent?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'parent';
        _parent?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Team', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
