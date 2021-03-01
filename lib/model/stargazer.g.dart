// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'stargazer.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Stargazer> _$stargazerSerializer = new _$StargazerSerializer();

class _$StargazerSerializer implements StructuredSerializer<Stargazer> {
  @override
  final Iterable<Type> types = const [Stargazer, _$Stargazer];
  @override
  final String wireName = 'Stargazer';

  @override
  Iterable<Object> serialize(Serializers serializers, Stargazer object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.starredAt != null) {
      result
        ..add('starred_at')
        ..add(serializers.serialize(object.starredAt,
            specifiedType: const FullType(DateTime)));
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
  Stargazer deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StargazerBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'starred_at':
          result.starredAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
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

class _$Stargazer extends Stargazer {
  @override
  final DateTime starredAt;
  @override
  final SimpleUser user;

  factory _$Stargazer([void Function(StargazerBuilder) updates]) =>
      (new StargazerBuilder()..update(updates)).build();

  _$Stargazer._({this.starredAt, this.user}) : super._();

  @override
  Stargazer rebuild(void Function(StargazerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StargazerBuilder toBuilder() => new StargazerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Stargazer &&
        starredAt == other.starredAt &&
        user == other.user;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, starredAt.hashCode), user.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Stargazer')
          ..add('starredAt', starredAt)
          ..add('user', user))
        .toString();
  }
}

class StargazerBuilder implements Builder<Stargazer, StargazerBuilder> {
  _$Stargazer _$v;

  DateTime _starredAt;
  DateTime get starredAt => _$this._starredAt;
  set starredAt(DateTime starredAt) => _$this._starredAt = starredAt;

  SimpleUserBuilder _user;
  SimpleUserBuilder get user => _$this._user ??= new SimpleUserBuilder();
  set user(SimpleUserBuilder user) => _$this._user = user;

  StargazerBuilder() {
    Stargazer._initializeBuilder(this);
  }

  StargazerBuilder get _$this {
    if (_$v != null) {
      _starredAt = _$v.starredAt;
      _user = _$v.user?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Stargazer other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Stargazer;
  }

  @override
  void update(void Function(StargazerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Stargazer build() {
    _$Stargazer _$result;
    try {
      _$result =
          _$v ?? new _$Stargazer._(starredAt: starredAt, user: _user?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'user';
        _user?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Stargazer', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
