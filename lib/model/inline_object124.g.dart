// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object124.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject124> _$inlineObject124Serializer =
    new _$InlineObject124Serializer();

class _$InlineObject124Serializer
    implements StructuredSerializer<InlineObject124> {
  @override
  final Iterable<Type> types = const [InlineObject124, _$InlineObject124];
  @override
  final String wireName = 'InlineObject124';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject124 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.base != null) {
      result
        ..add('base')
        ..add(serializers.serialize(object.base,
            specifiedType: const FullType(String)));
    }
    if (object.head != null) {
      result
        ..add('head')
        ..add(serializers.serialize(object.head,
            specifiedType: const FullType(String)));
    }
    if (object.commitMessage != null) {
      result
        ..add('commit_message')
        ..add(serializers.serialize(object.commitMessage,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject124 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject124Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'base':
          result.base = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'head':
          result.head = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit_message':
          result.commitMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject124 extends InlineObject124 {
  @override
  final String base;
  @override
  final String head;
  @override
  final String commitMessage;

  factory _$InlineObject124([void Function(InlineObject124Builder) updates]) =>
      (new InlineObject124Builder()..update(updates)).build();

  _$InlineObject124._({this.base, this.head, this.commitMessage}) : super._();

  @override
  InlineObject124 rebuild(void Function(InlineObject124Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject124Builder toBuilder() =>
      new InlineObject124Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject124 &&
        base == other.base &&
        head == other.head &&
        commitMessage == other.commitMessage;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, base.hashCode), head.hashCode), commitMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject124')
          ..add('base', base)
          ..add('head', head)
          ..add('commitMessage', commitMessage))
        .toString();
  }
}

class InlineObject124Builder
    implements Builder<InlineObject124, InlineObject124Builder> {
  _$InlineObject124 _$v;

  String _base;
  String get base => _$this._base;
  set base(String base) => _$this._base = base;

  String _head;
  String get head => _$this._head;
  set head(String head) => _$this._head = head;

  String _commitMessage;
  String get commitMessage => _$this._commitMessage;
  set commitMessage(String commitMessage) =>
      _$this._commitMessage = commitMessage;

  InlineObject124Builder() {
    InlineObject124._initializeBuilder(this);
  }

  InlineObject124Builder get _$this {
    if (_$v != null) {
      _base = _$v.base;
      _head = _$v.head;
      _commitMessage = _$v.commitMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject124 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject124;
  }

  @override
  void update(void Function(InlineObject124Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject124 build() {
    final _$result = _$v ??
        new _$InlineObject124._(
            base: base, head: head, commitMessage: commitMessage);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
