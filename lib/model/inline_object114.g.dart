// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object114.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject114> _$inlineObject114Serializer =
    new _$InlineObject114Serializer();

class _$InlineObject114Serializer
    implements StructuredSerializer<InlineObject114> {
  @override
  final Iterable<Type> types = const [InlineObject114, _$InlineObject114];
  @override
  final String wireName = 'InlineObject114';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject114 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.assignees != null) {
      result
        ..add('assignees')
        ..add(serializers.serialize(object.assignees,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  InlineObject114 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject114Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'assignees':
          result.assignees.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject114 extends InlineObject114 {
  @override
  final BuiltList<String> assignees;

  factory _$InlineObject114([void Function(InlineObject114Builder) updates]) =>
      (new InlineObject114Builder()..update(updates)).build();

  _$InlineObject114._({this.assignees}) : super._();

  @override
  InlineObject114 rebuild(void Function(InlineObject114Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject114Builder toBuilder() =>
      new InlineObject114Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject114 && assignees == other.assignees;
  }

  @override
  int get hashCode {
    return $jf($jc(0, assignees.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject114')
          ..add('assignees', assignees))
        .toString();
  }
}

class InlineObject114Builder
    implements Builder<InlineObject114, InlineObject114Builder> {
  _$InlineObject114 _$v;

  ListBuilder<String> _assignees;
  ListBuilder<String> get assignees =>
      _$this._assignees ??= new ListBuilder<String>();
  set assignees(ListBuilder<String> assignees) => _$this._assignees = assignees;

  InlineObject114Builder() {
    InlineObject114._initializeBuilder(this);
  }

  InlineObject114Builder get _$this {
    if (_$v != null) {
      _assignees = _$v.assignees?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject114 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject114;
  }

  @override
  void update(void Function(InlineObject114Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject114 build() {
    _$InlineObject114 _$result;
    try {
      _$result = _$v ?? new _$InlineObject114._(assignees: _assignees?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'assignees';
        _assignees?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject114', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
