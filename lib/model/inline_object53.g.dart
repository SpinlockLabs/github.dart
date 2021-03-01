// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object53.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject53> _$inlineObject53Serializer =
    new _$InlineObject53Serializer();

class _$InlineObject53Serializer
    implements StructuredSerializer<InlineObject53> {
  @override
  final Iterable<Type> types = const [InlineObject53, _$InlineObject53];
  @override
  final String wireName = 'InlineObject53';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject53 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.note != null) {
      result
        ..add('note')
        ..add(serializers.serialize(object.note,
            specifiedType: const FullType(String)));
    }
    if (object.archived != null) {
      result
        ..add('archived')
        ..add(serializers.serialize(object.archived,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  InlineObject53 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject53Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'archived':
          result.archived = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject53 extends InlineObject53 {
  @override
  final String note;
  @override
  final bool archived;

  factory _$InlineObject53([void Function(InlineObject53Builder) updates]) =>
      (new InlineObject53Builder()..update(updates)).build();

  _$InlineObject53._({this.note, this.archived}) : super._();

  @override
  InlineObject53 rebuild(void Function(InlineObject53Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject53Builder toBuilder() =>
      new InlineObject53Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject53 &&
        note == other.note &&
        archived == other.archived;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, note.hashCode), archived.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject53')
          ..add('note', note)
          ..add('archived', archived))
        .toString();
  }
}

class InlineObject53Builder
    implements Builder<InlineObject53, InlineObject53Builder> {
  _$InlineObject53 _$v;

  String _note;
  String get note => _$this._note;
  set note(String note) => _$this._note = note;

  bool _archived;
  bool get archived => _$this._archived;
  set archived(bool archived) => _$this._archived = archived;

  InlineObject53Builder() {
    InlineObject53._initializeBuilder(this);
  }

  InlineObject53Builder get _$this {
    if (_$v != null) {
      _note = _$v.note;
      _archived = _$v.archived;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject53 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject53;
  }

  @override
  void update(void Function(InlineObject53Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject53 build() {
    final _$result =
        _$v ?? new _$InlineObject53._(note: note, archived: archived);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
