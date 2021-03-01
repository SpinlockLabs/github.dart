// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object13.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject13> _$inlineObject13Serializer =
    new _$InlineObject13Serializer();

class _$InlineObject13Serializer
    implements StructuredSerializer<InlineObject13> {
  @override
  final Iterable<Type> types = const [InlineObject13, _$InlineObject13];
  @override
  final String wireName = 'InlineObject13';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject13 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.selectedOrganizationIds != null) {
      result
        ..add('selected_organization_ids')
        ..add(serializers.serialize(object.selectedOrganizationIds,
            specifiedType:
                const FullType(BuiltList, const [const FullType(int)])));
    }
    return result;
  }

  @override
  InlineObject13 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject13Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'selected_organization_ids':
          result.selectedOrganizationIds.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(int)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject13 extends InlineObject13 {
  @override
  final BuiltList<int> selectedOrganizationIds;

  factory _$InlineObject13([void Function(InlineObject13Builder) updates]) =>
      (new InlineObject13Builder()..update(updates)).build();

  _$InlineObject13._({this.selectedOrganizationIds}) : super._();

  @override
  InlineObject13 rebuild(void Function(InlineObject13Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject13Builder toBuilder() =>
      new InlineObject13Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject13 &&
        selectedOrganizationIds == other.selectedOrganizationIds;
  }

  @override
  int get hashCode {
    return $jf($jc(0, selectedOrganizationIds.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject13')
          ..add('selectedOrganizationIds', selectedOrganizationIds))
        .toString();
  }
}

class InlineObject13Builder
    implements Builder<InlineObject13, InlineObject13Builder> {
  _$InlineObject13 _$v;

  ListBuilder<int> _selectedOrganizationIds;
  ListBuilder<int> get selectedOrganizationIds =>
      _$this._selectedOrganizationIds ??= new ListBuilder<int>();
  set selectedOrganizationIds(ListBuilder<int> selectedOrganizationIds) =>
      _$this._selectedOrganizationIds = selectedOrganizationIds;

  InlineObject13Builder() {
    InlineObject13._initializeBuilder(this);
  }

  InlineObject13Builder get _$this {
    if (_$v != null) {
      _selectedOrganizationIds = _$v.selectedOrganizationIds?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject13 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject13;
  }

  @override
  void update(void Function(InlineObject13Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject13 build() {
    _$InlineObject13 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject13._(
              selectedOrganizationIds: _selectedOrganizationIds?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'selectedOrganizationIds';
        _selectedOrganizationIds?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject13', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
