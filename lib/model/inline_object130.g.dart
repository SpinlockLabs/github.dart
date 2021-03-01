// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object130.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject130> _$inlineObject130Serializer =
    new _$InlineObject130Serializer();

class _$InlineObject130Serializer
    implements StructuredSerializer<InlineObject130> {
  @override
  final Iterable<Type> types = const [InlineObject130, _$InlineObject130];
  @override
  final String wireName = 'InlineObject130';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject130 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject130 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject130Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject130 extends InlineObject130 {
  @override
  final String name;
  @override
  final String body;

  factory _$InlineObject130([void Function(InlineObject130Builder) updates]) =>
      (new InlineObject130Builder()..update(updates)).build();

  _$InlineObject130._({this.name, this.body}) : super._();

  @override
  InlineObject130 rebuild(void Function(InlineObject130Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject130Builder toBuilder() =>
      new InlineObject130Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject130 && name == other.name && body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject130')
          ..add('name', name)
          ..add('body', body))
        .toString();
  }
}

class InlineObject130Builder
    implements Builder<InlineObject130, InlineObject130Builder> {
  _$InlineObject130 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject130Builder() {
    InlineObject130._initializeBuilder(this);
  }

  InlineObject130Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject130 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject130;
  }

  @override
  void update(void Function(InlineObject130Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject130 build() {
    final _$result = _$v ?? new _$InlineObject130._(name: name, body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
