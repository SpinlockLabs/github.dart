// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object43.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject43> _$inlineObject43Serializer =
    new _$InlineObject43Serializer();

class _$InlineObject43Serializer
    implements StructuredSerializer<InlineObject43> {
  @override
  final Iterable<Type> types = const [InlineObject43, _$InlineObject43];
  @override
  final String wireName = 'InlineObject43';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject43 object,
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
    if (object.private != null) {
      result
        ..add('private')
        ..add(serializers.serialize(object.private,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  InlineObject43 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject43Builder();

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
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject43 extends InlineObject43 {
  @override
  final String title;
  @override
  final String body;
  @override
  final bool private;

  factory _$InlineObject43([void Function(InlineObject43Builder) updates]) =>
      (new InlineObject43Builder()..update(updates)).build();

  _$InlineObject43._({this.title, this.body, this.private}) : super._();

  @override
  InlineObject43 rebuild(void Function(InlineObject43Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject43Builder toBuilder() =>
      new InlineObject43Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject43 &&
        title == other.title &&
        body == other.body &&
        private == other.private;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, title.hashCode), body.hashCode), private.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject43')
          ..add('title', title)
          ..add('body', body)
          ..add('private', private))
        .toString();
  }
}

class InlineObject43Builder
    implements Builder<InlineObject43, InlineObject43Builder> {
  _$InlineObject43 _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  bool _private;
  bool get private => _$this._private;
  set private(bool private) => _$this._private = private;

  InlineObject43Builder() {
    InlineObject43._initializeBuilder(this);
  }

  InlineObject43Builder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _body = _$v.body;
      _private = _$v.private;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject43 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject43;
  }

  @override
  void update(void Function(InlineObject43Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject43 build() {
    final _$result = _$v ??
        new _$InlineObject43._(title: title, body: body, private: private);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
