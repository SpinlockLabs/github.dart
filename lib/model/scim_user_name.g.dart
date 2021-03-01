// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_user_name.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimUserName> _$scimUserNameSerializer =
    new _$ScimUserNameSerializer();

class _$ScimUserNameSerializer implements StructuredSerializer<ScimUserName> {
  @override
  final Iterable<Type> types = const [ScimUserName, _$ScimUserName];
  @override
  final String wireName = 'ScimUserName';

  @override
  Iterable<Object> serialize(Serializers serializers, ScimUserName object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.givenName != null) {
      result
        ..add('givenName')
        ..add(serializers.serialize(object.givenName,
            specifiedType: const FullType(String)));
    }
    if (object.familyName != null) {
      result
        ..add('familyName')
        ..add(serializers.serialize(object.familyName,
            specifiedType: const FullType(String)));
    }
    if (object.formatted != null) {
      result
        ..add('formatted')
        ..add(serializers.serialize(object.formatted,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ScimUserName deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimUserNameBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'givenName':
          result.givenName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'familyName':
          result.familyName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'formatted':
          result.formatted = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ScimUserName extends ScimUserName {
  @override
  final String givenName;
  @override
  final String familyName;
  @override
  final String formatted;

  factory _$ScimUserName([void Function(ScimUserNameBuilder) updates]) =>
      (new ScimUserNameBuilder()..update(updates)).build();

  _$ScimUserName._({this.givenName, this.familyName, this.formatted})
      : super._();

  @override
  ScimUserName rebuild(void Function(ScimUserNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimUserNameBuilder toBuilder() => new ScimUserNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimUserName &&
        givenName == other.givenName &&
        familyName == other.familyName &&
        formatted == other.formatted;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, givenName.hashCode), familyName.hashCode),
        formatted.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScimUserName')
          ..add('givenName', givenName)
          ..add('familyName', familyName)
          ..add('formatted', formatted))
        .toString();
  }
}

class ScimUserNameBuilder
    implements Builder<ScimUserName, ScimUserNameBuilder> {
  _$ScimUserName _$v;

  String _givenName;
  String get givenName => _$this._givenName;
  set givenName(String givenName) => _$this._givenName = givenName;

  String _familyName;
  String get familyName => _$this._familyName;
  set familyName(String familyName) => _$this._familyName = familyName;

  String _formatted;
  String get formatted => _$this._formatted;
  set formatted(String formatted) => _$this._formatted = formatted;

  ScimUserNameBuilder() {
    ScimUserName._initializeBuilder(this);
  }

  ScimUserNameBuilder get _$this {
    if (_$v != null) {
      _givenName = _$v.givenName;
      _familyName = _$v.familyName;
      _formatted = _$v.formatted;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimUserName other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimUserName;
  }

  @override
  void update(void Function(ScimUserNameBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimUserName build() {
    final _$result = _$v ??
        new _$ScimUserName._(
            givenName: givenName, familyName: familyName, formatted: formatted);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
