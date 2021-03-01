// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object164.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject164> _$inlineObject164Serializer =
    new _$InlineObject164Serializer();

class _$InlineObject164Serializer
    implements StructuredSerializer<InlineObject164> {
  @override
  final Iterable<Type> types = const [InlineObject164, _$InlineObject164];
  @override
  final String wireName = 'InlineObject164';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject164 object,
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
  InlineObject164 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject164Builder();

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

class _$InlineObject164 extends InlineObject164 {
  @override
  final String title;
  @override
  final String body;
  @override
  final bool private;

  factory _$InlineObject164([void Function(InlineObject164Builder) updates]) =>
      (new InlineObject164Builder()..update(updates)).build();

  _$InlineObject164._({this.title, this.body, this.private}) : super._();

  @override
  InlineObject164 rebuild(void Function(InlineObject164Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject164Builder toBuilder() =>
      new InlineObject164Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject164 &&
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
    return (newBuiltValueToStringHelper('InlineObject164')
          ..add('title', title)
          ..add('body', body)
          ..add('private', private))
        .toString();
  }
}

class InlineObject164Builder
    implements Builder<InlineObject164, InlineObject164Builder> {
  _$InlineObject164 _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  bool _private;
  bool get private => _$this._private;
  set private(bool private) => _$this._private = private;

  InlineObject164Builder() {
    InlineObject164._initializeBuilder(this);
  }

  InlineObject164Builder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _body = _$v.body;
      _private = _$v.private;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject164 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject164;
  }

  @override
  void update(void Function(InlineObject164Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject164 build() {
    final _$result = _$v ??
        new _$InlineObject164._(title: title, body: body, private: private);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
