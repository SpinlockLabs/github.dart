// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_group_list_enterprise_members.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimGroupListEnterpriseMembers>
    _$scimGroupListEnterpriseMembersSerializer =
    new _$ScimGroupListEnterpriseMembersSerializer();

class _$ScimGroupListEnterpriseMembersSerializer
    implements StructuredSerializer<ScimGroupListEnterpriseMembers> {
  @override
  final Iterable<Type> types = const [
    ScimGroupListEnterpriseMembers,
    _$ScimGroupListEnterpriseMembers
  ];
  @override
  final String wireName = 'ScimGroupListEnterpriseMembers';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ScimGroupListEnterpriseMembers object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.value != null) {
      result
        ..add('value')
        ..add(serializers.serialize(object.value,
            specifiedType: const FullType(String)));
    }
    if (object.dollarRef != null) {
      result
        ..add('\$ref')
        ..add(serializers.serialize(object.dollarRef,
            specifiedType: const FullType(String)));
    }
    if (object.display != null) {
      result
        ..add('display')
        ..add(serializers.serialize(object.display,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ScimGroupListEnterpriseMembers deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimGroupListEnterpriseMembersBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'value':
          result.value = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case '\$ref':
          result.dollarRef = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display':
          result.display = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ScimGroupListEnterpriseMembers extends ScimGroupListEnterpriseMembers {
  @override
  final String value;
  @override
  final String dollarRef;
  @override
  final String display;

  factory _$ScimGroupListEnterpriseMembers(
          [void Function(ScimGroupListEnterpriseMembersBuilder) updates]) =>
      (new ScimGroupListEnterpriseMembersBuilder()..update(updates)).build();

  _$ScimGroupListEnterpriseMembers._({this.value, this.dollarRef, this.display})
      : super._();

  @override
  ScimGroupListEnterpriseMembers rebuild(
          void Function(ScimGroupListEnterpriseMembersBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimGroupListEnterpriseMembersBuilder toBuilder() =>
      new ScimGroupListEnterpriseMembersBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimGroupListEnterpriseMembers &&
        value == other.value &&
        dollarRef == other.dollarRef &&
        display == other.display;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, value.hashCode), dollarRef.hashCode), display.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScimGroupListEnterpriseMembers')
          ..add('value', value)
          ..add('dollarRef', dollarRef)
          ..add('display', display))
        .toString();
  }
}

class ScimGroupListEnterpriseMembersBuilder
    implements
        Builder<ScimGroupListEnterpriseMembers,
            ScimGroupListEnterpriseMembersBuilder> {
  _$ScimGroupListEnterpriseMembers _$v;

  String _value;
  String get value => _$this._value;
  set value(String value) => _$this._value = value;

  String _dollarRef;
  String get dollarRef => _$this._dollarRef;
  set dollarRef(String dollarRef) => _$this._dollarRef = dollarRef;

  String _display;
  String get display => _$this._display;
  set display(String display) => _$this._display = display;

  ScimGroupListEnterpriseMembersBuilder() {
    ScimGroupListEnterpriseMembers._initializeBuilder(this);
  }

  ScimGroupListEnterpriseMembersBuilder get _$this {
    if (_$v != null) {
      _value = _$v.value;
      _dollarRef = _$v.dollarRef;
      _display = _$v.display;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimGroupListEnterpriseMembers other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimGroupListEnterpriseMembers;
  }

  @override
  void update(void Function(ScimGroupListEnterpriseMembersBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimGroupListEnterpriseMembers build() {
    final _$result = _$v ??
        new _$ScimGroupListEnterpriseMembers._(
            value: value, dollarRef: dollarRef, display: display);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
