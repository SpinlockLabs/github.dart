// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object117.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject117> _$inlineObject117Serializer =
    new _$InlineObject117Serializer();

class _$InlineObject117Serializer
    implements StructuredSerializer<InlineObject117> {
  @override
  final Iterable<Type> types = const [InlineObject117, _$InlineObject117];
  @override
  final String wireName = 'InlineObject117';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject117 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.labels != null) {
      result
        ..add('labels')
        ..add(serializers.serialize(object.labels,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  InlineObject117 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject117Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'labels':
          result.labels.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject117 extends InlineObject117 {
  @override
  final BuiltList<String> labels;

  factory _$InlineObject117([void Function(InlineObject117Builder) updates]) =>
      (new InlineObject117Builder()..update(updates)).build();

  _$InlineObject117._({this.labels}) : super._();

  @override
  InlineObject117 rebuild(void Function(InlineObject117Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject117Builder toBuilder() =>
      new InlineObject117Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject117 && labels == other.labels;
  }

  @override
  int get hashCode {
    return $jf($jc(0, labels.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject117')
          ..add('labels', labels))
        .toString();
  }
}

class InlineObject117Builder
    implements Builder<InlineObject117, InlineObject117Builder> {
  _$InlineObject117 _$v;

  ListBuilder<String> _labels;
  ListBuilder<String> get labels =>
      _$this._labels ??= new ListBuilder<String>();
  set labels(ListBuilder<String> labels) => _$this._labels = labels;

  InlineObject117Builder() {
    InlineObject117._initializeBuilder(this);
  }

  InlineObject117Builder get _$this {
    if (_$v != null) {
      _labels = _$v.labels?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject117 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject117;
  }

  @override
  void update(void Function(InlineObject117Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject117 build() {
    _$InlineObject117 _$result;
    try {
      _$result = _$v ?? new _$InlineObject117._(labels: _labels?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'labels';
        _labels?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject117', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
