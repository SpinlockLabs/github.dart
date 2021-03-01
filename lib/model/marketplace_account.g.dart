// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'marketplace_account.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<MarketplaceAccount> _$marketplaceAccountSerializer =
    new _$MarketplaceAccountSerializer();

class _$MarketplaceAccountSerializer
    implements StructuredSerializer<MarketplaceAccount> {
  @override
  final Iterable<Type> types = const [MarketplaceAccount, _$MarketplaceAccount];
  @override
  final String wireName = 'MarketplaceAccount';

  @override
  Iterable<Object> serialize(Serializers serializers, MarketplaceAccount object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.login != null) {
      result
        ..add('login')
        ..add(serializers.serialize(object.login,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    if (object.organizationBillingEmail != null) {
      result
        ..add('organization_billing_email')
        ..add(serializers.serialize(object.organizationBillingEmail,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  MarketplaceAccount deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MarketplaceAccountBuilder();

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
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'login':
          result.login = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'organization_billing_email':
          result.organizationBillingEmail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$MarketplaceAccount extends MarketplaceAccount {
  @override
  final String url;
  @override
  final int id;
  @override
  final String type;
  @override
  final String nodeId;
  @override
  final String login;
  @override
  final String email;
  @override
  final String organizationBillingEmail;

  factory _$MarketplaceAccount(
          [void Function(MarketplaceAccountBuilder) updates]) =>
      (new MarketplaceAccountBuilder()..update(updates)).build();

  _$MarketplaceAccount._(
      {this.url,
      this.id,
      this.type,
      this.nodeId,
      this.login,
      this.email,
      this.organizationBillingEmail})
      : super._();

  @override
  MarketplaceAccount rebuild(
          void Function(MarketplaceAccountBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MarketplaceAccountBuilder toBuilder() =>
      new MarketplaceAccountBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is MarketplaceAccount &&
        url == other.url &&
        id == other.id &&
        type == other.type &&
        nodeId == other.nodeId &&
        login == other.login &&
        email == other.email &&
        organizationBillingEmail == other.organizationBillingEmail;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc($jc(0, url.hashCode), id.hashCode), type.hashCode),
                    nodeId.hashCode),
                login.hashCode),
            email.hashCode),
        organizationBillingEmail.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('MarketplaceAccount')
          ..add('url', url)
          ..add('id', id)
          ..add('type', type)
          ..add('nodeId', nodeId)
          ..add('login', login)
          ..add('email', email)
          ..add('organizationBillingEmail', organizationBillingEmail))
        .toString();
  }
}

class MarketplaceAccountBuilder
    implements Builder<MarketplaceAccount, MarketplaceAccountBuilder> {
  _$MarketplaceAccount _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _login;
  String get login => _$this._login;
  set login(String login) => _$this._login = login;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _organizationBillingEmail;
  String get organizationBillingEmail => _$this._organizationBillingEmail;
  set organizationBillingEmail(String organizationBillingEmail) =>
      _$this._organizationBillingEmail = organizationBillingEmail;

  MarketplaceAccountBuilder() {
    MarketplaceAccount._initializeBuilder(this);
  }

  MarketplaceAccountBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _id = _$v.id;
      _type = _$v.type;
      _nodeId = _$v.nodeId;
      _login = _$v.login;
      _email = _$v.email;
      _organizationBillingEmail = _$v.organizationBillingEmail;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(MarketplaceAccount other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$MarketplaceAccount;
  }

  @override
  void update(void Function(MarketplaceAccountBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$MarketplaceAccount build() {
    final _$result = _$v ??
        new _$MarketplaceAccount._(
            url: url,
            id: id,
            type: type,
            nodeId: nodeId,
            login: login,
            email: email,
            organizationBillingEmail: organizationBillingEmail);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
