// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repository_invitation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const RepositoryInvitationPermissionsEnum
    _$repositoryInvitationPermissionsEnum_read =
    const RepositoryInvitationPermissionsEnum._('read');
const RepositoryInvitationPermissionsEnum
    _$repositoryInvitationPermissionsEnum_write =
    const RepositoryInvitationPermissionsEnum._('write');
const RepositoryInvitationPermissionsEnum
    _$repositoryInvitationPermissionsEnum_admin =
    const RepositoryInvitationPermissionsEnum._('admin');

RepositoryInvitationPermissionsEnum
    _$repositoryInvitationPermissionsEnumValueOf(String name) {
  switch (name) {
    case 'read':
      return _$repositoryInvitationPermissionsEnum_read;
    case 'write':
      return _$repositoryInvitationPermissionsEnum_write;
    case 'admin':
      return _$repositoryInvitationPermissionsEnum_admin;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<RepositoryInvitationPermissionsEnum>
    _$repositoryInvitationPermissionsEnumValues =
    new BuiltSet<RepositoryInvitationPermissionsEnum>(const <
        RepositoryInvitationPermissionsEnum>[
  _$repositoryInvitationPermissionsEnum_read,
  _$repositoryInvitationPermissionsEnum_write,
  _$repositoryInvitationPermissionsEnum_admin,
]);

Serializer<RepositoryInvitation> _$repositoryInvitationSerializer =
    new _$RepositoryInvitationSerializer();
Serializer<RepositoryInvitationPermissionsEnum>
    _$repositoryInvitationPermissionsEnumSerializer =
    new _$RepositoryInvitationPermissionsEnumSerializer();

class _$RepositoryInvitationSerializer
    implements StructuredSerializer<RepositoryInvitation> {
  @override
  final Iterable<Type> types = const [
    RepositoryInvitation,
    _$RepositoryInvitation
  ];
  @override
  final String wireName = 'RepositoryInvitation';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RepositoryInvitation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.repository != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(object.repository,
            specifiedType: const FullType(MinimalRepository)));
    }
    if (object.invitee != null) {
      result
        ..add('invitee')
        ..add(serializers.serialize(object.invitee,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.inviter != null) {
      result
        ..add('inviter')
        ..add(serializers.serialize(object.inviter,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.permissions != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(object.permissions,
            specifiedType:
                const FullType(RepositoryInvitationPermissionsEnum)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.expired != null) {
      result
        ..add('expired')
        ..add(serializers.serialize(object.expired,
            specifiedType: const FullType(bool)));
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
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RepositoryInvitation deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RepositoryInvitationBuilder();

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
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MinimalRepository))
              as MinimalRepository);
          break;
        case 'invitee':
          result.invitee.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'inviter':
          result.inviter.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'permissions':
          result.permissions = serializers.deserialize(value,
                  specifiedType:
                      const FullType(RepositoryInvitationPermissionsEnum))
              as RepositoryInvitationPermissionsEnum;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'expired':
          result.expired = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RepositoryInvitationPermissionsEnumSerializer
    implements PrimitiveSerializer<RepositoryInvitationPermissionsEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'read': 'read',
    'write': 'write',
    'admin': 'admin',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'read': 'read',
    'write': 'write',
    'admin': 'admin',
  };

  @override
  final Iterable<Type> types = const <Type>[
    RepositoryInvitationPermissionsEnum
  ];
  @override
  final String wireName = 'RepositoryInvitationPermissionsEnum';

  @override
  Object serialize(
          Serializers serializers, RepositoryInvitationPermissionsEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  RepositoryInvitationPermissionsEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      RepositoryInvitationPermissionsEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$RepositoryInvitation extends RepositoryInvitation {
  @override
  final int id;
  @override
  final MinimalRepository repository;
  @override
  final SimpleUser invitee;
  @override
  final SimpleUser inviter;
  @override
  final RepositoryInvitationPermissionsEnum permissions;
  @override
  final DateTime createdAt;
  @override
  final bool expired;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String nodeId;

  factory _$RepositoryInvitation(
          [void Function(RepositoryInvitationBuilder) updates]) =>
      (new RepositoryInvitationBuilder()..update(updates)).build();

  _$RepositoryInvitation._(
      {this.id,
      this.repository,
      this.invitee,
      this.inviter,
      this.permissions,
      this.createdAt,
      this.expired,
      this.url,
      this.htmlUrl,
      this.nodeId})
      : super._();

  @override
  RepositoryInvitation rebuild(
          void Function(RepositoryInvitationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RepositoryInvitationBuilder toBuilder() =>
      new RepositoryInvitationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RepositoryInvitation &&
        id == other.id &&
        repository == other.repository &&
        invitee == other.invitee &&
        inviter == other.inviter &&
        permissions == other.permissions &&
        createdAt == other.createdAt &&
        expired == other.expired &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        nodeId == other.nodeId;
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
                                    $jc($jc(0, id.hashCode),
                                        repository.hashCode),
                                    invitee.hashCode),
                                inviter.hashCode),
                            permissions.hashCode),
                        createdAt.hashCode),
                    expired.hashCode),
                url.hashCode),
            htmlUrl.hashCode),
        nodeId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RepositoryInvitation')
          ..add('id', id)
          ..add('repository', repository)
          ..add('invitee', invitee)
          ..add('inviter', inviter)
          ..add('permissions', permissions)
          ..add('createdAt', createdAt)
          ..add('expired', expired)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('nodeId', nodeId))
        .toString();
  }
}

class RepositoryInvitationBuilder
    implements Builder<RepositoryInvitation, RepositoryInvitationBuilder> {
  _$RepositoryInvitation _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  MinimalRepositoryBuilder _repository;
  MinimalRepositoryBuilder get repository =>
      _$this._repository ??= new MinimalRepositoryBuilder();
  set repository(MinimalRepositoryBuilder repository) =>
      _$this._repository = repository;

  SimpleUserBuilder _invitee;
  SimpleUserBuilder get invitee => _$this._invitee ??= new SimpleUserBuilder();
  set invitee(SimpleUserBuilder invitee) => _$this._invitee = invitee;

  SimpleUserBuilder _inviter;
  SimpleUserBuilder get inviter => _$this._inviter ??= new SimpleUserBuilder();
  set inviter(SimpleUserBuilder inviter) => _$this._inviter = inviter;

  RepositoryInvitationPermissionsEnum _permissions;
  RepositoryInvitationPermissionsEnum get permissions => _$this._permissions;
  set permissions(RepositoryInvitationPermissionsEnum permissions) =>
      _$this._permissions = permissions;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  bool _expired;
  bool get expired => _$this._expired;
  set expired(bool expired) => _$this._expired = expired;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  RepositoryInvitationBuilder() {
    RepositoryInvitation._initializeBuilder(this);
  }

  RepositoryInvitationBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _repository = _$v.repository?.toBuilder();
      _invitee = _$v.invitee?.toBuilder();
      _inviter = _$v.inviter?.toBuilder();
      _permissions = _$v.permissions;
      _createdAt = _$v.createdAt;
      _expired = _$v.expired;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _nodeId = _$v.nodeId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RepositoryInvitation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RepositoryInvitation;
  }

  @override
  void update(void Function(RepositoryInvitationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RepositoryInvitation build() {
    _$RepositoryInvitation _$result;
    try {
      _$result = _$v ??
          new _$RepositoryInvitation._(
              id: id,
              repository: _repository?.build(),
              invitee: _invitee?.build(),
              inviter: _inviter?.build(),
              permissions: permissions,
              createdAt: createdAt,
              expired: expired,
              url: url,
              htmlUrl: htmlUrl,
              nodeId: nodeId);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repository';
        _repository?.build();
        _$failedField = 'invitee';
        _invitee?.build();
        _$failedField = 'inviter';
        _inviter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RepositoryInvitation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
