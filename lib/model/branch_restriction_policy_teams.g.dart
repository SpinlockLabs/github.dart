// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'branch_restriction_policy_teams.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BranchRestrictionPolicyTeams>
    _$branchRestrictionPolicyTeamsSerializer =
    new _$BranchRestrictionPolicyTeamsSerializer();

class _$BranchRestrictionPolicyTeamsSerializer
    implements StructuredSerializer<BranchRestrictionPolicyTeams> {
  @override
  final Iterable<Type> types = const [
    BranchRestrictionPolicyTeams,
    _$BranchRestrictionPolicyTeams
  ];
  @override
  final String wireName = 'BranchRestrictionPolicyTeams';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BranchRestrictionPolicyTeams object,
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
            specifiedType: const FullType(String)));
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
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BranchRestrictionPolicyTeams deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchRestrictionPolicyTeamsBuilder();

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
              specifiedType: const FullType(String)) as String;
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
          result.parent = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BranchRestrictionPolicyTeams extends BranchRestrictionPolicyTeams {
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
  final String privacy;
  @override
  final String permission;
  @override
  final String membersUrl;
  @override
  final String repositoriesUrl;
  @override
  final String parent;

  factory _$BranchRestrictionPolicyTeams(
          [void Function(BranchRestrictionPolicyTeamsBuilder) updates]) =>
      (new BranchRestrictionPolicyTeamsBuilder()..update(updates)).build();

  _$BranchRestrictionPolicyTeams._(
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
      this.parent})
      : super._();

  @override
  BranchRestrictionPolicyTeams rebuild(
          void Function(BranchRestrictionPolicyTeamsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchRestrictionPolicyTeamsBuilder toBuilder() =>
      new BranchRestrictionPolicyTeamsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchRestrictionPolicyTeams &&
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
                                            url.hashCode),
                                        htmlUrl.hashCode),
                                    name.hashCode),
                                slug.hashCode),
                            description.hashCode),
                        privacy.hashCode),
                    permission.hashCode),
                membersUrl.hashCode),
            repositoriesUrl.hashCode),
        parent.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BranchRestrictionPolicyTeams')
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
          ..add('parent', parent))
        .toString();
  }
}

class BranchRestrictionPolicyTeamsBuilder
    implements
        Builder<BranchRestrictionPolicyTeams,
            BranchRestrictionPolicyTeamsBuilder> {
  _$BranchRestrictionPolicyTeams _$v;

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

  String _privacy;
  String get privacy => _$this._privacy;
  set privacy(String privacy) => _$this._privacy = privacy;

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

  String _parent;
  String get parent => _$this._parent;
  set parent(String parent) => _$this._parent = parent;

  BranchRestrictionPolicyTeamsBuilder() {
    BranchRestrictionPolicyTeams._initializeBuilder(this);
  }

  BranchRestrictionPolicyTeamsBuilder get _$this {
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
      _parent = _$v.parent;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchRestrictionPolicyTeams other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BranchRestrictionPolicyTeams;
  }

  @override
  void update(void Function(BranchRestrictionPolicyTeamsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BranchRestrictionPolicyTeams build() {
    final _$result = _$v ??
        new _$BranchRestrictionPolicyTeams._(
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
            parent: parent);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
