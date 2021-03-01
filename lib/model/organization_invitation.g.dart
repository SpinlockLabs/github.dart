// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'organization_invitation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrganizationInvitation> _$organizationInvitationSerializer =
    new _$OrganizationInvitationSerializer();

class _$OrganizationInvitationSerializer
    implements StructuredSerializer<OrganizationInvitation> {
  @override
  final Iterable<Type> types = const [
    OrganizationInvitation,
    _$OrganizationInvitation
  ];
  @override
  final String wireName = 'OrganizationInvitation';

  @override
  Iterable<Object> serialize(
      Serializers serializers, OrganizationInvitation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.login != null) {
      result
        ..add('login')
        ..add(serializers.serialize(object.login,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.role != null) {
      result
        ..add('role')
        ..add(serializers.serialize(object.role,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(String)));
    }
    if (object.failedAt != null) {
      result
        ..add('failed_at')
        ..add(serializers.serialize(object.failedAt,
            specifiedType: const FullType(String)));
    }
    if (object.failedReason != null) {
      result
        ..add('failed_reason')
        ..add(serializers.serialize(object.failedReason,
            specifiedType: const FullType(String)));
    }
    if (object.inviter != null) {
      result
        ..add('inviter')
        ..add(serializers.serialize(object.inviter,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.teamCount != null) {
      result
        ..add('team_count')
        ..add(serializers.serialize(object.teamCount,
            specifiedType: const FullType(int)));
    }
    if (object.invitationTeamUrl != null) {
      result
        ..add('invitation_team_url')
        ..add(serializers.serialize(object.invitationTeamUrl,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.invitationTeamsUrl != null) {
      result
        ..add('invitation_teams_url')
        ..add(serializers.serialize(object.invitationTeamsUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OrganizationInvitation deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrganizationInvitationBuilder();

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
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'role':
          result.role = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'failed_at':
          result.failedAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'failed_reason':
          result.failedReason = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'inviter':
          result.inviter.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'team_count':
          result.teamCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'invitation_team_url':
          result.invitationTeamUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'invitation_teams_url':
          result.invitationTeamsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OrganizationInvitation extends OrganizationInvitation {
  @override
  final int id;
  @override
  final String login;
  @override
  final String email;
  @override
  final String role;
  @override
  final String createdAt;
  @override
  final String failedAt;
  @override
  final String failedReason;
  @override
  final SimpleUser inviter;
  @override
  final int teamCount;
  @override
  final String invitationTeamUrl;
  @override
  final String nodeId;
  @override
  final String invitationTeamsUrl;

  factory _$OrganizationInvitation(
          [void Function(OrganizationInvitationBuilder) updates]) =>
      (new OrganizationInvitationBuilder()..update(updates)).build();

  _$OrganizationInvitation._(
      {this.id,
      this.login,
      this.email,
      this.role,
      this.createdAt,
      this.failedAt,
      this.failedReason,
      this.inviter,
      this.teamCount,
      this.invitationTeamUrl,
      this.nodeId,
      this.invitationTeamsUrl})
      : super._();

  @override
  OrganizationInvitation rebuild(
          void Function(OrganizationInvitationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrganizationInvitationBuilder toBuilder() =>
      new OrganizationInvitationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrganizationInvitation &&
        id == other.id &&
        login == other.login &&
        email == other.email &&
        role == other.role &&
        createdAt == other.createdAt &&
        failedAt == other.failedAt &&
        failedReason == other.failedReason &&
        inviter == other.inviter &&
        teamCount == other.teamCount &&
        invitationTeamUrl == other.invitationTeamUrl &&
        nodeId == other.nodeId &&
        invitationTeamsUrl == other.invitationTeamsUrl;
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
                                                login.hashCode),
                                            email.hashCode),
                                        role.hashCode),
                                    createdAt.hashCode),
                                failedAt.hashCode),
                            failedReason.hashCode),
                        inviter.hashCode),
                    teamCount.hashCode),
                invitationTeamUrl.hashCode),
            nodeId.hashCode),
        invitationTeamsUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrganizationInvitation')
          ..add('id', id)
          ..add('login', login)
          ..add('email', email)
          ..add('role', role)
          ..add('createdAt', createdAt)
          ..add('failedAt', failedAt)
          ..add('failedReason', failedReason)
          ..add('inviter', inviter)
          ..add('teamCount', teamCount)
          ..add('invitationTeamUrl', invitationTeamUrl)
          ..add('nodeId', nodeId)
          ..add('invitationTeamsUrl', invitationTeamsUrl))
        .toString();
  }
}

class OrganizationInvitationBuilder
    implements Builder<OrganizationInvitation, OrganizationInvitationBuilder> {
  _$OrganizationInvitation _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _login;
  String get login => _$this._login;
  set login(String login) => _$this._login = login;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _role;
  String get role => _$this._role;
  set role(String role) => _$this._role = role;

  String _createdAt;
  String get createdAt => _$this._createdAt;
  set createdAt(String createdAt) => _$this._createdAt = createdAt;

  String _failedAt;
  String get failedAt => _$this._failedAt;
  set failedAt(String failedAt) => _$this._failedAt = failedAt;

  String _failedReason;
  String get failedReason => _$this._failedReason;
  set failedReason(String failedReason) => _$this._failedReason = failedReason;

  SimpleUserBuilder _inviter;
  SimpleUserBuilder get inviter => _$this._inviter ??= new SimpleUserBuilder();
  set inviter(SimpleUserBuilder inviter) => _$this._inviter = inviter;

  int _teamCount;
  int get teamCount => _$this._teamCount;
  set teamCount(int teamCount) => _$this._teamCount = teamCount;

  String _invitationTeamUrl;
  String get invitationTeamUrl => _$this._invitationTeamUrl;
  set invitationTeamUrl(String invitationTeamUrl) =>
      _$this._invitationTeamUrl = invitationTeamUrl;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _invitationTeamsUrl;
  String get invitationTeamsUrl => _$this._invitationTeamsUrl;
  set invitationTeamsUrl(String invitationTeamsUrl) =>
      _$this._invitationTeamsUrl = invitationTeamsUrl;

  OrganizationInvitationBuilder() {
    OrganizationInvitation._initializeBuilder(this);
  }

  OrganizationInvitationBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _login = _$v.login;
      _email = _$v.email;
      _role = _$v.role;
      _createdAt = _$v.createdAt;
      _failedAt = _$v.failedAt;
      _failedReason = _$v.failedReason;
      _inviter = _$v.inviter?.toBuilder();
      _teamCount = _$v.teamCount;
      _invitationTeamUrl = _$v.invitationTeamUrl;
      _nodeId = _$v.nodeId;
      _invitationTeamsUrl = _$v.invitationTeamsUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrganizationInvitation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrganizationInvitation;
  }

  @override
  void update(void Function(OrganizationInvitationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrganizationInvitation build() {
    _$OrganizationInvitation _$result;
    try {
      _$result = _$v ??
          new _$OrganizationInvitation._(
              id: id,
              login: login,
              email: email,
              role: role,
              createdAt: createdAt,
              failedAt: failedAt,
              failedReason: failedReason,
              inviter: _inviter?.build(),
              teamCount: teamCount,
              invitationTeamUrl: invitationTeamUrl,
              nodeId: nodeId,
              invitationTeamsUrl: invitationTeamsUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'inviter';
        _inviter?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrganizationInvitation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
