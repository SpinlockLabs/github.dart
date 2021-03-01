// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object129.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject129> _$inlineObject129Serializer =
    new _$InlineObject129Serializer();

class _$InlineObject129Serializer
    implements StructuredSerializer<InlineObject129> {
  @override
  final Iterable<Type> types = const [InlineObject129, _$InlineObject129];
  @override
  final String wireName = 'InlineObject129';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject129 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.source_ != null) {
      result
        ..add('source')
        ..add(serializers.serialize(object.source_,
            specifiedType: const FullType(ReposOwnerRepoPagesSource)));
    }
    return result;
  }

  @override
  InlineObject129 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject129Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'source':
          result.source_.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ReposOwnerRepoPagesSource))
              as ReposOwnerRepoPagesSource);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject129 extends InlineObject129 {
  @override
  final ReposOwnerRepoPagesSource source_;

  factory _$InlineObject129([void Function(InlineObject129Builder) updates]) =>
      (new InlineObject129Builder()..update(updates)).build();

  _$InlineObject129._({this.source_}) : super._();

  @override
  InlineObject129 rebuild(void Function(InlineObject129Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject129Builder toBuilder() =>
      new InlineObject129Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject129 && source_ == other.source_;
  }

  @override
  int get hashCode {
    return $jf($jc(0, source_.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject129')
          ..add('source_', source_))
        .toString();
  }
}

class InlineObject129Builder
    implements Builder<InlineObject129, InlineObject129Builder> {
  _$InlineObject129 _$v;

  ReposOwnerRepoPagesSourceBuilder _source_;
  ReposOwnerRepoPagesSourceBuilder get source_ =>
      _$this._source_ ??= new ReposOwnerRepoPagesSourceBuilder();
  set source_(ReposOwnerRepoPagesSourceBuilder source_) =>
      _$this._source_ = source_;

  InlineObject129Builder() {
    InlineObject129._initializeBuilder(this);
  }

  InlineObject129Builder get _$this {
    if (_$v != null) {
      _source_ = _$v.source_?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject129 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject129;
  }

  @override
  void update(void Function(InlineObject129Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject129 build() {
    _$InlineObject129 _$result;
    try {
      _$result = _$v ?? new _$InlineObject129._(source_: _source_?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'source_';
        _source_?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject129', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
