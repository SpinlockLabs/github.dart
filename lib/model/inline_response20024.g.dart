// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response20024.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse20024> _$inlineResponse20024Serializer =
    new _$InlineResponse20024Serializer();

class _$InlineResponse20024Serializer
    implements StructuredSerializer<InlineResponse20024> {
  @override
  final Iterable<Type> types = const [
    InlineResponse20024,
    _$InlineResponse20024
  ];
  @override
  final String wireName = 'InlineResponse20024';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InlineResponse20024 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(int)));
    }
    if (object.incompleteResults != null) {
      result
        ..add('incomplete_results')
        ..add(serializers.serialize(object.incompleteResults,
            specifiedType: const FullType(bool)));
    }
    if (object.items != null) {
      result
        ..add('items')
        ..add(serializers.serialize(object.items,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RepoSearchResultItem)])));
    }
    return result;
  }

  @override
  InlineResponse20024 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse20024Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total_count':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'incomplete_results':
          result.incompleteResults = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'items':
          result.items.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RepoSearchResultItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse20024 extends InlineResponse20024 {
  @override
  final int totalCount;
  @override
  final bool incompleteResults;
  @override
  final BuiltList<RepoSearchResultItem> items;

  factory _$InlineResponse20024(
          [void Function(InlineResponse20024Builder) updates]) =>
      (new InlineResponse20024Builder()..update(updates)).build();

  _$InlineResponse20024._({this.totalCount, this.incompleteResults, this.items})
      : super._();

  @override
  InlineResponse20024 rebuild(
          void Function(InlineResponse20024Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse20024Builder toBuilder() =>
      new InlineResponse20024Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse20024 &&
        totalCount == other.totalCount &&
        incompleteResults == other.incompleteResults &&
        items == other.items;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, totalCount.hashCode), incompleteResults.hashCode),
        items.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse20024')
          ..add('totalCount', totalCount)
          ..add('incompleteResults', incompleteResults)
          ..add('items', items))
        .toString();
  }
}

class InlineResponse20024Builder
    implements Builder<InlineResponse20024, InlineResponse20024Builder> {
  _$InlineResponse20024 _$v;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  bool _incompleteResults;
  bool get incompleteResults => _$this._incompleteResults;
  set incompleteResults(bool incompleteResults) =>
      _$this._incompleteResults = incompleteResults;

  ListBuilder<RepoSearchResultItem> _items;
  ListBuilder<RepoSearchResultItem> get items =>
      _$this._items ??= new ListBuilder<RepoSearchResultItem>();
  set items(ListBuilder<RepoSearchResultItem> items) => _$this._items = items;

  InlineResponse20024Builder() {
    InlineResponse20024._initializeBuilder(this);
  }

  InlineResponse20024Builder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _incompleteResults = _$v.incompleteResults;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse20024 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse20024;
  }

  @override
  void update(void Function(InlineResponse20024Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse20024 build() {
    _$InlineResponse20024 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse20024._(
              totalCount: totalCount,
              incompleteResults: incompleteResults,
              items: _items?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'items';
        _items?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse20024', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
