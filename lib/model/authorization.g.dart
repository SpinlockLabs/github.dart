// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'authorization.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Authorization> _$authorizationSerializer =
    new _$AuthorizationSerializer();

class _$AuthorizationSerializer implements StructuredSerializer<Authorization> {
  @override
  final Iterable<Type> types = const [Authorization, _$Authorization];
  @override
  final String wireName = 'Authorization';

  @override
  Iterable<Object> serialize(Serializers serializers, Authorization object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.scopes != null) {
      result
        ..add('scopes')
        ..add(serializers.serialize(object.scopes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.token != null) {
      result
        ..add('token')
        ..add(serializers.serialize(object.token,
            specifiedType: const FullType(String)));
    }
    if (object.tokenLastEight != null) {
      result
        ..add('token_last_eight')
        ..add(serializers.serialize(object.tokenLastEight,
            specifiedType: const FullType(String)));
    }
    if (object.hashedToken != null) {
      result
        ..add('hashed_token')
        ..add(serializers.serialize(object.hashedToken,
            specifiedType: const FullType(String)));
    }
    if (object.app != null) {
      result
        ..add('app')
        ..add(serializers.serialize(object.app,
            specifiedType: const FullType(ApplicationGrantApp)));
    }
    if (object.note != null) {
      result
        ..add('note')
        ..add(serializers.serialize(object.note,
            specifiedType: const FullType(String)));
    }
    if (object.noteUrl != null) {
      result
        ..add('note_url')
        ..add(serializers.serialize(object.noteUrl,
            specifiedType: const FullType(String)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.fingerprint != null) {
      result
        ..add('fingerprint')
        ..add(serializers.serialize(object.fingerprint,
            specifiedType: const FullType(String)));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.installation != null) {
      result
        ..add('installation')
        ..add(serializers.serialize(object.installation,
            specifiedType: const FullType(ScopedInstallation)));
    }
    return result;
  }

  @override
  Authorization deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AuthorizationBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scopes':
          result.scopes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'token_last_eight':
          result.tokenLastEight = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'hashed_token':
          result.hashedToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'app':
          result.app.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ApplicationGrantApp))
              as ApplicationGrantApp);
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'note_url':
          result.noteUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'fingerprint':
          result.fingerprint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'installation':
          result.installation.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ScopedInstallation))
              as ScopedInstallation);
          break;
      }
    }

    return result.build();
  }
}

class _$Authorization extends Authorization {
  @override
  final int id;
  @override
  final String url;
  @override
  final BuiltList<String> scopes;
  @override
  final String token;
  @override
  final String tokenLastEight;
  @override
  final String hashedToken;
  @override
  final ApplicationGrantApp app;
  @override
  final String note;
  @override
  final String noteUrl;
  @override
  final DateTime updatedAt;
  @override
  final DateTime createdAt;
  @override
  final String fingerprint;
  @override
  final SimpleUser user;
  @override
  final ScopedInstallation installation;

  factory _$Authorization([void Function(AuthorizationBuilder) updates]) =>
      (new AuthorizationBuilder()..update(updates)).build();

  _$Authorization._(
      {this.id,
      this.url,
      this.scopes,
      this.token,
      this.tokenLastEight,
      this.hashedToken,
      this.app,
      this.note,
      this.noteUrl,
      this.updatedAt,
      this.createdAt,
      this.fingerprint,
      this.user,
      this.installation})
      : super._();

  @override
  Authorization rebuild(void Function(AuthorizationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AuthorizationBuilder toBuilder() => new AuthorizationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Authorization &&
        id == other.id &&
        url == other.url &&
        scopes == other.scopes &&
        token == other.token &&
        tokenLastEight == other.tokenLastEight &&
        hashedToken == other.hashedToken &&
        app == other.app &&
        note == other.note &&
        noteUrl == other.noteUrl &&
        updatedAt == other.updatedAt &&
        createdAt == other.createdAt &&
        fingerprint == other.fingerprint &&
        user == other.user &&
        installation == other.installation;
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
                                                    $jc($jc(0, id.hashCode),
                                                        url.hashCode),
                                                    scopes.hashCode),
                                                token.hashCode),
                                            tokenLastEight.hashCode),
                                        hashedToken.hashCode),
                                    app.hashCode),
                                note.hashCode),
                            noteUrl.hashCode),
                        updatedAt.hashCode),
                    createdAt.hashCode),
                fingerprint.hashCode),
            user.hashCode),
        installation.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Authorization')
          ..add('id', id)
          ..add('url', url)
          ..add('scopes', scopes)
          ..add('token', token)
          ..add('tokenLastEight', tokenLastEight)
          ..add('hashedToken', hashedToken)
          ..add('app', app)
          ..add('note', note)
          ..add('noteUrl', noteUrl)
          ..add('updatedAt', updatedAt)
          ..add('createdAt', createdAt)
          ..add('fingerprint', fingerprint)
          ..add('user', user)
          ..add('installation', installation))
        .toString();
  }
}

class AuthorizationBuilder
    implements Builder<Authorization, AuthorizationBuilder> {
  _$Authorization _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ListBuilder<String> _scopes;
  ListBuilder<String> get scopes =>
      _$this._scopes ??= new ListBuilder<String>();
  set scopes(ListBuilder<String> scopes) => _$this._scopes = scopes;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  String _tokenLastEight;
  String get tokenLastEight => _$this._tokenLastEight;
  set tokenLastEight(String tokenLastEight) =>
      _$this._tokenLastEight = tokenLastEight;

  String _hashedToken;
  String get hashedToken => _$this._hashedToken;
  set hashedToken(String hashedToken) => _$this._hashedToken = hashedToken;

  ApplicationGrantAppBuilder _app;
  ApplicationGrantAppBuilder get app =>
      _$this._app ??= new ApplicationGrantAppBuilder();
  set app(ApplicationGrantAppBuilder app) => _$this._app = app;

  String _note;
  String get note => _$this._note;
  set note(String note) => _$this._note = note;

  String _noteUrl;
  String get noteUrl => _$this._noteUrl;
  set noteUrl(String noteUrl) => _$this._noteUrl = noteUrl;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  String _fingerprint;
  String get fingerprint => _$this._fingerprint;
  set fingerprint(String fingerprint) => _$this._fingerprint = fingerprint;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  ScopedInstallationBuilder _installation;
  ScopedInstallationBuilder get installation =>
      _$this._installation ??= new ScopedInstallationBuilder();
  set installation(ScopedInstallationBuilder installation) =>
      _$this._installation = installation;

  AuthorizationBuilder() {
    Authorization._initializeBuilder(this);
  }

  AuthorizationBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _url = _$v.url;
      _scopes = _$v.scopes?.toBuilder();
      _token = _$v.token;
      _tokenLastEight = _$v.tokenLastEight;
      _hashedToken = _$v.hashedToken;
      _app = _$v.app?.toBuilder();
      _note = _$v.note;
      _noteUrl = _$v.noteUrl;
      _updatedAt = _$v.updatedAt;
      _createdAt = _$v.createdAt;
      _fingerprint = _$v.fingerprint;
      _user = _$v.user?.toBuilder();
      _installation = _$v.installation?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Authorization other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Authorization;
  }

  @override
  void update(void Function(AuthorizationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Authorization build() {
    _$Authorization _$result;
    try {
      _$result = _$v ??
          new _$Authorization._(
              id: id,
              url: url,
              scopes: _scopes?.build(),
              token: token,
              tokenLastEight: tokenLastEight,
              hashedToken: hashedToken,
              app: _app?.build(),
              note: note,
              noteUrl: noteUrl,
              updatedAt: updatedAt,
              createdAt: createdAt,
              fingerprint: fingerprint,
              user: _user?.build(),
              installation: _installation?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'scopes';
        _scopes?.build();

        _$failedField = 'app';
        _app?.build();

        _$failedField = 'user';
        _user?.build();
        _$failedField = 'installation';
        _installation?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Authorization', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
