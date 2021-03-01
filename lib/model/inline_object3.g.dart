// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object3.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject3> _$inlineObject3Serializer =
    new _$InlineObject3Serializer();

class _$InlineObject3Serializer implements StructuredSerializer<InlineObject3> {
  @override
  final Iterable<Type> types = const [InlineObject3, _$InlineObject3];
  @override
  final String wireName = 'InlineObject3';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject3 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.accessToken != null) {
      result
        ..add('access_token')
        ..add(serializers.serialize(object.accessToken,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject3 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject3Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'access_token':
          result.accessToken = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject3 extends InlineObject3 {
  @override
  final String accessToken;

  factory _$InlineObject3([void Function(InlineObject3Builder) updates]) =>
      (new InlineObject3Builder()..update(updates)).build();

  _$InlineObject3._({this.accessToken}) : super._();

  @override
  InlineObject3 rebuild(void Function(InlineObject3Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject3Builder toBuilder() => new InlineObject3Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject3 && accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, accessToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject3')
          ..add('accessToken', accessToken))
        .toString();
  }
}

class InlineObject3Builder
    implements Builder<InlineObject3, InlineObject3Builder> {
  _$InlineObject3 _$v;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  InlineObject3Builder() {
    InlineObject3._initializeBuilder(this);
  }

  InlineObject3Builder get _$this {
    if (_$v != null) {
      _accessToken = _$v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject3 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject3;
  }

  @override
  void update(void Function(InlineObject3Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject3 build() {
    final _$result = _$v ?? new _$InlineObject3._(accessToken: accessToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
