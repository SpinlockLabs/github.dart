// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'marketplace_purchase_marketplace_pending_change.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MarketplacePurchaseMarketplacePendingChange>
    _$marketplacePurchaseMarketplacePendingChangeSerializer =
    new _$MarketplacePurchaseMarketplacePendingChangeSerializer();

class _$MarketplacePurchaseMarketplacePendingChangeSerializer
    implements
        StructuredSerializer<MarketplacePurchaseMarketplacePendingChange> {
  @override
  final Iterable<Type> types = const [
    MarketplacePurchaseMarketplacePendingChange,
    _$MarketplacePurchaseMarketplacePendingChange
  ];
  @override
  final String wireName = 'MarketplacePurchaseMarketplacePendingChange';

  @override
  Iterable<Object> serialize(Serializers serializers,
      MarketplacePurchaseMarketplacePendingChange object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.isInstalled != null) {
      result
        ..add('is_installed')
        ..add(serializers.serialize(object.isInstalled,
            specifiedType: const FullType(bool)));
    }
    if (object.effectiveDate != null) {
      result
        ..add('effective_date')
        ..add(serializers.serialize(object.effectiveDate,
            specifiedType: const FullType(String)));
    }
    if (object.unitCount != null) {
      result
        ..add('unit_count')
        ..add(serializers.serialize(object.unitCount,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.plan != null) {
      result
        ..add('plan')
        ..add(serializers.serialize(object.plan,
            specifiedType: const FullType(MarketplaceListingPlan)));
    }
    return result;
  }

  @override
  MarketplacePurchaseMarketplacePendingChange deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MarketplacePurchaseMarketplacePendingChangeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'is_installed':
          result.isInstalled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'effective_date':
          result.effectiveDate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'unit_count':
          result.unitCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'plan':
          result.plan.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MarketplaceListingPlan))
              as MarketplaceListingPlan);
          break;
      }
    }

    return result.build();
  }
}

class _$MarketplacePurchaseMarketplacePendingChange
    extends MarketplacePurchaseMarketplacePendingChange {
  @override
  final bool isInstalled;
  @override
  final String effectiveDate;
  @override
  final int unitCount;
  @override
  final int id;
  @override
  final MarketplaceListingPlan plan;

  factory _$MarketplacePurchaseMarketplacePendingChange(
          [void Function(MarketplacePurchaseMarketplacePendingChangeBuilder)
              updates]) =>
      (new MarketplacePurchaseMarketplacePendingChangeBuilder()
            ..update(updates))
          .build();

  _$MarketplacePurchaseMarketplacePendingChange._(
      {this.isInstalled,
      this.effectiveDate,
      this.unitCount,
      this.id,
      this.plan})
      : super._();

  @override
  MarketplacePurchaseMarketplacePendingChange rebuild(
          void Function(MarketplacePurchaseMarketplacePendingChangeBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MarketplacePurchaseMarketplacePendingChangeBuilder toBuilder() =>
      new MarketplacePurchaseMarketplacePendingChangeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MarketplacePurchaseMarketplacePendingChange &&
        isInstalled == other.isInstalled &&
        effectiveDate == other.effectiveDate &&
        unitCount == other.unitCount &&
        id == other.id &&
        plan == other.plan;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, isInstalled.hashCode), effectiveDate.hashCode),
                unitCount.hashCode),
            id.hashCode),
        plan.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'MarketplacePurchaseMarketplacePendingChange')
          ..add('isInstalled', isInstalled)
          ..add('effectiveDate', effectiveDate)
          ..add('unitCount', unitCount)
          ..add('id', id)
          ..add('plan', plan))
        .toString();
  }
}

class MarketplacePurchaseMarketplacePendingChangeBuilder
    implements
        Builder<MarketplacePurchaseMarketplacePendingChange,
            MarketplacePurchaseMarketplacePendingChangeBuilder> {
  _$MarketplacePurchaseMarketplacePendingChange _$v;

  bool _isInstalled;
  bool get isInstalled => _$this._isInstalled;
  set isInstalled(bool isInstalled) => _$this._isInstalled = isInstalled;

  String _effectiveDate;
  String get effectiveDate => _$this._effectiveDate;
  set effectiveDate(String effectiveDate) =>
      _$this._effectiveDate = effectiveDate;

  int _unitCount;
  int get unitCount => _$this._unitCount;
  set unitCount(int unitCount) => _$this._unitCount = unitCount;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  MarketplaceListingPlanBuilder _plan;
  MarketplaceListingPlanBuilder get plan =>
      _$this._plan ??= new MarketplaceListingPlanBuilder();
  set plan(MarketplaceListingPlanBuilder plan) => _$this._plan = plan;

  MarketplacePurchaseMarketplacePendingChangeBuilder() {
    MarketplacePurchaseMarketplacePendingChange._initializeBuilder(this);
  }

  MarketplacePurchaseMarketplacePendingChangeBuilder get _$this {
    if (_$v != null) {
      _isInstalled = _$v.isInstalled;
      _effectiveDate = _$v.effectiveDate;
      _unitCount = _$v.unitCount;
      _id = _$v.id;
      _plan = _$v.plan?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MarketplacePurchaseMarketplacePendingChange other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MarketplacePurchaseMarketplacePendingChange;
  }

  @override
  void update(
      void Function(MarketplacePurchaseMarketplacePendingChangeBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MarketplacePurchaseMarketplacePendingChange build() {
    _$MarketplacePurchaseMarketplacePendingChange _$result;
    try {
      _$result = _$v ??
          new _$MarketplacePurchaseMarketplacePendingChange._(
              isInstalled: isInstalled,
              effectiveDate: effectiveDate,
              unitCount: unitCount,
              id: id,
              plan: _plan?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'plan';
        _plan?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MarketplacePurchaseMarketplacePendingChange',
            _$failedField,
            e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
