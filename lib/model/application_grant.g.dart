// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'application_grant.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApplicationGrant> _$applicationGrantSerializer =
    new _$ApplicationGrantSerializer();

class _$ApplicationGrantSerializer
    implements StructuredSerializer<ApplicationGrant> {
  @override
  final Iterable<Type> types = const [ApplicationGrant, _$ApplicationGrant];
  @override
  final String wireName = 'ApplicationGrant';

  @override
  Iterable<Object> serialize(Serializers serializers, ApplicationGrant object,
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
    if (object.app != null) {
      result
        ..add('app')
        ..add(serializers.serialize(object.app,
            specifiedType: const FullType(ApplicationGrantApp)));
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
    if (object.scopes != null) {
      result
        ..add('scopes')
        ..add(serializers.serialize(object.scopes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.user != null) {
      result
        ..add('user')
        ..add(serializers.serialize(object.user,
            specifiedType: const FullType(SimpleUser)));
    }
    return result;
  }

  @override
  ApplicationGrant deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApplicationGrantBuilder();

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
        case 'app':
          result.app.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ApplicationGrantApp))
              as ApplicationGrantApp);
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'scopes':
          result.scopes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'user':
          result.user.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
      }
    }

    return result.build();
  }
}

class _$ApplicationGrant extends ApplicationGrant {
  @override
  final int id;
  @override
  final String url;
  @override
  final ApplicationGrantApp app;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final BuiltList<String> scopes;
  @override
  final SimpleUser user;

  factory _$ApplicationGrant(
          [void Function(ApplicationGrantBuilder) updates]) =>
      (new ApplicationGrantBuilder()..update(updates)).build();

  _$ApplicationGrant._(
      {this.id,
      this.url,
      this.app,
      this.createdAt,
      this.updatedAt,
      this.scopes,
      this.user})
      : super._();

  @override
  ApplicationGrant rebuild(void Function(ApplicationGrantBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationGrantBuilder toBuilder() =>
      new ApplicationGrantBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationGrant &&
        id == other.id &&
        url == other.url &&
        app == other.app &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        scopes == other.scopes &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, id.hashCode), url.hashCode), app.hashCode),
                    createdAt.hashCode),
                updatedAt.hashCode),
            scopes.hashCode),
        user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApplicationGrant')
          ..add('id', id)
          ..add('url', url)
          ..add('app', app)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('scopes', scopes)
          ..add('user', user))
        .toString();
  }
}

class ApplicationGrantBuilder
    implements Builder<ApplicationGrant, ApplicationGrantBuilder> {
  _$ApplicationGrant _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ApplicationGrantAppBuilder _app;
  ApplicationGrantAppBuilder get app =>
      _$this._app ??= new ApplicationGrantAppBuilder();
  set app(ApplicationGrantAppBuilder app) => _$this._app = app;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  ListBuilder<String> _scopes;
  ListBuilder<String> get scopes =>
      _$this._scopes ??= new ListBuilder<String>();
  set scopes(ListBuilder<String> scopes) => _$this._scopes = scopes;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  ApplicationGrantBuilder() {
    ApplicationGrant._initializeBuilder(this);
  }

  ApplicationGrantBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _url = _$v.url;
      _app = _$v.app?.toBuilder();
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _scopes = _$v.scopes?.toBuilder();
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationGrant other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ApplicationGrant;
  }

  @override
  void update(void Function(ApplicationGrantBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApplicationGrant build() {
    _$ApplicationGrant _$result;
    try {
      _$result = _$v ??
          new _$ApplicationGrant._(
              id: id,
              url: url,
              app: _app?.build(),
              createdAt: createdAt,
              updatedAt: updatedAt,
              scopes: _scopes?.build(),
              user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'app';
        _app?.build();

        _$failedField = 'scopes';
        _scopes?.build();
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ApplicationGrant', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
