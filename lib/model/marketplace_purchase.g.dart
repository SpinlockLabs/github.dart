// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'marketplace_purchase.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MarketplacePurchase> _$marketplacePurchaseSerializer =
    new _$MarketplacePurchaseSerializer();

class _$MarketplacePurchaseSerializer
    implements StructuredSerializer<MarketplacePurchase> {
  @override
  final Iterable<Type> types = const [
    MarketplacePurchase,
    _$MarketplacePurchase
  ];
  @override
  final String wireName = 'MarketplacePurchase';

  @override
  Iterable<Object> serialize(
      Serializers serializers, MarketplacePurchase object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.login != null) {
      result
        ..add('login')
        ..add(serializers.serialize(object.login,
            specifiedType: const FullType(String)));
    }
    if (object.organizationBillingEmail != null) {
      result
        ..add('organization_billing_email')
        ..add(serializers.serialize(object.organizationBillingEmail,
            specifiedType: const FullType(String)));
    }
    if (object.marketplacePendingChange != null) {
      result
        ..add('marketplace_pending_change')
        ..add(serializers.serialize(object.marketplacePendingChange,
            specifiedType:
                const FullType(MarketplacePurchaseMarketplacePendingChange)));
    }
    if (object.marketplacePurchase != null) {
      result
        ..add('marketplace_purchase')
        ..add(serializers.serialize(object.marketplacePurchase,
            specifiedType:
                const FullType(MarketplacePurchaseMarketplacePurchase)));
    }
    return result;
  }

  @override
  MarketplacePurchase deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MarketplacePurchaseBuilder();

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
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organization_billing_email':
          result.organizationBillingEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'marketplace_pending_change':
          result.marketplacePendingChange.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      MarketplacePurchaseMarketplacePendingChange))
              as MarketplacePurchaseMarketplacePendingChange);
          break;
        case 'marketplace_purchase':
          result.marketplacePurchase.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(MarketplacePurchaseMarketplacePurchase))
              as MarketplacePurchaseMarketplacePurchase);
          break;
      }
    }

    return result.build();
  }
}

class _$MarketplacePurchase extends MarketplacePurchase {
  @override
  final String url;
  @override
  final String type;
  @override
  final int id;
  @override
  final String login;
  @override
  final String organizationBillingEmail;
  @override
  final MarketplacePurchaseMarketplacePendingChange marketplacePendingChange;
  @override
  final MarketplacePurchaseMarketplacePurchase marketplacePurchase;

  factory _$MarketplacePurchase(
          [void Function(MarketplacePurchaseBuilder) updates]) =>
      (new MarketplacePurchaseBuilder()..update(updates)).build();

  _$MarketplacePurchase._(
      {this.url,
      this.type,
      this.id,
      this.login,
      this.organizationBillingEmail,
      this.marketplacePendingChange,
      this.marketplacePurchase})
      : super._();

  @override
  MarketplacePurchase rebuild(
          void Function(MarketplacePurchaseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MarketplacePurchaseBuilder toBuilder() =>
      new MarketplacePurchaseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MarketplacePurchase &&
        url == other.url &&
        type == other.type &&
        id == other.id &&
        login == other.login &&
        organizationBillingEmail == other.organizationBillingEmail &&
        marketplacePendingChange == other.marketplacePendingChange &&
        marketplacePurchase == other.marketplacePurchase;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, url.hashCode), type.hashCode), id.hashCode),
                    login.hashCode),
                organizationBillingEmail.hashCode),
            marketplacePendingChange.hashCode),
        marketplacePurchase.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MarketplacePurchase')
          ..add('url', url)
          ..add('type', type)
          ..add('id', id)
          ..add('login', login)
          ..add('organizationBillingEmail', organizationBillingEmail)
          ..add('marketplacePendingChange', marketplacePendingChange)
          ..add('marketplacePurchase', marketplacePurchase))
        .toString();
  }
}

class MarketplacePurchaseBuilder
    implements Builder<MarketplacePurchase, MarketplacePurchaseBuilder> {
  _$MarketplacePurchase _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _login;
  String get login => _$this._login;
  set login(String login) => _$this._login = login;

  String _organizationBillingEmail;
  String get organizationBillingEmail => _$this._organizationBillingEmail;
  set organizationBillingEmail(String organizationBillingEmail) =>
      _$this._organizationBillingEmail = organizationBillingEmail;

  MarketplacePurchaseMarketplacePendingChangeBuilder _marketplacePendingChange;
  MarketplacePurchaseMarketplacePendingChangeBuilder
      get marketplacePendingChange => _$this._marketplacePendingChange ??=
          new MarketplacePurchaseMarketplacePendingChangeBuilder();
  set marketplacePendingChange(
          MarketplacePurchaseMarketplacePendingChangeBuilder
              marketplacePendingChange) =>
      _$this._marketplacePendingChange = marketplacePendingChange;

  MarketplacePurchaseMarketplacePurchaseBuilder _marketplacePurchase;
  MarketplacePurchaseMarketplacePurchaseBuilder get marketplacePurchase =>
      _$this._marketplacePurchase ??=
          new MarketplacePurchaseMarketplacePurchaseBuilder();
  set marketplacePurchase(
          MarketplacePurchaseMarketplacePurchaseBuilder marketplacePurchase) =>
      _$this._marketplacePurchase = marketplacePurchase;

  MarketplacePurchaseBuilder() {
    MarketplacePurchase._initializeBuilder(this);
  }

  MarketplacePurchaseBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _type = _$v.type;
      _id = _$v.id;
      _login = _$v.login;
      _organizationBillingEmail = _$v.organizationBillingEmail;
      _marketplacePendingChange = _$v.marketplacePendingChange?.toBuilder();
      _marketplacePurchase = _$v.marketplacePurchase?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MarketplacePurchase other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MarketplacePurchase;
  }

  @override
  void update(void Function(MarketplacePurchaseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MarketplacePurchase build() {
    _$MarketplacePurchase _$result;
    try {
      _$result = _$v ??
          new _$MarketplacePurchase._(
              url: url,
              type: type,
              id: id,
              login: login,
              organizationBillingEmail: organizationBillingEmail,
              marketplacePendingChange: _marketplacePendingChange?.build(),
              marketplacePurchase: _marketplacePurchase?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'marketplacePendingChange';
        _marketplacePendingChange?.build();
        _$failedField = 'marketplacePurchase';
        _marketplacePurchase?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'MarketplacePurchase', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
