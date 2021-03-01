// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object118.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject118> _$inlineObject118Serializer =
    new _$InlineObject118Serializer();

class _$InlineObject118Serializer
    implements StructuredSerializer<InlineObject118> {
  @override
  final Iterable<Type> types = const [InlineObject118, _$InlineObject118];
  @override
  final String wireName = 'InlineObject118';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject118 object,
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
  InlineObject118 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject118Builder();

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

class _$InlineObject118 extends InlineObject118 {
  @override
  final BuiltList<String> labels;

  factory _$InlineObject118([void Function(InlineObject118Builder) updates]) =>
      (new InlineObject118Builder()..update(updates)).build();

  _$InlineObject118._({this.labels}) : super._();

  @override
  InlineObject118 rebuild(void Function(InlineObject118Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject118Builder toBuilder() =>
      new InlineObject118Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject118 && labels == other.labels;
  }

  @override
  int get hashCode {
    return $jf($jc(0, labels.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject118')
          ..add('labels', labels))
        .toString();
  }
}

class InlineObject118Builder
    implements Builder<InlineObject118, InlineObject118Builder> {
  _$InlineObject118 _$v;

  ListBuilder<String> _labels;
  ListBuilder<String> get labels =>
      _$this._labels ??= new ListBuilder<String>();
  set labels(ListBuilder<String> labels) => _$this._labels = labels;

  InlineObject118Builder() {
    InlineObject118._initializeBuilder(this);
  }

  InlineObject118Builder get _$this {
    if (_$v != null) {
      _labels = _$v.labels?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject118 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject118;
  }

  @override
  void update(void Function(InlineObject118Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject118 build() {
    _$InlineObject118 _$result;
    try {
      _$result = _$v ?? new _$InlineObject118._(labels: _labels?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'labels';
        _labels?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject118', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
