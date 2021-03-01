// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'actor.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Actor> _$actorSerializer = new _$ActorSerializer();

class _$ActorSerializer implements StructuredSerializer<Actor> {
  @override
  final Iterable<Type> types = const [Actor, _$Actor];
  @override
  final String wireName = 'Actor';

  @override
  Iterable<Object> serialize(Serializers serializers, Actor object,
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
    if (object.displayLogin != null) {
      result
        ..add('display_login')
        ..add(serializers.serialize(object.displayLogin,
            specifiedType: const FullType(String)));
    }
    if (object.gravatarId != null) {
      result
        ..add('gravatar_id')
        ..add(serializers.serialize(object.gravatarId,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.avatarUrl != null) {
      result
        ..add('avatar_url')
        ..add(serializers.serialize(object.avatarUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Actor deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ActorBuilder();

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
        case 'display_login':
          result.displayLogin = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gravatar_id':
          result.gravatarId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'avatar_url':
          result.avatarUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Actor extends Actor {
  @override
  final int id;
  @override
  final String login;
  @override
  final String displayLogin;
  @override
  final String gravatarId;
  @override
  final String url;
  @override
  final String avatarUrl;

  factory _$Actor([void Function(ActorBuilder) updates]) =>
      (new ActorBuilder()..update(updates)).build();

  _$Actor._(
      {this.id,
      this.login,
      this.displayLogin,
      this.gravatarId,
      this.url,
      this.avatarUrl})
      : super._();

  @override
  Actor rebuild(void Function(ActorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ActorBuilder toBuilder() => new ActorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Actor &&
        id == other.id &&
        login == other.login &&
        displayLogin == other.displayLogin &&
        gravatarId == other.gravatarId &&
        url == other.url &&
        avatarUrl == other.avatarUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, id.hashCode), login.hashCode),
                    displayLogin.hashCode),
                gravatarId.hashCode),
            url.hashCode),
        avatarUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Actor')
          ..add('id', id)
          ..add('login', login)
          ..add('displayLogin', displayLogin)
          ..add('gravatarId', gravatarId)
          ..add('url', url)
          ..add('avatarUrl', avatarUrl))
        .toString();
  }
}

class ActorBuilder implements Builder<Actor, ActorBuilder> {
  _$Actor _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _login;
  String get login => _$this._login;
  set login(String login) => _$this._login = login;

  String _displayLogin;
  String get displayLogin => _$this._displayLogin;
  set displayLogin(String displayLogin) => _$this._displayLogin = displayLogin;

  String _gravatarId;
  String get gravatarId => _$this._gravatarId;
  set gravatarId(String gravatarId) => _$this._gravatarId = gravatarId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _avatarUrl;
  String get avatarUrl => _$this._avatarUrl;
  set avatarUrl(String avatarUrl) => _$this._avatarUrl = avatarUrl;

  ActorBuilder() {
    Actor._initializeBuilder(this);
  }

  ActorBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _login = _$v.login;
      _displayLogin = _$v.displayLogin;
      _gravatarId = _$v.gravatarId;
      _url = _$v.url;
      _avatarUrl = _$v.avatarUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Actor other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Actor;
  }

  @override
  void update(void Function(ActorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Actor build() {
    final _$result = _$v ??
        new _$Actor._(
            id: id,
            login: login,
            displayLogin: displayLogin,
            gravatarId: gravatarId,
            url: url,
            avatarUrl: avatarUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
