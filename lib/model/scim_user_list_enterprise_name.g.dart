// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_user_list_enterprise_name.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimUserListEnterpriseName> _$scimUserListEnterpriseNameSerializer =
    new _$ScimUserListEnterpriseNameSerializer();

class _$ScimUserListEnterpriseNameSerializer
    implements StructuredSerializer<ScimUserListEnterpriseName> {
  @override
  final Iterable<Type> types = const [
    ScimUserListEnterpriseName,
    _$ScimUserListEnterpriseName
  ];
  @override
  final String wireName = 'ScimUserListEnterpriseName';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScimUserListEnterpriseName object,
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
    return result;
  }

  @override
  ScimUserListEnterpriseName deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimUserListEnterpriseNameBuilder();

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
      }
    }

    return result.build();
  }
}

class _$ScimUserListEnterpriseName extends ScimUserListEnterpriseName {
  @override
  final String givenName;
  @override
  final String familyName;

  factory _$ScimUserListEnterpriseName(
          [void Function(ScimUserListEnterpriseNameBuilder) updates]) =>
      (new ScimUserListEnterpriseNameBuilder()..update(updates)).build();

  _$ScimUserListEnterpriseName._({this.givenName, this.familyName}) : super._();

  @override
  ScimUserListEnterpriseName rebuild(
          void Function(ScimUserListEnterpriseNameBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimUserListEnterpriseNameBuilder toBuilder() =>
      new ScimUserListEnterpriseNameBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimUserListEnterpriseName &&
        givenName == other.givenName &&
        familyName == other.familyName;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, givenName.hashCode), familyName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScimUserListEnterpriseName')
          ..add('givenName', givenName)
          ..add('familyName', familyName))
        .toString();
  }
}

class ScimUserListEnterpriseNameBuilder
    implements
        Builder<ScimUserListEnterpriseName, ScimUserListEnterpriseNameBuilder> {
  _$ScimUserListEnterpriseName _$v;

  String _givenName;
  String get givenName => _$this._givenName;
  set givenName(String givenName) => _$this._givenName = givenName;

  String _familyName;
  String get familyName => _$this._familyName;
  set familyName(String familyName) => _$this._familyName = familyName;

  ScimUserListEnterpriseNameBuilder() {
    ScimUserListEnterpriseName._initializeBuilder(this);
  }

  ScimUserListEnterpriseNameBuilder get _$this {
    if (_$v != null) {
      _givenName = _$v.givenName;
      _familyName = _$v.familyName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimUserListEnterpriseName other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimUserListEnterpriseName;
  }

  @override
  void update(void Function(ScimUserListEnterpriseNameBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimUserListEnterpriseName build() {
    final _$result = _$v ??
        new _$ScimUserListEnterpriseName._(
            givenName: givenName, familyName: familyName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
