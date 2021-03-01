// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object88.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject88> _$inlineObject88Serializer =
    new _$InlineObject88Serializer();

class _$InlineObject88Serializer
    implements StructuredSerializer<InlineObject88> {
  @override
  final Iterable<Type> types = const [InlineObject88, _$InlineObject88];
  @override
  final String wireName = 'InlineObject88';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject88 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(object.position,
            specifiedType: const FullType(int)));
    }
    if (object.line != null) {
      result
        ..add('line')
        ..add(serializers.serialize(object.line,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  InlineObject88 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject88Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'line':
          result.line = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject88 extends InlineObject88 {
  @override
  final String body;
  @override
  final String path;
  @override
  final int position;
  @override
  final int line;

  factory _$InlineObject88([void Function(InlineObject88Builder) updates]) =>
      (new InlineObject88Builder()..update(updates)).build();

  _$InlineObject88._({this.body, this.path, this.position, this.line})
      : super._();

  @override
  InlineObject88 rebuild(void Function(InlineObject88Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject88Builder toBuilder() =>
      new InlineObject88Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject88 &&
        body == other.body &&
        path == other.path &&
        position == other.position &&
        line == other.line;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, body.hashCode), path.hashCode), position.hashCode),
        line.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject88')
          ..add('body', body)
          ..add('path', path)
          ..add('position', position)
          ..add('line', line))
        .toString();
  }
}

class InlineObject88Builder
    implements Builder<InlineObject88, InlineObject88Builder> {
  _$InlineObject88 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  int _line;
  int get line => _$this._line;
  set line(int line) => _$this._line = line;

  InlineObject88Builder() {
    InlineObject88._initializeBuilder(this);
  }

  InlineObject88Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _path = _$v.path;
      _position = _$v.position;
      _line = _$v.line;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject88 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject88;
  }

  @override
  void update(void Function(InlineObject88Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject88 build() {
    final _$result = _$v ??
        new _$InlineObject88._(
            body: body, path: path, position: position, line: line);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
