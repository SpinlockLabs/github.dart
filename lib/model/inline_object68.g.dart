// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object68.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject68> _$inlineObject68Serializer =
    new _$InlineObject68Serializer();

class _$InlineObject68Serializer
    implements StructuredSerializer<InlineObject68> {
  @override
  final Iterable<Type> types = const [InlineObject68, _$InlineObject68];
  @override
  final String wireName = 'InlineObject68';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject68 object,
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
  InlineObject68 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject68Builder();

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

class _$InlineObject68 extends InlineObject68 {
  @override
  final BuiltList<String> contexts;

  factory _$InlineObject68([void Function(InlineObject68Builder) updates]) =>
      (new InlineObject68Builder()..update(updates)).build();

  _$InlineObject68._({this.contexts}) : super._();

  @override
  InlineObject68 rebuild(void Function(InlineObject68Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject68Builder toBuilder() =>
      new InlineObject68Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject68 && contexts == other.contexts;
  }

  @override
  int get hashCode {
    return $jf($jc(0, contexts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject68')
          ..add('contexts', contexts))
        .toString();
  }
}

class InlineObject68Builder
    implements Builder<InlineObject68, InlineObject68Builder> {
  _$InlineObject68 _$v;

  ListBuilder<String> _contexts;
  ListBuilder<String> get contexts =>
      _$this._contexts ??= new ListBuilder<String>();
  set contexts(ListBuilder<String> contexts) => _$this._contexts = contexts;

  InlineObject68Builder() {
    InlineObject68._initializeBuilder(this);
  }

  InlineObject68Builder get _$this {
    if (_$v != null) {
      _contexts = _$v.contexts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject68 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject68;
  }

  @override
  void update(void Function(InlineObject68Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject68 build() {
    _$InlineObject68 _$result;
    try {
      _$result = _$v ?? new _$InlineObject68._(contexts: _contexts?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contexts';
        _contexts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject68', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
