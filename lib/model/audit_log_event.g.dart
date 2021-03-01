// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'audit_log_event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<AuditLogEvent> _$auditLogEventSerializer =
    new _$AuditLogEventSerializer();

class _$AuditLogEventSerializer implements StructuredSerializer<AuditLogEvent> {
  @override
  final Iterable<Type> types = const [AuditLogEvent, _$AuditLogEvent];
  @override
  final String wireName = 'AuditLogEvent';

  @override
  Iterable<Object> serialize(Serializers serializers, AuditLogEvent object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.atTimestamp != null) {
      result
        ..add('@timestamp')
        ..add(serializers.serialize(object.atTimestamp,
            specifiedType: const FullType(int)));
    }
    if (object.action != null) {
      result
        ..add('action')
        ..add(serializers.serialize(object.action,
            specifiedType: const FullType(String)));
    }
    if (object.active != null) {
      result
        ..add('active')
        ..add(serializers.serialize(object.active,
            specifiedType: const FullType(bool)));
    }
    if (object.activeWas != null) {
      result
        ..add('active_was')
        ..add(serializers.serialize(object.activeWas,
            specifiedType: const FullType(bool)));
    }
    if (object.actor != null) {
      result
        ..add('actor')
        ..add(serializers.serialize(object.actor,
            specifiedType: const FullType(String)));
    }
    if (object.blockedUser != null) {
      result
        ..add('blocked_user')
        ..add(serializers.serialize(object.blockedUser,
            specifiedType: const FullType(String)));
    }
    if (object.business != null) {
      result
        ..add('business')
        ..add(serializers.serialize(object.business,
            specifiedType: const FullType(String)));
    }
    if (object.config != null) {
      result
        ..add('config')
        ..add(serializers.serialize(object.config,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.configWas != null) {
      result
        ..add('config_was')
        ..add(serializers.serialize(object.configWas,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.contentType != null) {
      result
        ..add('content_type')
        ..add(serializers.serialize(object.contentType,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(int)));
    }
    if (object.deployKeyFingerprint != null) {
      result
        ..add('deploy_key_fingerprint')
        ..add(serializers.serialize(object.deployKeyFingerprint,
            specifiedType: const FullType(String)));
    }
    if (object.emoji != null) {
      result
        ..add('emoji')
        ..add(serializers.serialize(object.emoji,
            specifiedType: const FullType(String)));
    }
    if (object.events != null) {
      result
        ..add('events')
        ..add(serializers.serialize(object.events,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.eventsWere != null) {
      result
        ..add('events_were')
        ..add(serializers.serialize(object.eventsWere,
            specifiedType: const FullType(BuiltList)));
    }
    if (object.explanation != null) {
      result
        ..add('explanation')
        ..add(serializers.serialize(object.explanation,
            specifiedType: const FullType(String)));
    }
    if (object.fingerprint != null) {
      result
        ..add('fingerprint')
        ..add(serializers.serialize(object.fingerprint,
            specifiedType: const FullType(String)));
    }
    if (object.hookId != null) {
      result
        ..add('hook_id')
        ..add(serializers.serialize(object.hookId,
            specifiedType: const FullType(int)));
    }
    if (object.limitedAvailability != null) {
      result
        ..add('limited_availability')
        ..add(serializers.serialize(object.limitedAvailability,
            specifiedType: const FullType(bool)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.oldUser != null) {
      result
        ..add('old_user')
        ..add(serializers.serialize(object.oldUser,
            specifiedType: const FullType(String)));
    }
    if (object.opensshPublicKey != null) {
      result
        ..add('openssh_public_key')
        ..add(serializers.serialize(object.opensshPublicKey,
            specifiedType: const FullType(String)));
    }
    if (object.org != null) {
      result
        ..add('org')
        ..add(serializers.serialize(object.org,
            specifiedType: const FullType(String)));
    }
    if (object.previousVisibility != null) {
      result
        ..add('previous_visibility')
        ..add(serializers.serialize(object.previousVisibility,
            specifiedType: const FullType(String)));
    }
    if (object.readOnly != null) {
      result
        ..add('read_only')
        ..add(serializers.serialize(object.readOnly,
            specifiedType: const FullType(bool)));
    }
    if (object.repo != null) {
      result
        ..add('repo')
        ..add(serializers.serialize(object.repo,
            specifiedType: const FullType(String)));
    }
    if (object.repository != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(object.repository,
            specifiedType: const FullType(String)));
    }
    if (object.repositoryPublic != null) {
      result
        ..add('repository_public')
        ..add(serializers.serialize(object.repositoryPublic,
            specifiedType: const FullType(bool)));
    }
    if (object.targetLogin != null) {
      result
        ..add('target_login')
        ..add(serializers.serialize(object.targetLogin,
            specifiedType: const FullType(String)));
    }
    if (object.team != null) {
      result
        ..add('team')
        ..add(serializers.serialize(object.team,
            specifiedType: const FullType(String)));
    }
    if (object.transportProtocol != null) {
      result
        ..add('transport_protocol')
        ..add(serializers.serialize(object.transportProtocol,
            specifiedType: const FullType(int)));
    }
    if (object.transportProtocolName != null) {
      result
        ..add('transport_protocol_name')
        ..add(serializers.serialize(object.transportProtocolName,
            specifiedType: const FullType(String)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(String)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AuditLogEvent deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuditLogEventBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case '@timestamp':
          result.atTimestamp = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'active_was':
          result.activeWas = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'actor':
          result.actor = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'blocked_user':
          result.blockedUser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'business':
          result.business = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'config':
          result.config = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'config_was':
          result.configWas = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'content_type':
          result.contentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deploy_key_fingerprint':
          result.deployKeyFingerprint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'emoji':
          result.emoji = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'events':
          result.events = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'events_were':
          result.eventsWere = serializers.deserialize(value,
              specifiedType: const FullType(BuiltList)) as BuiltList;
          break;
        case 'explanation':
          result.explanation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fingerprint':
          result.fingerprint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hook_id':
          result.hookId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'limited_availability':
          result.limitedAvailability = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'old_user':
          result.oldUser = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'openssh_public_key':
          result.opensshPublicKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'org':
          result.org = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'previous_visibility':
          result.previousVisibility = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'read_only':
          result.readOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'repo':
          result.repo = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository':
          result.repository = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository_public':
          result.repositoryPublic = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'target_login':
          result.targetLogin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'team':
          result.team = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'transport_protocol':
          result.transportProtocol = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'transport_protocol_name':
          result.transportProtocolName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AuditLogEvent extends AuditLogEvent {
  @override
  final int atTimestamp;
  @override
  final String action;
  @override
  final bool active;
  @override
  final bool activeWas;
  @override
  final String actor;
  @override
  final String blockedUser;
  @override
  final String business;
  @override
  final BuiltList config;
  @override
  final BuiltList configWas;
  @override
  final String contentType;
  @override
  final int createdAt;
  @override
  final String deployKeyFingerprint;
  @override
  final String emoji;
  @override
  final BuiltList events;
  @override
  final BuiltList eventsWere;
  @override
  final String explanation;
  @override
  final String fingerprint;
  @override
  final int hookId;
  @override
  final bool limitedAvailability;
  @override
  final String message;
  @override
  final String name;
  @override
  final String oldUser;
  @override
  final String opensshPublicKey;
  @override
  final String org;
  @override
  final String previousVisibility;
  @override
  final bool readOnly;
  @override
  final String repo;
  @override
  final String repository;
  @override
  final bool repositoryPublic;
  @override
  final String targetLogin;
  @override
  final String team;
  @override
  final int transportProtocol;
  @override
  final String transportProtocolName;
  @override
  final String user;
  @override
  final String visibility;

  factory _$AuditLogEvent([void Function(AuditLogEventBuilder) updates]) =>
      (new AuditLogEventBuilder()..update(updates)).build();

  _$AuditLogEvent._(
      {this.atTimestamp,
      this.action,
      this.active,
      this.activeWas,
      this.actor,
      this.blockedUser,
      this.business,
      this.config,
      this.configWas,
      this.contentType,
      this.createdAt,
      this.deployKeyFingerprint,
      this.emoji,
      this.events,
      this.eventsWere,
      this.explanation,
      this.fingerprint,
      this.hookId,
      this.limitedAvailability,
      this.message,
      this.name,
      this.oldUser,
      this.opensshPublicKey,
      this.org,
      this.previousVisibility,
      this.readOnly,
      this.repo,
      this.repository,
      this.repositoryPublic,
      this.targetLogin,
      this.team,
      this.transportProtocol,
      this.transportProtocolName,
      this.user,
      this.visibility})
      : super._();

  @override
  AuditLogEvent rebuild(void Function(AuditLogEventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuditLogEventBuilder toBuilder() => new AuditLogEventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuditLogEvent &&
        atTimestamp == other.atTimestamp &&
        action == other.action &&
        active == other.active &&
        activeWas == other.activeWas &&
        actor == other.actor &&
        blockedUser == other.blockedUser &&
        business == other.business &&
        config == other.config &&
        configWas == other.configWas &&
        contentType == other.contentType &&
        createdAt == other.createdAt &&
        deployKeyFingerprint == other.deployKeyFingerprint &&
        emoji == other.emoji &&
        events == other.events &&
        eventsWere == other.eventsWere &&
        explanation == other.explanation &&
        fingerprint == other.fingerprint &&
        hookId == other.hookId &&
        limitedAvailability == other.limitedAvailability &&
        message == other.message &&
        name == other.name &&
        oldUser == other.oldUser &&
        opensshPublicKey == other.opensshPublicKey &&
        org == other.org &&
        previousVisibility == other.previousVisibility &&
        readOnly == other.readOnly &&
        repo == other.repo &&
        repository == other.repository &&
        repositoryPublic == other.repositoryPublic &&
        targetLogin == other.targetLogin &&
        team == other.team &&
        transportProtocol == other.transportProtocol &&
        transportProtocolName == other.transportProtocolName &&
        user == other.user &&
        visibility == other.visibility;
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
                                                                            $jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc($jc(0, atTimestamp.hashCode), action.hashCode), active.hashCode), activeWas.hashCode), actor.hashCode), blockedUser.hashCode), business.hashCode), config.hashCode), configWas.hashCode), contentType.hashCode), createdAt.hashCode), deployKeyFingerprint.hashCode), emoji.hashCode), events.hashCode), eventsWere.hashCode), explanation.hashCode),
                                                                                fingerprint.hashCode),
                                                                            hookId.hashCode),
                                                                        limitedAvailability.hashCode),
                                                                    message.hashCode),
                                                                name.hashCode),
                                                            oldUser.hashCode),
                                                        opensshPublicKey.hashCode),
                                                    org.hashCode),
                                                previousVisibility.hashCode),
                                            readOnly.hashCode),
                                        repo.hashCode),
                                    repository.hashCode),
                                repositoryPublic.hashCode),
                            targetLogin.hashCode),
                        team.hashCode),
                    transportProtocol.hashCode),
                transportProtocolName.hashCode),
            user.hashCode),
        visibility.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuditLogEvent')
          ..add('atTimestamp', atTimestamp)
          ..add('action', action)
          ..add('active', active)
          ..add('activeWas', activeWas)
          ..add('actor', actor)
          ..add('blockedUser', blockedUser)
          ..add('business', business)
          ..add('config', config)
          ..add('configWas', configWas)
          ..add('contentType', contentType)
          ..add('createdAt', createdAt)
          ..add('deployKeyFingerprint', deployKeyFingerprint)
          ..add('emoji', emoji)
          ..add('events', events)
          ..add('eventsWere', eventsWere)
          ..add('explanation', explanation)
          ..add('fingerprint', fingerprint)
          ..add('hookId', hookId)
          ..add('limitedAvailability', limitedAvailability)
          ..add('message', message)
          ..add('name', name)
          ..add('oldUser', oldUser)
          ..add('opensshPublicKey', opensshPublicKey)
          ..add('org', org)
          ..add('previousVisibility', previousVisibility)
          ..add('readOnly', readOnly)
          ..add('repo', repo)
          ..add('repository', repository)
          ..add('repositoryPublic', repositoryPublic)
          ..add('targetLogin', targetLogin)
          ..add('team', team)
          ..add('transportProtocol', transportProtocol)
          ..add('transportProtocolName', transportProtocolName)
          ..add('user', user)
          ..add('visibility', visibility))
        .toString();
  }
}

class AuditLogEventBuilder
    implements Builder<AuditLogEvent, AuditLogEventBuilder> {
  _$AuditLogEvent _$v;

  int _atTimestamp;
  int get atTimestamp => _$this._atTimestamp;
  set atTimestamp(int atTimestamp) => _$this._atTimestamp = atTimestamp;

  String _action;
  String get action => _$this._action;
  set action(String action) => _$this._action = action;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  bool _activeWas;
  bool get activeWas => _$this._activeWas;
  set activeWas(bool activeWas) => _$this._activeWas = activeWas;

  String _actor;
  String get actor => _$this._actor;
  set actor(String actor) => _$this._actor = actor;

  String _blockedUser;
  String get blockedUser => _$this._blockedUser;
  set blockedUser(String blockedUser) => _$this._blockedUser = blockedUser;

  String _business;
  String get business => _$this._business;
  set business(String business) => _$this._business = business;

  BuiltList _config;
  BuiltList get config => _$this._config;
  set config(BuiltList config) => _$this._config = config;

  BuiltList _configWas;
  BuiltList get configWas => _$this._configWas;
  set configWas(BuiltList configWas) => _$this._configWas = configWas;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  int _createdAt;
  int get createdAt => _$this._createdAt;
  set createdAt(int createdAt) => _$this._createdAt = createdAt;

  String _deployKeyFingerprint;
  String get deployKeyFingerprint => _$this._deployKeyFingerprint;
  set deployKeyFingerprint(String deployKeyFingerprint) =>
      _$this._deployKeyFingerprint = deployKeyFingerprint;

  String _emoji;
  String get emoji => _$this._emoji;
  set emoji(String emoji) => _$this._emoji = emoji;

  BuiltList _events;
  BuiltList get events => _$this._events;
  set events(BuiltList events) => _$this._events = events;

  BuiltList _eventsWere;
  BuiltList get eventsWere => _$this._eventsWere;
  set eventsWere(BuiltList eventsWere) => _$this._eventsWere = eventsWere;

  String _explanation;
  String get explanation => _$this._explanation;
  set explanation(String explanation) => _$this._explanation = explanation;

  String _fingerprint;
  String get fingerprint => _$this._fingerprint;
  set fingerprint(String fingerprint) => _$this._fingerprint = fingerprint;

  int _hookId;
  int get hookId => _$this._hookId;
  set hookId(int hookId) => _$this._hookId = hookId;

  bool _limitedAvailability;
  bool get limitedAvailability => _$this._limitedAvailability;
  set limitedAvailability(bool limitedAvailability) =>
      _$this._limitedAvailability = limitedAvailability;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _oldUser;
  String get oldUser => _$this._oldUser;
  set oldUser(String oldUser) => _$this._oldUser = oldUser;

  String _opensshPublicKey;
  String get opensshPublicKey => _$this._opensshPublicKey;
  set opensshPublicKey(String opensshPublicKey) =>
      _$this._opensshPublicKey = opensshPublicKey;

  String _org;
  String get org => _$this._org;
  set org(String org) => _$this._org = org;

  String _previousVisibility;
  String get previousVisibility => _$this._previousVisibility;
  set previousVisibility(String previousVisibility) =>
      _$this._previousVisibility = previousVisibility;

  bool _readOnly;
  bool get readOnly => _$this._readOnly;
  set readOnly(bool readOnly) => _$this._readOnly = readOnly;

  String _repo;
  String get repo => _$this._repo;
  set repo(String repo) => _$this._repo = repo;

  String _repository;
  String get repository => _$this._repository;
  set repository(String repository) => _$this._repository = repository;

  bool _repositoryPublic;
  bool get repositoryPublic => _$this._repositoryPublic;
  set repositoryPublic(bool repositoryPublic) =>
      _$this._repositoryPublic = repositoryPublic;

  String _targetLogin;
  String get targetLogin => _$this._targetLogin;
  set targetLogin(String targetLogin) => _$this._targetLogin = targetLogin;

  String _team;
  String get team => _$this._team;
  set team(String team) => _$this._team = team;

  int _transportProtocol;
  int get transportProtocol => _$this._transportProtocol;
  set transportProtocol(int transportProtocol) =>
      _$this._transportProtocol = transportProtocol;

  String _transportProtocolName;
  String get transportProtocolName => _$this._transportProtocolName;
  set transportProtocolName(String transportProtocolName) =>
      _$this._transportProtocolName = transportProtocolName;

  String _user;
  String get user => _$this._user;
  set user(String user) => _$this._user = user;

  String _visibility;
  String get visibility => _$this._visibility;
  set visibility(String visibility) => _$this._visibility = visibility;

  AuditLogEventBuilder() {
    AuditLogEvent._initializeBuilder(this);
  }

  AuditLogEventBuilder get _$this {
    if (_$v != null) {
      _atTimestamp = _$v.atTimestamp;
      _action = _$v.action;
      _active = _$v.active;
      _activeWas = _$v.activeWas;
      _actor = _$v.actor;
      _blockedUser = _$v.blockedUser;
      _business = _$v.business;
      _config = _$v.config;
      _configWas = _$v.configWas;
      _contentType = _$v.contentType;
      _createdAt = _$v.createdAt;
      _deployKeyFingerprint = _$v.deployKeyFingerprint;
      _emoji = _$v.emoji;
      _events = _$v.events;
      _eventsWere = _$v.eventsWere;
      _explanation = _$v.explanation;
      _fingerprint = _$v.fingerprint;
      _hookId = _$v.hookId;
      _limitedAvailability = _$v.limitedAvailability;
      _message = _$v.message;
      _name = _$v.name;
      _oldUser = _$v.oldUser;
      _opensshPublicKey = _$v.opensshPublicKey;
      _org = _$v.org;
      _previousVisibility = _$v.previousVisibility;
      _readOnly = _$v.readOnly;
      _repo = _$v.repo;
      _repository = _$v.repository;
      _repositoryPublic = _$v.repositoryPublic;
      _targetLogin = _$v.targetLogin;
      _team = _$v.team;
      _transportProtocol = _$v.transportProtocol;
      _transportProtocolName = _$v.transportProtocolName;
      _user = _$v.user;
      _visibility = _$v.visibility;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuditLogEvent other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuditLogEvent;
  }

  @override
  void update(void Function(AuditLogEventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuditLogEvent build() {
    final _$result = _$v ??
        new _$AuditLogEvent._(
            atTimestamp: atTimestamp,
            action: action,
            active: active,
            activeWas: activeWas,
            actor: actor,
            blockedUser: blockedUser,
            business: business,
            config: config,
            configWas: configWas,
            contentType: contentType,
            createdAt: createdAt,
            deployKeyFingerprint: deployKeyFingerprint,
            emoji: emoji,
            events: events,
            eventsWere: eventsWere,
            explanation: explanation,
            fingerprint: fingerprint,
            hookId: hookId,
            limitedAvailability: limitedAvailability,
            message: message,
            name: name,
            oldUser: oldUser,
            opensshPublicKey: opensshPublicKey,
            org: org,
            previousVisibility: previousVisibility,
            readOnly: readOnly,
            repo: repo,
            repository: repository,
            repositoryPublic: repositoryPublic,
            targetLogin: targetLogin,
            team: team,
            transportProtocol: transportProtocol,
            transportProtocolName: transportProtocolName,
            user: user,
            visibility: visibility);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
