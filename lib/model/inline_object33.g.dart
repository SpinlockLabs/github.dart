// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object33.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject33> _$inlineObject33Serializer =
    new _$InlineObject33Serializer();

class _$InlineObject33Serializer
    implements StructuredSerializer<InlineObject33> {
  @override
  final Iterable<Type> types = const [InlineObject33, _$InlineObject33];
  @override
  final String wireName = 'InlineObject33';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject33 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.config != null) {
      result
        ..add('config')
        ..add(serializers.serialize(object.config,
            specifiedType: const FullType(OrgsOrgHooksConfig)));
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
    return result;
  }

  @override
  InlineObject33 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject33Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'config':
          result.config.replace(serializers.deserialize(value,
                  specifiedType: const FullType(OrgsOrgHooksConfig))
              as OrgsOrgHooksConfig);
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
      }
    }

    return result.build();
  }
}

class _$InlineObject33 extends InlineObject33 {
  @override
  final String name;
  @override
  final OrgsOrgHooksConfig config;
  @override
  final BuiltList<String> events;
  @override
  final bool active;

  factory _$InlineObject33([void Function(InlineObject33Builder) updates]) =>
      (new InlineObject33Builder()..update(updates)).build();

  _$InlineObject33._({this.name, this.config, this.events, this.active})
      : super._();

  @override
  InlineObject33 rebuild(void Function(InlineObject33Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject33Builder toBuilder() =>
      new InlineObject33Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject33 &&
        name == other.name &&
        config == other.config &&
        events == other.events &&
        active == other.active;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, name.hashCode), config.hashCode), events.hashCode),
        active.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject33')
          ..add('name', name)
          ..add('config', config)
          ..add('events', events)
          ..add('active', active))
        .toString();
  }
}

class InlineObject33Builder
    implements Builder<InlineObject33, InlineObject33Builder> {
  _$InlineObject33 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  OrgsOrgHooksConfigBuilder _config;
  OrgsOrgHooksConfigBuilder get config =>
      _$this._config ??= new OrgsOrgHooksConfigBuilder();
  set config(OrgsOrgHooksConfigBuilder config) => _$this._config = config;

  ListBuilder<String> _events;
  ListBuilder<String> get events =>
      _$this._events ??= new ListBuilder<String>();
  set events(ListBuilder<String> events) => _$this._events = events;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  InlineObject33Builder() {
    InlineObject33._initializeBuilder(this);
  }

  InlineObject33Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _config = _$v.config?.toBuilder();
      _events = _$v.events?.toBuilder();
      _active = _$v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject33 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject33;
  }

  @override
  void update(void Function(InlineObject33Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject33 build() {
    _$InlineObject33 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject33._(
              name: name,
              config: _config?.build(),
              events: _events?.build(),
              active: active);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
        _$failedField = 'events';
        _events?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject33', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
