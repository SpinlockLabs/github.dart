// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object165.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject165> _$inlineObject165Serializer =
    new _$InlineObject165Serializer();

class _$InlineObject165Serializer
    implements StructuredSerializer<InlineObject165> {
  @override
  final Iterable<Type> types = const [InlineObject165, _$InlineObject165];
  @override
  final String wireName = 'InlineObject165';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject165 object,
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
  InlineObject165 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject165Builder();

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

class _$InlineObject165 extends InlineObject165 {
  @override
  final String title;
  @override
  final String body;

  factory _$InlineObject165([void Function(InlineObject165Builder) updates]) =>
      (new InlineObject165Builder()..update(updates)).build();

  _$InlineObject165._({this.title, this.body}) : super._();

  @override
  InlineObject165 rebuild(void Function(InlineObject165Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject165Builder toBuilder() =>
      new InlineObject165Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject165 &&
        title == other.title &&
        body == other.body;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), body.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject165')
          ..add('title', title)
          ..add('body', body))
        .toString();
  }
}

class InlineObject165Builder
    implements Builder<InlineObject165, InlineObject165Builder> {
  _$InlineObject165 _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  InlineObject165Builder() {
    InlineObject165._initializeBuilder(this);
  }

  InlineObject165Builder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _body = _$v.body;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject165 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject165;
  }

  @override
  void update(void Function(InlineObject165Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject165 build() {
    final _$result = _$v ?? new _$InlineObject165._(title: title, body: body);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
