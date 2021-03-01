// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object44.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject44> _$inlineObject44Serializer =
    new _$InlineObject44Serializer();

class _$InlineObject44Serializer
    implements StructuredSerializer<InlineObject44> {
  @override
  final Iterable<Type> types = const [InlineObject44, _$InlineObject44];
  @override
  final String wireName = 'InlineObject44';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject44 object,
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
  InlineObject44 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject44Builder();

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

class _$InlineObject44 extends InlineObject44 {
  @override
  final String title;
  @override
  final String body;

  factory _$InlineObject44([void Function(InlineObject44Builder) updates]) =>
      (new InlineObject44Builder()..update(updates)).build();

  _$InlineObject44._({this.title, this.body}) : super._();

  @override
  InlineObject44 rebuild(void Function(InlineObject44Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject44Builder toBuilder() =>
      new InlineObject44Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject44 &&
        title == other.title &&
        body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject44')
          ..add('title', title)
          ..add('body', body))
        .toString();
  }
}

class InlineObject44Builder
    implements Builder<InlineObject44, InlineObject44Builder> {
  _$InlineObject44 _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject44Builder() {
    InlineObject44._initializeBuilder(this);
  }

  InlineObject44Builder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject44 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject44;
  }

  @override
  void update(void Function(InlineObject44Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject44 build() {
    final _$result = _$v ?? new _$InlineObject44._(title: title, body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
