// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object150.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject150> _$inlineObject150Serializer =
    new _$InlineObject150Serializer();

class _$InlineObject150Serializer
    implements StructuredSerializer<InlineObject150> {
  @override
  final Iterable<Type> types = const [InlineObject150, _$InlineObject150];
  @override
  final String wireName = 'InlineObject150';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject150 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.names != null) {
      result
        ..add('names')
        ..add(serializers.serialize(object.names,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  InlineObject150 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject150Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'names':
          result.names.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject150 extends InlineObject150 {
  @override
  final BuiltList<String> names;

  factory _$InlineObject150([void Function(InlineObject150Builder) updates]) =>
      (new InlineObject150Builder()..update(updates)).build();

  _$InlineObject150._({this.names}) : super._();

  @override
  InlineObject150 rebuild(void Function(InlineObject150Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject150Builder toBuilder() =>
      new InlineObject150Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject150 && names == other.names;
  }

  @override
  int get hashCode {
    return $jf($jc(0, names.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject150')..add('names', names))
        .toString();
  }
}

class InlineObject150Builder
    implements Builder<InlineObject150, InlineObject150Builder> {
  _$InlineObject150 _$v;

  ListBuilder<String> _names;
  ListBuilder<String> get names => _$this._names ??= new ListBuilder<String>();
  set names(ListBuilder<String> names) => _$this._names = names;

  InlineObject150Builder() {
    InlineObject150._initializeBuilder(this);
  }

  InlineObject150Builder get _$this {
    if (_$v != null) {
      _names = _$v.names?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject150 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject150;
  }

  @override
  void update(void Function(InlineObject150Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject150 build() {
    _$InlineObject150 _$result;
    try {
      _$result = _$v ?? new _$InlineObject150._(names: _names?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'names';
        _names?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject150', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
