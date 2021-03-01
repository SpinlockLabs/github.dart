// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object115.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject115> _$inlineObject115Serializer =
    new _$InlineObject115Serializer();

class _$InlineObject115Serializer
    implements StructuredSerializer<InlineObject115> {
  @override
  final Iterable<Type> types = const [InlineObject115, _$InlineObject115];
  @override
  final String wireName = 'InlineObject115';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject115 object,
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
  InlineObject115 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject115Builder();

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

class _$InlineObject115 extends InlineObject115 {
  @override
  final BuiltList<String> assignees;

  factory _$InlineObject115([void Function(InlineObject115Builder) updates]) =>
      (new InlineObject115Builder()..update(updates)).build();

  _$InlineObject115._({this.assignees}) : super._();

  @override
  InlineObject115 rebuild(void Function(InlineObject115Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject115Builder toBuilder() =>
      new InlineObject115Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject115 && assignees == other.assignees;
  }

  @override
  int get hashCode {
    return $jf($jc(0, assignees.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject115')
          ..add('assignees', assignees))
        .toString();
  }
}

class InlineObject115Builder
    implements Builder<InlineObject115, InlineObject115Builder> {
  _$InlineObject115 _$v;

  ListBuilder<String> _assignees;
  ListBuilder<String> get assignees =>
      _$this._assignees ??= new ListBuilder<String>();
  set assignees(ListBuilder<String> assignees) => _$this._assignees = assignees;

  InlineObject115Builder() {
    InlineObject115._initializeBuilder(this);
  }

  InlineObject115Builder get _$this {
    if (_$v != null) {
      _assignees = _$v.assignees?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject115 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject115;
  }

  @override
  void update(void Function(InlineObject115Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject115 build() {
    _$InlineObject115 _$result;
    try {
      _$result = _$v ?? new _$InlineObject115._(assignees: _assignees?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'assignees';
        _assignees?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject115', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
