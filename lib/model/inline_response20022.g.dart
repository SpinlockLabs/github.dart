// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response20022.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse20022> _$inlineResponse20022Serializer =
    new _$InlineResponse20022Serializer();

class _$InlineResponse20022Serializer
    implements StructuredSerializer<InlineResponse20022> {
  @override
  final Iterable<Type> types = const [
    InlineResponse20022,
    _$InlineResponse20022
  ];
  @override
  final String wireName = 'InlineResponse20022';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InlineResponse20022 object,
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
                BuiltList, const [const FullType(IssueSearchResultItem)])));
    }
    return result;
  }

  @override
  InlineResponse20022 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse20022Builder();

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
                      BuiltList, const [const FullType(IssueSearchResultItem)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse20022 extends InlineResponse20022 {
  @override
  final int totalCount;
  @override
  final bool incompleteResults;
  @override
  final BuiltList<IssueSearchResultItem> items;

  factory _$InlineResponse20022(
          [void Function(InlineResponse20022Builder) updates]) =>
      (new InlineResponse20022Builder()..update(updates)).build();

  _$InlineResponse20022._({this.totalCount, this.incompleteResults, this.items})
      : super._();

  @override
  InlineResponse20022 rebuild(
          void Function(InlineResponse20022Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse20022Builder toBuilder() =>
      new InlineResponse20022Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse20022 &&
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
    return (newBuiltValueToStringHelper('InlineResponse20022')
          ..add('totalCount', totalCount)
          ..add('incompleteResults', incompleteResults)
          ..add('items', items))
        .toString();
  }
}

class InlineResponse20022Builder
    implements Builder<InlineResponse20022, InlineResponse20022Builder> {
  _$InlineResponse20022 _$v;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  bool _incompleteResults;
  bool get incompleteResults => _$this._incompleteResults;
  set incompleteResults(bool incompleteResults) =>
      _$this._incompleteResults = incompleteResults;

  ListBuilder<IssueSearchResultItem> _items;
  ListBuilder<IssueSearchResultItem> get items =>
      _$this._items ??= new ListBuilder<IssueSearchResultItem>();
  set items(ListBuilder<IssueSearchResultItem> items) => _$this._items = items;

  InlineResponse20022Builder() {
    InlineResponse20022._initializeBuilder(this);
  }

  InlineResponse20022Builder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _incompleteResults = _$v.incompleteResults;
      _items = _$v.items?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse20022 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse20022;
  }

  @override
  void update(void Function(InlineResponse20022Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse20022 build() {
    _$InlineResponse20022 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse20022._(
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
            'InlineResponse20022', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
