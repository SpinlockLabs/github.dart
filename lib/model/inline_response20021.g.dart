// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response20021.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse20021> _$inlineResponse20021Serializer =
    new _$InlineResponse20021Serializer();

class _$InlineResponse20021Serializer
    implements StructuredSerializer<InlineResponse20021> {
  @override
  final Iterable<Type> types = const [
    InlineResponse20021,
    _$InlineResponse20021
  ];
  @override
  final String wireName = 'InlineResponse20021';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InlineResponse20021 object,
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
                BuiltList, const [const FullType(CommitSearchResultItem)])));
    }
    return result;
  }

  @override
  InlineResponse20021 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse20021Builder();

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
              specifiedType: const FullType(BuiltList, const [
                const FullType(CommitSearchResultItem)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse20021 extends InlineResponse20021 {
  @override
  final int totalCount;
  @override
  final bool incompleteResults;
  @override
  final BuiltList<CommitSearchResultItem> items;

  factory _$InlineResponse20021(
          [void Function(InlineResponse20021Builder) updates]) =>
      (new InlineResponse20021Builder()..update(updates)).build();

  _$InlineResponse20021._({this.totalCount, this.incompleteResults, this.items})
      : super._();

  @override
  InlineResponse20021 rebuild(
          void Function(InlineResponse20021Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse20021Builder toBuilder() =>
      new InlineResponse20021Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse20021 &&
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
    return (newBuiltValueToStringHelper('InlineResponse20021')
          ..add('totalCount', totalCount)
          ..add('incompleteResults', incompleteResults)
          ..add('items', items))
        .toString();
  }
}

class InlineResponse20021Builder
    implements Builder<InlineResponse20021, InlineResponse20021Builder> {
  _$InlineResponse20021 _$v;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  bool _incompleteResults;
  bool get incompleteResults => _$this._incompleteResults;
  set incompleteResults(bool incompleteResults) =>
      _$this._incompleteResults = incompleteResults;

  ListBuilder<CommitSearchResultItem> _items;
  ListBuilder<CommitSearchResultItem> get items =>
      _$this._items ??= new ListBuilder<CommitSearchResultItem>();
  set items(ListBuilder<CommitSearchResultItem> items) => _$this._items = items;

  InlineResponse20021Builder() {
    InlineResponse20021._initializeBuilder(this);
  }

  InlineResponse20021Builder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _incompleteResults = _$v.incompleteResults;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse20021 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse20021;
  }

  @override
  void update(void Function(InlineResponse20021Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse20021 build() {
    _$InlineResponse20021 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse20021._(
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
            'InlineResponse20021', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
