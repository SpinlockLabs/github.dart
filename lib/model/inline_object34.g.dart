// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object34.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject34> _$inlineObject34Serializer =
    new _$InlineObject34Serializer();

class _$InlineObject34Serializer
    implements StructuredSerializer<InlineObject34> {
  @override
  final Iterable<Type> types = const [InlineObject34, _$InlineObject34];
  @override
  final String wireName = 'InlineObject34';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject34 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.config != null) {
      result
        ..add('config')
        ..add(serializers.serialize(object.config,
            specifiedType: const FullType(OrgsOrgHooksHookIdConfig)));
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
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject34 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject34Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'config':
          result.config.replace(serializers.deserialize(value,
                  specifiedType: const FullType(OrgsOrgHooksHookIdConfig))
              as OrgsOrgHooksHookIdConfig);
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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject34 extends InlineObject34 {
  @override
  final OrgsOrgHooksHookIdConfig config;
  @override
  final BuiltList<String> events;
  @override
  final bool active;
  @override
  final String name;

  factory _$InlineObject34([void Function(InlineObject34Builder) updates]) =>
      (new InlineObject34Builder()..update(updates)).build();

  _$InlineObject34._({this.config, this.events, this.active, this.name})
      : super._();

  @override
  InlineObject34 rebuild(void Function(InlineObject34Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject34Builder toBuilder() =>
      new InlineObject34Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject34 &&
        config == other.config &&
        events == other.events &&
        active == other.active &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, config.hashCode), events.hashCode), active.hashCode),
        name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject34')
          ..add('config', config)
          ..add('events', events)
          ..add('active', active)
          ..add('name', name))
        .toString();
  }
}

class InlineObject34Builder
    implements Builder<InlineObject34, InlineObject34Builder> {
  _$InlineObject34 _$v;

  OrgsOrgHooksHookIdConfigBuilder _config;
  OrgsOrgHooksHookIdConfigBuilder get config =>
      _$this._config ??= new OrgsOrgHooksHookIdConfigBuilder();
  set config(OrgsOrgHooksHookIdConfigBuilder config) => _$this._config = config;

  ListBuilder<String> _events;
  ListBuilder<String> get events =>
      _$this._events ??= new ListBuilder<String>();
  set events(ListBuilder<String> events) => _$this._events = events;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  InlineObject34Builder() {
    InlineObject34._initializeBuilder(this);
  }

  InlineObject34Builder get _$this {
    if (_$v != null) {
      _config = _$v.config?.toBuilder();
      _events = _$v.events?.toBuilder();
      _active = _$v.active;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject34 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject34;
  }

  @override
  void update(void Function(InlineObject34Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject34 build() {
    _$InlineObject34 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject34._(
              config: _config?.build(),
              events: _events?.build(),
              active: active,
              name: name);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
        _$failedField = 'events';
        _events?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject34', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
