// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'hook.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Hook> _$hookSerializer = new _$HookSerializer();

class _$HookSerializer implements StructuredSerializer<Hook> {
  @override
  final Iterable<Type> types = const [Hook, _$Hook];
  @override
  final String wireName = 'Hook';

  @override
  Iterable<Object> serialize(Serializers serializers, Hook object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.active != null) {
      result
        ..add('active')
        ..add(serializers.serialize(object.active,
            specifiedType: const FullType(bool)));
    }
    if (object.events != null) {
      result
        ..add('events')
        ..add(serializers.serialize(object.events,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.config != null) {
      result
        ..add('config')
        ..add(serializers.serialize(object.config,
            specifiedType: const FullType(HookConfig)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.testUrl != null) {
      result
        ..add('test_url')
        ..add(serializers.serialize(object.testUrl,
            specifiedType: const FullType(String)));
    }
    if (object.pingUrl != null) {
      result
        ..add('ping_url')
        ..add(serializers.serialize(object.pingUrl,
            specifiedType: const FullType(String)));
    }
    if (object.lastResponse != null) {
      result
        ..add('last_response')
        ..add(serializers.serialize(object.lastResponse,
            specifiedType: const FullType(HookResponse)));
    }
    return result;
  }

  @override
  Hook deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HookBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'events':
          result.events.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'config':
          result.config.replace(serializers.deserialize(value,
              specifiedType: const FullType(HookConfig)) as HookConfig);
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'test_url':
          result.testUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ping_url':
          result.pingUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'last_response':
          result.lastResponse.replace(serializers.deserialize(value,
              specifiedType: const FullType(HookResponse)) as HookResponse);
          break;
      }
    }

    return result.build();
  }
}

class _$Hook extends Hook {
  @override
  final String type;
  @override
  final int id;
  @override
  final String name;
  @override
  final bool active;
  @override
  final BuiltList<String> events;
  @override
  final HookConfig config;
  @override
  final DateTime updatedAt;
  @override
  final DateTime createdAt;
  @override
  final String url;
  @override
  final String testUrl;
  @override
  final String pingUrl;
  @override
  final HookResponse lastResponse;

  factory _$Hook([void Function(HookBuilder) updates]) =>
      (new HookBuilder()..update(updates)).build();

  _$Hook._(
      {this.type,
      this.id,
      this.name,
      this.active,
      this.events,
      this.config,
      this.updatedAt,
      this.createdAt,
      this.url,
      this.testUrl,
      this.pingUrl,
      this.lastResponse})
      : super._();

  @override
  Hook rebuild(void Function(HookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HookBuilder toBuilder() => new HookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Hook &&
        type == other.type &&
        id == other.id &&
        name == other.name &&
        active == other.active &&
        events == other.events &&
        config == other.config &&
        updatedAt == other.updatedAt &&
        createdAt == other.createdAt &&
        url == other.url &&
        testUrl == other.testUrl &&
        pingUrl == other.pingUrl &&
        lastResponse == other.lastResponse;
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
                                            $jc($jc(0, type.hashCode),
                                                id.hashCode),
                                            name.hashCode),
                                        active.hashCode),
                                    events.hashCode),
                                config.hashCode),
                            updatedAt.hashCode),
                        createdAt.hashCode),
                    url.hashCode),
                testUrl.hashCode),
            pingUrl.hashCode),
        lastResponse.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Hook')
          ..add('type', type)
          ..add('id', id)
          ..add('name', name)
          ..add('active', active)
          ..add('events', events)
          ..add('config', config)
          ..add('updatedAt', updatedAt)
          ..add('createdAt', createdAt)
          ..add('url', url)
          ..add('testUrl', testUrl)
          ..add('pingUrl', pingUrl)
          ..add('lastResponse', lastResponse))
        .toString();
  }
}

class HookBuilder implements Builder<Hook, HookBuilder> {
  _$Hook _$v;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  ListBuilder<String> _events;
  ListBuilder<String> get events =>
      _$this._events ??= new ListBuilder<String>();
  set events(ListBuilder<String> events) => _$this._events = events;

  HookConfigBuilder _config;
  HookConfigBuilder get config => _$this._config ??= new HookConfigBuilder();
  set config(HookConfigBuilder config) => _$this._config = config;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _testUrl;
  String get testUrl => _$this._testUrl;
  set testUrl(String testUrl) => _$this._testUrl = testUrl;

  String _pingUrl;
  String get pingUrl => _$this._pingUrl;
  set pingUrl(String pingUrl) => _$this._pingUrl = pingUrl;

  HookResponseBuilder _lastResponse;
  HookResponseBuilder get lastResponse =>
      _$this._lastResponse ??= new HookResponseBuilder();
  set lastResponse(HookResponseBuilder lastResponse) =>
      _$this._lastResponse = lastResponse;

  HookBuilder() {
    Hook._initializeBuilder(this);
  }

  HookBuilder get _$this {
    if (_$v != null) {
      _type = _$v.type;
      _id = _$v.id;
      _name = _$v.name;
      _active = _$v.active;
      _events = _$v.events?.toBuilder();
      _config = _$v.config?.toBuilder();
      _updatedAt = _$v.updatedAt;
      _createdAt = _$v.createdAt;
      _url = _$v.url;
      _testUrl = _$v.testUrl;
      _pingUrl = _$v.pingUrl;
      _lastResponse = _$v.lastResponse?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Hook other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Hook;
  }

  @override
  void update(void Function(HookBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Hook build() {
    _$Hook _$result;
    try {
      _$result = _$v ??
          new _$Hook._(
              type: type,
              id: id,
              name: name,
              active: active,
              events: _events?.build(),
              config: _config?.build(),
              updatedAt: updatedAt,
              createdAt: createdAt,
              url: url,
              testUrl: testUrl,
              pingUrl: pingUrl,
              lastResponse: _lastResponse?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'events';
        _events?.build();
        _$failedField = 'config';
        _config?.build();

        _$failedField = 'lastResponse';
        _lastResponse?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Hook', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
