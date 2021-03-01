// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object96.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject96> _$inlineObject96Serializer =
    new _$InlineObject96Serializer();

class _$InlineObject96Serializer
    implements StructuredSerializer<InlineObject96> {
  @override
  final Iterable<Type> types = const [InlineObject96, _$InlineObject96];
  @override
  final String wireName = 'InlineObject96';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject96 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    if (object.encoding != null) {
      result
        ..add('encoding')
        ..add(serializers.serialize(object.encoding,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject96 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject96Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'encoding':
          result.encoding = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject96 extends InlineObject96 {
  @override
  final String content;
  @override
  final String encoding;

  factory _$InlineObject96([void Function(InlineObject96Builder) updates]) =>
      (new InlineObject96Builder()..update(updates)).build();

  _$InlineObject96._({this.content, this.encoding}) : super._();

  @override
  InlineObject96 rebuild(void Function(InlineObject96Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject96Builder toBuilder() =>
      new InlineObject96Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject96 &&
        content == other.content &&
        encoding == other.encoding;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, content.hashCode), encoding.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject96')
          ..add('content', content)
          ..add('encoding', encoding))
        .toString();
  }
}

class InlineObject96Builder
    implements Builder<InlineObject96, InlineObject96Builder> {
  _$InlineObject96 _$v;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  String _encoding;
  String get encoding => _$this._encoding;
  set encoding(String encoding) => _$this._encoding = encoding;

  InlineObject96Builder() {
    InlineObject96._initializeBuilder(this);
  }

  InlineObject96Builder get _$this {
    if (_$v != null) {
      _content = _$v.content;
      _encoding = _$v.encoding;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject96 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject96;
  }

  @override
  void update(void Function(InlineObject96Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject96 build() {
    final _$result =
        _$v ?? new _$InlineObject96._(content: content, encoding: encoding);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
