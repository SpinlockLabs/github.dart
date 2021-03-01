// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object70.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject70> _$inlineObject70Serializer =
    new _$InlineObject70Serializer();

class _$InlineObject70Serializer
    implements StructuredSerializer<InlineObject70> {
  @override
  final Iterable<Type> types = const [InlineObject70, _$InlineObject70];
  @override
  final String wireName = 'InlineObject70';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject70 object,
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
  InlineObject70 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject70Builder();

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

class _$InlineObject70 extends InlineObject70 {
  @override
  final BuiltList<String> contexts;

  factory _$InlineObject70([void Function(InlineObject70Builder) updates]) =>
      (new InlineObject70Builder()..update(updates)).build();

  _$InlineObject70._({this.contexts}) : super._();

  @override
  InlineObject70 rebuild(void Function(InlineObject70Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject70Builder toBuilder() =>
      new InlineObject70Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject70 && contexts == other.contexts;
  }

  @override
  int get hashCode {
    return $jf($jc(0, contexts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject70')
          ..add('contexts', contexts))
        .toString();
  }
}

class InlineObject70Builder
    implements Builder<InlineObject70, InlineObject70Builder> {
  _$InlineObject70 _$v;

  ListBuilder<String> _contexts;
  ListBuilder<String> get contexts =>
      _$this._contexts ??= new ListBuilder<String>();
  set contexts(ListBuilder<String> contexts) => _$this._contexts = contexts;

  InlineObject70Builder() {
    InlineObject70._initializeBuilder(this);
  }

  InlineObject70Builder get _$this {
    if (_$v != null) {
      _contexts = _$v.contexts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject70 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject70;
  }

  @override
  void update(void Function(InlineObject70Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject70 build() {
    _$InlineObject70 _$result;
    try {
      _$result = _$v ?? new _$InlineObject70._(contexts: _contexts?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contexts';
        _contexts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject70', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
