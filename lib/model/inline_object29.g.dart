// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object29.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject29> _$inlineObject29Serializer =
    new _$InlineObject29Serializer();

class _$InlineObject29Serializer
    implements StructuredSerializer<InlineObject29> {
  @override
  final Iterable<Type> types = const [InlineObject29, _$InlineObject29];
  @override
  final String wireName = 'InlineObject29';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject29 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.selectedRepositoryIds != null) {
      result
        ..add('selected_repository_ids')
        ..add(serializers.serialize(object.selectedRepositoryIds,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  InlineObject29 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject29Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'selected_repository_ids':
          result.selectedRepositoryIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject29 extends InlineObject29 {
  @override
  final BuiltList<int> selectedRepositoryIds;

  factory _$InlineObject29([void Function(InlineObject29Builder) updates]) =>
      (new InlineObject29Builder()..update(updates)).build();

  _$InlineObject29._({this.selectedRepositoryIds}) : super._();

  @override
  InlineObject29 rebuild(void Function(InlineObject29Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject29Builder toBuilder() =>
      new InlineObject29Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject29 &&
        selectedRepositoryIds == other.selectedRepositoryIds;
  }

  @override
  int get hashCode {
    return $jf($jc(0, selectedRepositoryIds.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject29')
          ..add('selectedRepositoryIds', selectedRepositoryIds))
        .toString();
  }
}

class InlineObject29Builder
    implements Builder<InlineObject29, InlineObject29Builder> {
  _$InlineObject29 _$v;

  ListBuilder<int> _selectedRepositoryIds;
  ListBuilder<int> get selectedRepositoryIds =>
      _$this._selectedRepositoryIds ??= new ListBuilder<int>();
  set selectedRepositoryIds(ListBuilder<int> selectedRepositoryIds) =>
      _$this._selectedRepositoryIds = selectedRepositoryIds;

  InlineObject29Builder() {
    InlineObject29._initializeBuilder(this);
  }

  InlineObject29Builder get _$this {
    if (_$v != null) {
      _selectedRepositoryIds = _$v.selectedRepositoryIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject29 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject29;
  }

  @override
  void update(void Function(InlineObject29Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject29 build() {
    _$InlineObject29 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject29._(
              selectedRepositoryIds: _selectedRepositoryIds?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'selectedRepositoryIds';
        _selectedRepositoryIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject29', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
