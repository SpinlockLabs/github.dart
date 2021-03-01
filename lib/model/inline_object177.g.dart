// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object177.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject177> _$inlineObject177Serializer =
    new _$InlineObject177Serializer();

class _$InlineObject177Serializer
    implements StructuredSerializer<InlineObject177> {
  @override
  final Iterable<Type> types = const [InlineObject177, _$InlineObject177];
  @override
  final String wireName = 'InlineObject177';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject177 object,
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
    return result;
  }

  @override
  InlineObject177 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject177Builder();

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
      }
    }

    return result.build();
  }
}

class _$InlineObject177 extends InlineObject177 {
  @override
  final String title;
  @override
  final String key;

  factory _$InlineObject177([void Function(InlineObject177Builder) updates]) =>
      (new InlineObject177Builder()..update(updates)).build();

  _$InlineObject177._({this.title, this.key}) : super._();

  @override
  InlineObject177 rebuild(void Function(InlineObject177Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject177Builder toBuilder() =>
      new InlineObject177Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject177 && title == other.title && key == other.key;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, title.hashCode), key.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject177')
          ..add('title', title)
          ..add('key', key))
        .toString();
  }
}

class InlineObject177Builder
    implements Builder<InlineObject177, InlineObject177Builder> {
  _$InlineObject177 _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  InlineObject177Builder() {
    InlineObject177._initializeBuilder(this);
  }

  InlineObject177Builder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _key = _$v.key;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject177 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject177;
  }

  @override
  void update(void Function(InlineObject177Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject177 build() {
    final _$result = _$v ?? new _$InlineObject177._(title: title, key: key);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
