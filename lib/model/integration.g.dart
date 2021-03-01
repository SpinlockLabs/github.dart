// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'integration.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Integration> _$integrationSerializer = new _$IntegrationSerializer();

class _$IntegrationSerializer implements StructuredSerializer<Integration> {
  @override
  final Iterable<Type> types = const [Integration, _$Integration];
  @override
  final String wireName = 'Integration';

  @override
  Iterable<Object> serialize(Serializers serializers, Integration object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.slug != null) {
      result
        ..add('slug')
        ..add(serializers.serialize(object.slug,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.owner != null) {
      result
        ..add('owner')
        ..add(serializers.serialize(object.owner,
            specifiedType: const FullType(SimpleUser)));
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
    if (object.externalUrl != null) {
      result
        ..add('external_url')
        ..add(serializers.serialize(object.externalUrl,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.permissions != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(object.permissions,
            specifiedType: const FullType(BuiltMap,
                const [const FullType(String), const FullType(String)])));
    }
    if (object.events != null) {
      result
        ..add('events')
        ..add(serializers.serialize(object.events,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.installationsCount != null) {
      result
        ..add('installations_count')
        ..add(serializers.serialize(object.installationsCount,
            specifiedType: const FullType(int)));
    }
    if (object.clientId != null) {
      result
        ..add('client_id')
        ..add(serializers.serialize(object.clientId,
            specifiedType: const FullType(String)));
    }
    if (object.clientSecret != null) {
      result
        ..add('client_secret')
        ..add(serializers.serialize(object.clientSecret,
            specifiedType: const FullType(String)));
    }
    if (object.webhookSecret != null) {
      result
        ..add('webhook_secret')
        ..add(serializers.serialize(object.webhookSecret,
            specifiedType: const FullType(String)));
    }
    if (object.pem != null) {
      result
        ..add('pem')
        ..add(serializers.serialize(object.pem,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  Integration deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new IntegrationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'slug':
          result.slug = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'owner':
          result.owner.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'external_url':
          result.externalUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltMap,
                  const [const FullType(String), const FullType(String)])));
          break;
        case 'events':
          result.events.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'installations_count':
          result.installationsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'client_id':
          result.clientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'client_secret':
          result.clientSecret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'webhook_secret':
          result.webhookSecret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'pem':
          result.pem = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$Integration extends Integration {
  @override
  final int id;
  @override
  final String slug;
  @override
  final String nodeId;
  @override
  final SimpleUser owner;
  @override
  final String name;
  @override
  final String description;
  @override
  final String externalUrl;
  @override
  final String htmlUrl;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final BuiltMap<String, String> permissions;
  @override
  final BuiltList<String> events;
  @override
  final int installationsCount;
  @override
  final String clientId;
  @override
  final String clientSecret;
  @override
  final String webhookSecret;
  @override
  final String pem;

  factory _$Integration([void Function(IntegrationBuilder) updates]) =>
      (new IntegrationBuilder()..update(updates)).build();

  _$Integration._(
      {this.id,
      this.slug,
      this.nodeId,
      this.owner,
      this.name,
      this.description,
      this.externalUrl,
      this.htmlUrl,
      this.createdAt,
      this.updatedAt,
      this.permissions,
      this.events,
      this.installationsCount,
      this.clientId,
      this.clientSecret,
      this.webhookSecret,
      this.pem})
      : super._();

  @override
  Integration rebuild(void Function(IntegrationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  IntegrationBuilder toBuilder() => new IntegrationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Integration &&
        id == other.id &&
        slug == other.slug &&
        nodeId == other.nodeId &&
        owner == other.owner &&
        name == other.name &&
        description == other.description &&
        externalUrl == other.externalUrl &&
        htmlUrl == other.htmlUrl &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        permissions == other.permissions &&
        events == other.events &&
        installationsCount == other.installationsCount &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        webhookSecret == other.webhookSecret &&
        pem == other.pem;
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
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(0,
                                                                        id.hashCode),
                                                                    slug.hashCode),
                                                                nodeId.hashCode),
                                                            owner.hashCode),
                                                        name.hashCode),
                                                    description.hashCode),
                                                externalUrl.hashCode),
                                            htmlUrl.hashCode),
                                        createdAt.hashCode),
                                    updatedAt.hashCode),
                                permissions.hashCode),
                            events.hashCode),
                        installationsCount.hashCode),
                    clientId.hashCode),
                clientSecret.hashCode),
            webhookSecret.hashCode),
        pem.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Integration')
          ..add('id', id)
          ..add('slug', slug)
          ..add('nodeId', nodeId)
          ..add('owner', owner)
          ..add('name', name)
          ..add('description', description)
          ..add('externalUrl', externalUrl)
          ..add('htmlUrl', htmlUrl)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('permissions', permissions)
          ..add('events', events)
          ..add('installationsCount', installationsCount)
          ..add('clientId', clientId)
          ..add('clientSecret', clientSecret)
          ..add('webhookSecret', webhookSecret)
          ..add('pem', pem))
        .toString();
  }
}

class IntegrationBuilder implements Builder<Integration, IntegrationBuilder> {
  _$Integration _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _slug;
  String get slug => _$this._slug;
  set slug(String slug) => _$this._slug = slug;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  SimpleUserBuilder _owner;
  SimpleUserBuilder get owner => _$this._owner ??= new SimpleUserBuilder();
  set owner(SimpleUserBuilder owner) => _$this._owner = owner;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _externalUrl;
  String get externalUrl => _$this._externalUrl;
  set externalUrl(String externalUrl) => _$this._externalUrl = externalUrl;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  MapBuilder<String, String> _permissions;
  MapBuilder<String, String> get permissions =>
      _$this._permissions ??= new MapBuilder<String, String>();
  set permissions(MapBuilder<String, String> permissions) =>
      _$this._permissions = permissions;

  ListBuilder<String> _events;
  ListBuilder<String> get events =>
      _$this._events ??= new ListBuilder<String>();
  set events(ListBuilder<String> events) => _$this._events = events;

  int _installationsCount;
  int get installationsCount => _$this._installationsCount;
  set installationsCount(int installationsCount) =>
      _$this._installationsCount = installationsCount;

  String _clientId;
  String get clientId => _$this._clientId;
  set clientId(String clientId) => _$this._clientId = clientId;

  String _clientSecret;
  String get clientSecret => _$this._clientSecret;
  set clientSecret(String clientSecret) => _$this._clientSecret = clientSecret;

  String _webhookSecret;
  String get webhookSecret => _$this._webhookSecret;
  set webhookSecret(String webhookSecret) =>
      _$this._webhookSecret = webhookSecret;

  String _pem;
  String get pem => _$this._pem;
  set pem(String pem) => _$this._pem = pem;

  IntegrationBuilder() {
    Integration._initializeBuilder(this);
  }

  IntegrationBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _slug = _$v.slug;
      _nodeId = _$v.nodeId;
      _owner = _$v.owner?.toBuilder();
      _name = _$v.name;
      _description = _$v.description;
      _externalUrl = _$v.externalUrl;
      _htmlUrl = _$v.htmlUrl;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _permissions = _$v.permissions?.toBuilder();
      _events = _$v.events?.toBuilder();
      _installationsCount = _$v.installationsCount;
      _clientId = _$v.clientId;
      _clientSecret = _$v.clientSecret;
      _webhookSecret = _$v.webhookSecret;
      _pem = _$v.pem;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Integration other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Integration;
  }

  @override
  void update(void Function(IntegrationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Integration build() {
    _$Integration _$result;
    try {
      _$result = _$v ??
          new _$Integration._(
              id: id,
              slug: slug,
              nodeId: nodeId,
              owner: _owner?.build(),
              name: name,
              description: description,
              externalUrl: externalUrl,
              htmlUrl: htmlUrl,
              createdAt: createdAt,
              updatedAt: updatedAt,
              permissions: _permissions?.build(),
              events: _events?.build(),
              installationsCount: installationsCount,
              clientId: clientId,
              clientSecret: clientSecret,
              webhookSecret: webhookSecret,
              pem: pem);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'owner';
        _owner?.build();

        _$failedField = 'permissions';
        _permissions?.build();
        _$failedField = 'events';
        _events?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Integration', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
