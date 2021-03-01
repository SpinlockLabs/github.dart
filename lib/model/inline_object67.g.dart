// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object67.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject67> _$inlineObject67Serializer =
    new _$InlineObject67Serializer();

class _$InlineObject67Serializer
    implements StructuredSerializer<InlineObject67> {
  @override
  final Iterable<Type> types = const [InlineObject67, _$InlineObject67];
  @override
  final String wireName = 'InlineObject67';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject67 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.strict != null) {
      result
        ..add('strict')
        ..add(serializers.serialize(object.strict,
            specifiedType: const FullType(bool)));
    }
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
  InlineObject67 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject67Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'strict':
          result.strict = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
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

class _$InlineObject67 extends InlineObject67 {
  @override
  final bool strict;
  @override
  final BuiltList<String> contexts;

  factory _$InlineObject67([void Function(InlineObject67Builder) updates]) =>
      (new InlineObject67Builder()..update(updates)).build();

  _$InlineObject67._({this.strict, this.contexts}) : super._();

  @override
  InlineObject67 rebuild(void Function(InlineObject67Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject67Builder toBuilder() =>
      new InlineObject67Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject67 &&
        strict == other.strict &&
        contexts == other.contexts;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, strict.hashCode), contexts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject67')
          ..add('strict', strict)
          ..add('contexts', contexts))
        .toString();
  }
}

class InlineObject67Builder
    implements Builder<InlineObject67, InlineObject67Builder> {
  _$InlineObject67 _$v;

  bool _strict;
  bool get strict => _$this._strict;
  set strict(bool strict) => _$this._strict = strict;

  ListBuilder<String> _contexts;
  ListBuilder<String> get contexts =>
      _$this._contexts ??= new ListBuilder<String>();
  set contexts(ListBuilder<String> contexts) => _$this._contexts = contexts;

  InlineObject67Builder() {
    InlineObject67._initializeBuilder(this);
  }

  InlineObject67Builder get _$this {
    if (_$v != null) {
      _strict = _$v.strict;
      _contexts = _$v.contexts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject67 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject67;
  }

  @override
  void update(void Function(InlineObject67Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject67 build() {
    _$InlineObject67 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject67._(strict: strict, contexts: _contexts?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contexts';
        _contexts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject67', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
