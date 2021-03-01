// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'authentication_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AuthenticationTokenRepositorySelectionEnum
    _$authenticationTokenRepositorySelectionEnum_all =
    const AuthenticationTokenRepositorySelectionEnum._('all');
const AuthenticationTokenRepositorySelectionEnum
    _$authenticationTokenRepositorySelectionEnum_selected =
    const AuthenticationTokenRepositorySelectionEnum._('selected');

AuthenticationTokenRepositorySelectionEnum
    _$authenticationTokenRepositorySelectionEnumValueOf(String name) {
  switch (name) {
    case 'all':
      return _$authenticationTokenRepositorySelectionEnum_all;
    case 'selected':
      return _$authenticationTokenRepositorySelectionEnum_selected;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AuthenticationTokenRepositorySelectionEnum>
    _$authenticationTokenRepositorySelectionEnumValues =
    new BuiltSet<AuthenticationTokenRepositorySelectionEnum>(const <
        AuthenticationTokenRepositorySelectionEnum>[
  _$authenticationTokenRepositorySelectionEnum_all,
  _$authenticationTokenRepositorySelectionEnum_selected,
]);

Serializer<AuthenticationToken> _$authenticationTokenSerializer =
    new _$AuthenticationTokenSerializer();
Serializer<AuthenticationTokenRepositorySelectionEnum>
    _$authenticationTokenRepositorySelectionEnumSerializer =
    new _$AuthenticationTokenRepositorySelectionEnumSerializer();

class _$AuthenticationTokenSerializer
    implements StructuredSerializer<AuthenticationToken> {
  @override
  final Iterable<Type> types = const [
    AuthenticationToken,
    _$AuthenticationToken
  ];
  @override
  final String wireName = 'AuthenticationToken';

  @override
  Iterable<Object> serialize(
      Serializers serializers, AuthenticationToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.token != null) {
      result
        ..add('token')
        ..add(serializers.serialize(object.token,
            specifiedType: const FullType(String)));
    }
    if (object.expiresAt != null) {
      result
        ..add('expires_at')
        ..add(serializers.serialize(object.expiresAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.permissions != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(object.permissions,
            specifiedType: const FullType(JsonObject)));
    }
    if (object.repositories != null) {
      result
        ..add('repositories')
        ..add(serializers.serialize(object.repositories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Repository)])));
    }
    if (object.singleFile != null) {
      result
        ..add('single_file')
        ..add(serializers.serialize(object.singleFile,
            specifiedType: const FullType(String)));
    }
    if (object.repositorySelection != null) {
      result
        ..add('repository_selection')
        ..add(serializers.serialize(object.repositorySelection,
            specifiedType:
                const FullType(AuthenticationTokenRepositorySelectionEnum)));
    }
    return result;
  }

  @override
  AuthenticationToken deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthenticationTokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expires_at':
          result.expiresAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'permissions':
          result.permissions = serializers.deserialize(value,
              specifiedType: const FullType(JsonObject)) as JsonObject;
          break;
        case 'repositories':
          result.repositories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Repository)]))
              as BuiltList<Object>);
          break;
        case 'single_file':
          result.singleFile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repository_selection':
          result.repositorySelection = serializers.deserialize(value,
                  specifiedType: const FullType(
                      AuthenticationTokenRepositorySelectionEnum))
              as AuthenticationTokenRepositorySelectionEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$AuthenticationTokenRepositorySelectionEnumSerializer
    implements PrimitiveSerializer<AuthenticationTokenRepositorySelectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
    'selected': 'selected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
    'selected': 'selected',
  };

  @override
  final Iterable<Type> types = const <Type>[
    AuthenticationTokenRepositorySelectionEnum
  ];
  @override
  final String wireName = 'AuthenticationTokenRepositorySelectionEnum';

  @override
  Object serialize(Serializers serializers,
          AuthenticationTokenRepositorySelectionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AuthenticationTokenRepositorySelectionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AuthenticationTokenRepositorySelectionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$AuthenticationToken extends AuthenticationToken {
  @override
  final String token;
  @override
  final DateTime expiresAt;
  @override
  final JsonObject permissions;
  @override
  final BuiltList<Repository> repositories;
  @override
  final String singleFile;
  @override
  final AuthenticationTokenRepositorySelectionEnum repositorySelection;

  factory _$AuthenticationToken(
          [void Function(AuthenticationTokenBuilder) updates]) =>
      (new AuthenticationTokenBuilder()..update(updates)).build();

  _$AuthenticationToken._(
      {this.token,
      this.expiresAt,
      this.permissions,
      this.repositories,
      this.singleFile,
      this.repositorySelection})
      : super._();

  @override
  AuthenticationToken rebuild(
          void Function(AuthenticationTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthenticationTokenBuilder toBuilder() =>
      new AuthenticationTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AuthenticationToken &&
        token == other.token &&
        expiresAt == other.expiresAt &&
        permissions == other.permissions &&
        repositories == other.repositories &&
        singleFile == other.singleFile &&
        repositorySelection == other.repositorySelection;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, token.hashCode), expiresAt.hashCode),
                    permissions.hashCode),
                repositories.hashCode),
            singleFile.hashCode),
        repositorySelection.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AuthenticationToken')
          ..add('token', token)
          ..add('expiresAt', expiresAt)
          ..add('permissions', permissions)
          ..add('repositories', repositories)
          ..add('singleFile', singleFile)
          ..add('repositorySelection', repositorySelection))
        .toString();
  }
}

class AuthenticationTokenBuilder
    implements Builder<AuthenticationToken, AuthenticationTokenBuilder> {
  _$AuthenticationToken _$v;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  DateTime _expiresAt;
  DateTime get expiresAt => _$this._expiresAt;
  set expiresAt(DateTime expiresAt) => _$this._expiresAt = expiresAt;

  JsonObject _permissions;
  JsonObject get permissions => _$this._permissions;
  set permissions(JsonObject permissions) => _$this._permissions = permissions;

  ListBuilder<Repository> _repositories;
  ListBuilder<Repository> get repositories =>
      _$this._repositories ??= new ListBuilder<Repository>();
  set repositories(ListBuilder<Repository> repositories) =>
      _$this._repositories = repositories;

  String _singleFile;
  String get singleFile => _$this._singleFile;
  set singleFile(String singleFile) => _$this._singleFile = singleFile;

  AuthenticationTokenRepositorySelectionEnum _repositorySelection;
  AuthenticationTokenRepositorySelectionEnum get repositorySelection =>
      _$this._repositorySelection;
  set repositorySelection(
          AuthenticationTokenRepositorySelectionEnum repositorySelection) =>
      _$this._repositorySelection = repositorySelection;

  AuthenticationTokenBuilder() {
    AuthenticationToken._initializeBuilder(this);
  }

  AuthenticationTokenBuilder get _$this {
    if (_$v != null) {
      _token = _$v.token;
      _expiresAt = _$v.expiresAt;
      _permissions = _$v.permissions;
      _repositories = _$v.repositories?.toBuilder();
      _singleFile = _$v.singleFile;
      _repositorySelection = _$v.repositorySelection;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AuthenticationToken other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AuthenticationToken;
  }

  @override
  void update(void Function(AuthenticationTokenBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AuthenticationToken build() {
    _$AuthenticationToken _$result;
    try {
      _$result = _$v ??
          new _$AuthenticationToken._(
              token: token,
              expiresAt: expiresAt,
              permissions: permissions,
              repositories: _repositories?.build(),
              singleFile: singleFile,
              repositorySelection: repositorySelection);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repositories';
        _repositories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AuthenticationToken', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
