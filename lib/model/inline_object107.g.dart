// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object107.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject107> _$inlineObject107Serializer =
    new _$InlineObject107Serializer();

class _$InlineObject107Serializer
    implements StructuredSerializer<InlineObject107> {
  @override
  final Iterable<Type> types = const [InlineObject107, _$InlineObject107];
  @override
  final String wireName = 'InlineObject107';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject107 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.remoteId != null) {
      result
        ..add('remote_id')
        ..add(serializers.serialize(object.remoteId,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject107 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject107Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'remote_id':
          result.remoteId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject107 extends InlineObject107 {
  @override
  final String email;
  @override
  final String name;
  @override
  final String remoteId;

  factory _$InlineObject107([void Function(InlineObject107Builder) updates]) =>
      (new InlineObject107Builder()..update(updates)).build();

  _$InlineObject107._({this.email, this.name, this.remoteId}) : super._();

  @override
  InlineObject107 rebuild(void Function(InlineObject107Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject107Builder toBuilder() =>
      new InlineObject107Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject107 &&
        email == other.email &&
        name == other.name &&
        remoteId == other.remoteId;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, email.hashCode), name.hashCode), remoteId.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject107')
          ..add('email', email)
          ..add('name', name)
          ..add('remoteId', remoteId))
        .toString();
  }
}

class InlineObject107Builder
    implements Builder<InlineObject107, InlineObject107Builder> {
  _$InlineObject107 _$v;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _remoteId;
  String get remoteId => _$this._remoteId;
  set remoteId(String remoteId) => _$this._remoteId = remoteId;

  InlineObject107Builder() {
    InlineObject107._initializeBuilder(this);
  }

  InlineObject107Builder get _$this {
    if (_$v != null) {
      _email = _$v.email;
      _name = _$v.name;
      _remoteId = _$v.remoteId;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject107 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject107;
  }

  @override
  void update(void Function(InlineObject107Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject107 build() {
    final _$result = _$v ??
        new _$InlineObject107._(email: email, name: name, remoteId: remoteId);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
