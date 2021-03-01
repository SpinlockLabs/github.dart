// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'marketplace_listing_plan.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MarketplaceListingPlan> _$marketplaceListingPlanSerializer =
    new _$MarketplaceListingPlanSerializer();

class _$MarketplaceListingPlanSerializer
    implements StructuredSerializer<MarketplaceListingPlan> {
  @override
  final Iterable<Type> types = const [
    MarketplaceListingPlan,
    _$MarketplaceListingPlan
  ];
  @override
  final String wireName = 'MarketplaceListingPlan';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MarketplaceListingPlan object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.accountsUrl != null) {
      result
        ..add('accounts_url')
        ..add(serializers.serialize(object.accountsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.monthlyPriceInCents != null) {
      result
        ..add('monthly_price_in_cents')
        ..add(serializers.serialize(object.monthlyPriceInCents,
            specifiedType: const FullType(int)));
    }
    if (object.yearlyPriceInCents != null) {
      result
        ..add('yearly_price_in_cents')
        ..add(serializers.serialize(object.yearlyPriceInCents,
            specifiedType: const FullType(int)));
    }
    if (object.priceModel != null) {
      result
        ..add('price_model')
        ..add(serializers.serialize(object.priceModel,
            specifiedType: const FullType(String)));
    }
    if (object.hasFreeTrial != null) {
      result
        ..add('has_free_trial')
        ..add(serializers.serialize(object.hasFreeTrial,
            specifiedType: const FullType(bool)));
    }
    if (object.unitName != null) {
      result
        ..add('unit_name')
        ..add(serializers.serialize(object.unitName,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.bullets != null) {
      result
        ..add('bullets')
        ..add(serializers.serialize(object.bullets,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  MarketplaceListingPlan deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MarketplaceListingPlanBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'accounts_url':
          result.accountsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'monthly_price_in_cents':
          result.monthlyPriceInCents = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'yearly_price_in_cents':
          result.yearlyPriceInCents = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'price_model':
          result.priceModel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_free_trial':
          result.hasFreeTrial = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'unit_name':
          result.unitName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'bullets':
          result.bullets.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$MarketplaceListingPlan extends MarketplaceListingPlan {
  @override
  final String url;
  @override
  final String accountsUrl;
  @override
  final int id;
  @override
  final int number;
  @override
  final String name;
  @override
  final String description;
  @override
  final int monthlyPriceInCents;
  @override
  final int yearlyPriceInCents;
  @override
  final String priceModel;
  @override
  final bool hasFreeTrial;
  @override
  final String unitName;
  @override
  final String state;
  @override
  final BuiltList<String> bullets;

  factory _$MarketplaceListingPlan(
          [void Function(MarketplaceListingPlanBuilder) updates]) =>
      (new MarketplaceListingPlanBuilder()..update(updates)).build();

  _$MarketplaceListingPlan._(
      {this.url,
      this.accountsUrl,
      this.id,
      this.number,
      this.name,
      this.description,
      this.monthlyPriceInCents,
      this.yearlyPriceInCents,
      this.priceModel,
      this.hasFreeTrial,
      this.unitName,
      this.state,
      this.bullets})
      : super._();

  @override
  MarketplaceListingPlan rebuild(
          void Function(MarketplaceListingPlanBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MarketplaceListingPlanBuilder toBuilder() =>
      new MarketplaceListingPlanBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MarketplaceListingPlan &&
        url == other.url &&
        accountsUrl == other.accountsUrl &&
        id == other.id &&
        number == other.number &&
        name == other.name &&
        description == other.description &&
        monthlyPriceInCents == other.monthlyPriceInCents &&
        yearlyPriceInCents == other.yearlyPriceInCents &&
        priceModel == other.priceModel &&
        hasFreeTrial == other.hasFreeTrial &&
        unitName == other.unitName &&
        state == other.state &&
        bullets == other.bullets;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, url.hashCode),
                                                    accountsUrl.hashCode),
                                                id.hashCode),
                                            number.hashCode),
                                        name.hashCode),
                                    description.hashCode),
                                monthlyPriceInCents.hashCode),
                            yearlyPriceInCents.hashCode),
                        priceModel.hashCode),
                    hasFreeTrial.hashCode),
                unitName.hashCode),
            state.hashCode),
        bullets.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MarketplaceListingPlan')
          ..add('url', url)
          ..add('accountsUrl', accountsUrl)
          ..add('id', id)
          ..add('number', number)
          ..add('name', name)
          ..add('description', description)
          ..add('monthlyPriceInCents', monthlyPriceInCents)
          ..add('yearlyPriceInCents', yearlyPriceInCents)
          ..add('priceModel', priceModel)
          ..add('hasFreeTrial', hasFreeTrial)
          ..add('unitName', unitName)
          ..add('state', state)
          ..add('bullets', bullets))
        .toString();
  }
}

class MarketplaceListingPlanBuilder
    implements Builder<MarketplaceListingPlan, MarketplaceListingPlanBuilder> {
  _$MarketplaceListingPlan _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _accountsUrl;
  String get accountsUrl => _$this._accountsUrl;
  set accountsUrl(String accountsUrl) => _$this._accountsUrl = accountsUrl;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  int _monthlyPriceInCents;
  int get monthlyPriceInCents => _$this._monthlyPriceInCents;
  set monthlyPriceInCents(int monthlyPriceInCents) =>
      _$this._monthlyPriceInCents = monthlyPriceInCents;

  int _yearlyPriceInCents;
  int get yearlyPriceInCents => _$this._yearlyPriceInCents;
  set yearlyPriceInCents(int yearlyPriceInCents) =>
      _$this._yearlyPriceInCents = yearlyPriceInCents;

  String _priceModel;
  String get priceModel => _$this._priceModel;
  set priceModel(String priceModel) => _$this._priceModel = priceModel;

  bool _hasFreeTrial;
  bool get hasFreeTrial => _$this._hasFreeTrial;
  set hasFreeTrial(bool hasFreeTrial) => _$this._hasFreeTrial = hasFreeTrial;

  String _unitName;
  String get unitName => _$this._unitName;
  set unitName(String unitName) => _$this._unitName = unitName;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  ListBuilder<String> _bullets;
  ListBuilder<String> get bullets =>
      _$this._bullets ??= new ListBuilder<String>();
  set bullets(ListBuilder<String> bullets) => _$this._bullets = bullets;

  MarketplaceListingPlanBuilder() {
    MarketplaceListingPlan._initializeBuilder(this);
  }

  MarketplaceListingPlanBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _accountsUrl = _$v.accountsUrl;
      _id = _$v.id;
      _number = _$v.number;
      _name = _$v.name;
      _description = _$v.description;
      _monthlyPriceInCents = _$v.monthlyPriceInCents;
      _yearlyPriceInCents = _$v.yearlyPriceInCents;
      _priceModel = _$v.priceModel;
      _hasFreeTrial = _$v.hasFreeTrial;
      _unitName = _$v.unitName;
      _state = _$v.state;
      _bullets = _$v.bullets?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MarketplaceListingPlan other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MarketplaceListingPlan;
  }

  @override
  void update(void Function(MarketplaceListingPlanBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MarketplaceListingPlan build() {
    _$MarketplaceListingPlan _$result;
    try {
      _$result = _$v ??
          new _$MarketplaceListingPlan._(
              url: url,
              accountsUrl: accountsUrl,
              id: id,
              number: number,
              name: name,
              description: description,
              monthlyPriceInCents: monthlyPriceInCents,
              yearlyPriceInCents: yearlyPriceInCents,
              priceModel: priceModel,
              hasFreeTrial: hasFreeTrial,
              unitName: unitName,
              state: state,
              bullets: _bullets?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'bullets';
        _bullets?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MarketplaceListingPlan', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
