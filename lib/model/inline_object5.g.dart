// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object5.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject5> _$inlineObject5Serializer =
    new _$InlineObject5Serializer();

class _$InlineObject5Serializer implements StructuredSerializer<InlineObject5> {
  @override
  final Iterable<Type> types = const [InlineObject5, _$InlineObject5];
  @override
  final String wireName = 'InlineObject5';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject5 object,
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
  InlineObject5 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject5Builder();

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

class _$InlineObject5 extends InlineObject5 {
  @override
  final String accessToken;

  factory _$InlineObject5([void Function(InlineObject5Builder) updates]) =>
      (new InlineObject5Builder()..update(updates)).build();

  _$InlineObject5._({this.accessToken}) : super._();

  @override
  InlineObject5 rebuild(void Function(InlineObject5Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject5Builder toBuilder() => new InlineObject5Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject5 && accessToken == other.accessToken;
  }

  @override
  int get hashCode {
    return $jf($jc(0, accessToken.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject5')
          ..add('accessToken', accessToken))
        .toString();
  }
}

class InlineObject5Builder
    implements Builder<InlineObject5, InlineObject5Builder> {
  _$InlineObject5 _$v;

  String _accessToken;
  String get accessToken => _$this._accessToken;
  set accessToken(String accessToken) => _$this._accessToken = accessToken;

  InlineObject5Builder() {
    InlineObject5._initializeBuilder(this);
  }

  InlineObject5Builder get _$this {
    if (_$v != null) {
      _accessToken = _$v.accessToken;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject5 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject5;
  }

  @override
  void update(void Function(InlineObject5Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject5 build() {
    final _$result = _$v ?? new _$InlineObject5._(accessToken: accessToken);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
