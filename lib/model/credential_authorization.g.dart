// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'credential_authorization.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CredentialAuthorization> _$credentialAuthorizationSerializer =
    new _$CredentialAuthorizationSerializer();

class _$CredentialAuthorizationSerializer
    implements StructuredSerializer<CredentialAuthorization> {
  @override
  final Iterable<Type> types = const [
    CredentialAuthorization,
    _$CredentialAuthorization
  ];
  @override
  final String wireName = 'CredentialAuthorization';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CredentialAuthorization object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.login != null) {
      result
        ..add('login')
        ..add(serializers.serialize(object.login,
            specifiedType: const FullType(String)));
    }
    if (object.credentialId != null) {
      result
        ..add('credential_id')
        ..add(serializers.serialize(object.credentialId,
            specifiedType: const FullType(int)));
    }
    if (object.credentialType != null) {
      result
        ..add('credential_type')
        ..add(serializers.serialize(object.credentialType,
            specifiedType: const FullType(String)));
    }
    if (object.tokenLastEight != null) {
      result
        ..add('token_last_eight')
        ..add(serializers.serialize(object.tokenLastEight,
            specifiedType: const FullType(String)));
    }
    if (object.credentialAuthorizedAt != null) {
      result
        ..add('credential_authorized_at')
        ..add(serializers.serialize(object.credentialAuthorizedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.scopes != null) {
      result
        ..add('scopes')
        ..add(serializers.serialize(object.scopes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.fingerprint != null) {
      result
        ..add('fingerprint')
        ..add(serializers.serialize(object.fingerprint,
            specifiedType: const FullType(String)));
    }
    if (object.credentialAccessedAt != null) {
      result
        ..add('credential_accessed_at')
        ..add(serializers.serialize(object.credentialAccessedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.authorizedCredentialId != null) {
      result
        ..add('authorized_credential_id')
        ..add(serializers.serialize(object.authorizedCredentialId,
            specifiedType: const FullType(int)));
    }
    if (object.authorizedCredentialTitle != null) {
      result
        ..add('authorized_credential_title')
        ..add(serializers.serialize(object.authorizedCredentialTitle,
            specifiedType: const FullType(String)));
    }
    if (object.authorizedCredentialNote != null) {
      result
        ..add('authorized_credential_note')
        ..add(serializers.serialize(object.authorizedCredentialNote,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CredentialAuthorization deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CredentialAuthorizationBuilder();

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
        case 'credential_id':
          result.credentialId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'credential_type':
          result.credentialType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token_last_eight':
          result.tokenLastEight = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'credential_authorized_at':
          result.credentialAuthorizedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'scopes':
          result.scopes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'fingerprint':
          result.fingerprint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'credential_accessed_at':
          result.credentialAccessedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'authorized_credential_id':
          result.authorizedCredentialId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'authorized_credential_title':
          result.authorizedCredentialTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'authorized_credential_note':
          result.authorizedCredentialNote = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CredentialAuthorization extends CredentialAuthorization {
  @override
  final String login;
  @override
  final int credentialId;
  @override
  final String credentialType;
  @override
  final String tokenLastEight;
  @override
  final DateTime credentialAuthorizedAt;
  @override
  final BuiltList<String> scopes;
  @override
  final String fingerprint;
  @override
  final DateTime credentialAccessedAt;
  @override
  final int authorizedCredentialId;
  @override
  final String authorizedCredentialTitle;
  @override
  final String authorizedCredentialNote;

  factory _$CredentialAuthorization(
          [void Function(CredentialAuthorizationBuilder) updates]) =>
      (new CredentialAuthorizationBuilder()..update(updates)).build();

  _$CredentialAuthorization._(
      {this.login,
      this.credentialId,
      this.credentialType,
      this.tokenLastEight,
      this.credentialAuthorizedAt,
      this.scopes,
      this.fingerprint,
      this.credentialAccessedAt,
      this.authorizedCredentialId,
      this.authorizedCredentialTitle,
      this.authorizedCredentialNote})
      : super._();

  @override
  CredentialAuthorization rebuild(
          void Function(CredentialAuthorizationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CredentialAuthorizationBuilder toBuilder() =>
      new CredentialAuthorizationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CredentialAuthorization &&
        login == other.login &&
        credentialId == other.credentialId &&
        credentialType == other.credentialType &&
        tokenLastEight == other.tokenLastEight &&
        credentialAuthorizedAt == other.credentialAuthorizedAt &&
        scopes == other.scopes &&
        fingerprint == other.fingerprint &&
        credentialAccessedAt == other.credentialAccessedAt &&
        authorizedCredentialId == other.authorizedCredentialId &&
        authorizedCredentialTitle == other.authorizedCredentialTitle &&
        authorizedCredentialNote == other.authorizedCredentialNote;
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
                                        $jc($jc(0, login.hashCode),
                                            credentialId.hashCode),
                                        credentialType.hashCode),
                                    tokenLastEight.hashCode),
                                credentialAuthorizedAt.hashCode),
                            scopes.hashCode),
                        fingerprint.hashCode),
                    credentialAccessedAt.hashCode),
                authorizedCredentialId.hashCode),
            authorizedCredentialTitle.hashCode),
        authorizedCredentialNote.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CredentialAuthorization')
          ..add('login', login)
          ..add('credentialId', credentialId)
          ..add('credentialType', credentialType)
          ..add('tokenLastEight', tokenLastEight)
          ..add('credentialAuthorizedAt', credentialAuthorizedAt)
          ..add('scopes', scopes)
          ..add('fingerprint', fingerprint)
          ..add('credentialAccessedAt', credentialAccessedAt)
          ..add('authorizedCredentialId', authorizedCredentialId)
          ..add('authorizedCredentialTitle', authorizedCredentialTitle)
          ..add('authorizedCredentialNote', authorizedCredentialNote))
        .toString();
  }
}

class CredentialAuthorizationBuilder
    implements
        Builder<CredentialAuthorization, CredentialAuthorizationBuilder> {
  _$CredentialAuthorization _$v;

  String _login;
  String get login => _$this._login;
  set login(String login) => _$this._login = login;

  int _credentialId;
  int get credentialId => _$this._credentialId;
  set credentialId(int credentialId) => _$this._credentialId = credentialId;

  String _credentialType;
  String get credentialType => _$this._credentialType;
  set credentialType(String credentialType) =>
      _$this._credentialType = credentialType;

  String _tokenLastEight;
  String get tokenLastEight => _$this._tokenLastEight;
  set tokenLastEight(String tokenLastEight) =>
      _$this._tokenLastEight = tokenLastEight;

  DateTime _credentialAuthorizedAt;
  DateTime get credentialAuthorizedAt => _$this._credentialAuthorizedAt;
  set credentialAuthorizedAt(DateTime credentialAuthorizedAt) =>
      _$this._credentialAuthorizedAt = credentialAuthorizedAt;

  ListBuilder<String> _scopes;
  ListBuilder<String> get scopes =>
      _$this._scopes ??= new ListBuilder<String>();
  set scopes(ListBuilder<String> scopes) => _$this._scopes = scopes;

  String _fingerprint;
  String get fingerprint => _$this._fingerprint;
  set fingerprint(String fingerprint) => _$this._fingerprint = fingerprint;

  DateTime _credentialAccessedAt;
  DateTime get credentialAccessedAt => _$this._credentialAccessedAt;
  set credentialAccessedAt(DateTime credentialAccessedAt) =>
      _$this._credentialAccessedAt = credentialAccessedAt;

  int _authorizedCredentialId;
  int get authorizedCredentialId => _$this._authorizedCredentialId;
  set authorizedCredentialId(int authorizedCredentialId) =>
      _$this._authorizedCredentialId = authorizedCredentialId;

  String _authorizedCredentialTitle;
  String get authorizedCredentialTitle => _$this._authorizedCredentialTitle;
  set authorizedCredentialTitle(String authorizedCredentialTitle) =>
      _$this._authorizedCredentialTitle = authorizedCredentialTitle;

  String _authorizedCredentialNote;
  String get authorizedCredentialNote => _$this._authorizedCredentialNote;
  set authorizedCredentialNote(String authorizedCredentialNote) =>
      _$this._authorizedCredentialNote = authorizedCredentialNote;

  CredentialAuthorizationBuilder() {
    CredentialAuthorization._initializeBuilder(this);
  }

  CredentialAuthorizationBuilder get _$this {
    if (_$v != null) {
      _login = _$v.login;
      _credentialId = _$v.credentialId;
      _credentialType = _$v.credentialType;
      _tokenLastEight = _$v.tokenLastEight;
      _credentialAuthorizedAt = _$v.credentialAuthorizedAt;
      _scopes = _$v.scopes?.toBuilder();
      _fingerprint = _$v.fingerprint;
      _credentialAccessedAt = _$v.credentialAccessedAt;
      _authorizedCredentialId = _$v.authorizedCredentialId;
      _authorizedCredentialTitle = _$v.authorizedCredentialTitle;
      _authorizedCredentialNote = _$v.authorizedCredentialNote;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CredentialAuthorization other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CredentialAuthorization;
  }

  @override
  void update(void Function(CredentialAuthorizationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CredentialAuthorization build() {
    _$CredentialAuthorization _$result;
    try {
      _$result = _$v ??
          new _$CredentialAuthorization._(
              login: login,
              credentialId: credentialId,
              credentialType: credentialType,
              tokenLastEight: tokenLastEight,
              credentialAuthorizedAt: credentialAuthorizedAt,
              scopes: _scopes?.build(),
              fingerprint: fingerprint,
              credentialAccessedAt: credentialAccessedAt,
              authorizedCredentialId: authorizedCredentialId,
              authorizedCredentialTitle: authorizedCredentialTitle,
              authorizedCredentialNote: authorizedCredentialNote);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'scopes';
        _scopes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CredentialAuthorization', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
