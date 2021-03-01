// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object69.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject69> _$inlineObject69Serializer =
    new _$InlineObject69Serializer();

class _$InlineObject69Serializer
    implements StructuredSerializer<InlineObject69> {
  @override
  final Iterable<Type> types = const [InlineObject69, _$InlineObject69];
  @override
  final String wireName = 'InlineObject69';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject69 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.contexts != null) {
      result
        ..add('contexts')
        ..add(serializers.serialize(object.contexts,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  InlineObject69 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject69Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'contexts':
          result.contexts.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject69 extends InlineObject69 {
  @override
  final BuiltList<String> contexts;

  factory _$InlineObject69([void Function(InlineObject69Builder) updates]) =>
      (new InlineObject69Builder()..update(updates)).build();

  _$InlineObject69._({this.contexts}) : super._();

  @override
  InlineObject69 rebuild(void Function(InlineObject69Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject69Builder toBuilder() =>
      new InlineObject69Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject69 && contexts == other.contexts;
  }

  @override
  int get hashCode {
    return $jf($jc(0, contexts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject69')
          ..add('contexts', contexts))
        .toString();
  }
}

class InlineObject69Builder
    implements Builder<InlineObject69, InlineObject69Builder> {
  _$InlineObject69 _$v;

  ListBuilder<String> _contexts;
  ListBuilder<String> get contexts =>
      _$this._contexts ??= new ListBuilder<String>();
  set contexts(ListBuilder<String> contexts) => _$this._contexts = contexts;

  InlineObject69Builder() {
    InlineObject69._initializeBuilder(this);
  }

  InlineObject69Builder get _$this {
    if (_$v != null) {
      _contexts = _$v.contexts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject69 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject69;
  }

  @override
  void update(void Function(InlineObject69Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject69 build() {
    _$InlineObject69 _$result;
    try {
      _$result = _$v ?? new _$InlineObject69._(contexts: _contexts?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contexts';
        _contexts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject69', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
