// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object11.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject11> _$inlineObject11Serializer =
    new _$InlineObject11Serializer();

class _$InlineObject11Serializer
    implements StructuredSerializer<InlineObject11> {
  @override
  final Iterable<Type> types = const [InlineObject11, _$InlineObject11];
  @override
  final String wireName = 'InlineObject11';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject11 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
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
  InlineObject11 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject11Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
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

class _$InlineObject11 extends InlineObject11 {
  @override
  final String title;
  @override
  final String body;

  factory _$InlineObject11([void Function(InlineObject11Builder) updates]) =>
      (new InlineObject11Builder()..update(updates)).build();

  _$InlineObject11._({this.title, this.body}) : super._();

  @override
  InlineObject11 rebuild(void Function(InlineObject11Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject11Builder toBuilder() =>
      new InlineObject11Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject11 &&
        title == other.title &&
        body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject11')
          ..add('title', title)
          ..add('body', body))
        .toString();
  }
}

class InlineObject11Builder
    implements Builder<InlineObject11, InlineObject11Builder> {
  _$InlineObject11 _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject11Builder() {
    InlineObject11._initializeBuilder(this);
  }

  InlineObject11Builder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject11 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject11;
  }

  @override
  void update(void Function(InlineObject11Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject11 build() {
    final _$result = _$v ?? new _$InlineObject11._(title: title, body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
