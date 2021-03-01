// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object121.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject121> _$inlineObject121Serializer =
    new _$InlineObject121Serializer();

class _$InlineObject121Serializer
    implements StructuredSerializer<InlineObject121> {
  @override
  final Iterable<Type> types = const [InlineObject121, _$InlineObject121];
  @override
  final String wireName = 'InlineObject121';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject121 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.key != null) {
      result
        ..add('key')
        ..add(serializers.serialize(object.key,
            specifiedType: const FullType(String)));
    }
    if (object.readOnly != null) {
      result
        ..add('read_only')
        ..add(serializers.serialize(object.readOnly,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  InlineObject121 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject121Builder();

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
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'read_only':
          result.readOnly = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject121 extends InlineObject121 {
  @override
  final String title;
  @override
  final String key;
  @override
  final bool readOnly;

  factory _$InlineObject121([void Function(InlineObject121Builder) updates]) =>
      (new InlineObject121Builder()..update(updates)).build();

  _$InlineObject121._({this.title, this.key, this.readOnly}) : super._();

  @override
  InlineObject121 rebuild(void Function(InlineObject121Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject121Builder toBuilder() =>
      new InlineObject121Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject121 &&
        title == other.title &&
        key == other.key &&
        readOnly == other.readOnly;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, title.hashCode), key.hashCode), readOnly.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject121')
          ..add('title', title)
          ..add('key', key)
          ..add('readOnly', readOnly))
        .toString();
  }
}

class InlineObject121Builder
    implements Builder<InlineObject121, InlineObject121Builder> {
  _$InlineObject121 _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  bool _readOnly;
  bool get readOnly => _$this._readOnly;
  set readOnly(bool readOnly) => _$this._readOnly = readOnly;

  InlineObject121Builder() {
    InlineObject121._initializeBuilder(this);
  }

  InlineObject121Builder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _key = _$v.key;
      _readOnly = _$v.readOnly;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject121 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject121;
  }

  @override
  void update(void Function(InlineObject121Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject121 build() {
    final _$result = _$v ??
        new _$InlineObject121._(title: title, key: key, readOnly: readOnly);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
