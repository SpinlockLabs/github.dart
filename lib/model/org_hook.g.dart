// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'org_hook.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<OrgHook> _$orgHookSerializer = new _$OrgHookSerializer();

class _$OrgHookSerializer implements StructuredSerializer<OrgHook> {
  @override
  final Iterable<Type> types = const [OrgHook, _$OrgHook];
  @override
  final String wireName = 'OrgHook';

  @override
  Iterable<Object> serialize(Serializers serializers, OrgHook object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.pingUrl != null) {
      result
        ..add('ping_url')
        ..add(serializers.serialize(object.pingUrl,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.events != null) {
      result
        ..add('events')
        ..add(serializers.serialize(object.events,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.active != null) {
      result
        ..add('active')
        ..add(serializers.serialize(object.active,
            specifiedType: const FullType(bool)));
    }
    if (object.config != null) {
      result
        ..add('config')
        ..add(serializers.serialize(object.config,
            specifiedType: const FullType(OrgHookConfig)));
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
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  OrgHook deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new OrgHookBuilder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ping_url':
          result.pingUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'events':
          result.events.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'active':
          result.active = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'config':
          result.config.replace(serializers.deserialize(value,
              specifiedType: const FullType(OrgHookConfig)) as OrgHookConfig);
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$OrgHook extends OrgHook {
  @override
  final int id;
  @override
  final String url;
  @override
  final String pingUrl;
  @override
  final String name;
  @override
  final BuiltList<String> events;
  @override
  final bool active;
  @override
  final OrgHookConfig config;
  @override
  final DateTime updatedAt;
  @override
  final DateTime createdAt;
  @override
  final String type;

  factory _$OrgHook([void Function(OrgHookBuilder) updates]) =>
      (new OrgHookBuilder()..update(updates)).build();

  _$OrgHook._(
      {this.id,
      this.url,
      this.pingUrl,
      this.name,
      this.events,
      this.active,
      this.config,
      this.updatedAt,
      this.createdAt,
      this.type})
      : super._();

  @override
  OrgHook rebuild(void Function(OrgHookBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  OrgHookBuilder toBuilder() => new OrgHookBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is OrgHook &&
        id == other.id &&
        url == other.url &&
        pingUrl == other.pingUrl &&
        name == other.name &&
        events == other.events &&
        active == other.active &&
        config == other.config &&
        updatedAt == other.updatedAt &&
        createdAt == other.createdAt &&
        type == other.type;
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
                                $jc($jc($jc(0, id.hashCode), url.hashCode),
                                    pingUrl.hashCode),
                                name.hashCode),
                            events.hashCode),
                        active.hashCode),
                    config.hashCode),
                updatedAt.hashCode),
            createdAt.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('OrgHook')
          ..add('id', id)
          ..add('url', url)
          ..add('pingUrl', pingUrl)
          ..add('name', name)
          ..add('events', events)
          ..add('active', active)
          ..add('config', config)
          ..add('updatedAt', updatedAt)
          ..add('createdAt', createdAt)
          ..add('type', type))
        .toString();
  }
}

class OrgHookBuilder implements Builder<OrgHook, OrgHookBuilder> {
  _$OrgHook _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _pingUrl;
  String get pingUrl => _$this._pingUrl;
  set pingUrl(String pingUrl) => _$this._pingUrl = pingUrl;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  ListBuilder<String> _events;
  ListBuilder<String> get events =>
      _$this._events ??= new ListBuilder<String>();
  set events(ListBuilder<String> events) => _$this._events = events;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  OrgHookConfigBuilder _config;
  OrgHookConfigBuilder get config =>
      _$this._config ??= new OrgHookConfigBuilder();
  set config(OrgHookConfigBuilder config) => _$this._config = config;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  OrgHookBuilder() {
    OrgHook._initializeBuilder(this);
  }

  OrgHookBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _url = _$v.url;
      _pingUrl = _$v.pingUrl;
      _name = _$v.name;
      _events = _$v.events?.toBuilder();
      _active = _$v.active;
      _config = _$v.config?.toBuilder();
      _updatedAt = _$v.updatedAt;
      _createdAt = _$v.createdAt;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(OrgHook other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$OrgHook;
  }

  @override
  void update(void Function(OrgHookBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$OrgHook build() {
    _$OrgHook _$result;
    try {
      _$result = _$v ??
          new _$OrgHook._(
              id: id,
              url: url,
              pingUrl: pingUrl,
              name: name,
              events: _events?.build(),
              active: active,
              config: _config?.build(),
              updatedAt: updatedAt,
              createdAt: createdAt,
              type: type);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'events';
        _events?.build();

        _$failedField = 'config';
        _config?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'OrgHook', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
