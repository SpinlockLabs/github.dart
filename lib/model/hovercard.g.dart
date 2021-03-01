// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'hovercard.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Hovercard> _$hovercardSerializer = new _$HovercardSerializer();

class _$HovercardSerializer implements StructuredSerializer<Hovercard> {
  @override
  final Iterable<Type> types = const [Hovercard, _$Hovercard];
  @override
  final String wireName = 'Hovercard';

  @override
  Iterable<Object> serialize(Serializers serializers, Hovercard object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.contexts != null) {
      result
        ..add('contexts')
        ..add(serializers.serialize(object.contexts,
            specifiedType: const FullType(
                BuiltList, const [const FullType(HovercardContexts)])));
    }
    return result;
  }

  @override
  Hovercard deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HovercardBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'contexts':
          result.contexts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(HovercardContexts)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Hovercard extends Hovercard {
  @override
  final BuiltList<HovercardContexts> contexts;

  factory _$Hovercard([void Function(HovercardBuilder) updates]) =>
      (new HovercardBuilder()..update(updates)).build();

  _$Hovercard._({this.contexts}) : super._();

  @override
  Hovercard rebuild(void Function(HovercardBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HovercardBuilder toBuilder() => new HovercardBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Hovercard && contexts == other.contexts;
  }

  @override
  int get hashCode {
    return $jf($jc(0, contexts.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Hovercard')..add('contexts', contexts))
        .toString();
  }
}

class HovercardBuilder implements Builder<Hovercard, HovercardBuilder> {
  _$Hovercard _$v;

  ListBuilder<HovercardContexts> _contexts;
  ListBuilder<HovercardContexts> get contexts =>
      _$this._contexts ??= new ListBuilder<HovercardContexts>();
  set contexts(ListBuilder<HovercardContexts> contexts) =>
      _$this._contexts = contexts;

  HovercardBuilder() {
    Hovercard._initializeBuilder(this);
  }

  HovercardBuilder get _$this {
    if (_$v != null) {
      _contexts = _$v.contexts?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Hovercard other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Hovercard;
  }

  @override
  void update(void Function(HovercardBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Hovercard build() {
    _$Hovercard _$result;
    try {
      _$result = _$v ?? new _$Hovercard._(contexts: _contexts?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'contexts';
        _contexts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Hovercard', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
