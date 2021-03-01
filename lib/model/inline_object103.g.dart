// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object103.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject103> _$inlineObject103Serializer =
    new _$InlineObject103Serializer();

class _$InlineObject103Serializer
    implements StructuredSerializer<InlineObject103> {
  @override
  final Iterable<Type> types = const [InlineObject103, _$InlineObject103];
  @override
  final String wireName = 'InlineObject103';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject103 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.config != null) {
      result
        ..add('config')
        ..add(serializers.serialize(object.config,
            specifiedType: const FullType(ReposOwnerRepoHooksHookIdConfig)));
    }
    if (object.events != null) {
      result
        ..add('events')
        ..add(serializers.serialize(object.events,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.addEvents != null) {
      result
        ..add('add_events')
        ..add(serializers.serialize(object.addEvents,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.removeEvents != null) {
      result
        ..add('remove_events')
        ..add(serializers.serialize(object.removeEvents,
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
  InlineObject103 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject103Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'config':
          result.config.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(ReposOwnerRepoHooksHookIdConfig))
              as ReposOwnerRepoHooksHookIdConfig);
          break;
        case 'events':
          result.events.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'add_events':
          result.addEvents.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'remove_events':
          result.removeEvents.replace(serializers.deserialize(value,
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

class _$InlineObject103 extends InlineObject103 {
  @override
  final ReposOwnerRepoHooksHookIdConfig config;
  @override
  final BuiltList<String> events;
  @override
  final BuiltList<String> addEvents;
  @override
  final BuiltList<String> removeEvents;
  @override
  final bool active;

  factory _$InlineObject103([void Function(InlineObject103Builder) updates]) =>
      (new InlineObject103Builder()..update(updates)).build();

  _$InlineObject103._(
      {this.config,
      this.events,
      this.addEvents,
      this.removeEvents,
      this.active})
      : super._();

  @override
  InlineObject103 rebuild(void Function(InlineObject103Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject103Builder toBuilder() =>
      new InlineObject103Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject103 &&
        config == other.config &&
        events == other.events &&
        addEvents == other.addEvents &&
        removeEvents == other.removeEvents &&
        active == other.active;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, config.hashCode), events.hashCode),
                addEvents.hashCode),
            removeEvents.hashCode),
        active.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject103')
          ..add('config', config)
          ..add('events', events)
          ..add('addEvents', addEvents)
          ..add('removeEvents', removeEvents)
          ..add('active', active))
        .toString();
  }
}

class InlineObject103Builder
    implements Builder<InlineObject103, InlineObject103Builder> {
  _$InlineObject103 _$v;

  ReposOwnerRepoHooksHookIdConfigBuilder _config;
  ReposOwnerRepoHooksHookIdConfigBuilder get config =>
      _$this._config ??= new ReposOwnerRepoHooksHookIdConfigBuilder();
  set config(ReposOwnerRepoHooksHookIdConfigBuilder config) =>
      _$this._config = config;

  ListBuilder<String> _events;
  ListBuilder<String> get events =>
      _$this._events ??= new ListBuilder<String>();
  set events(ListBuilder<String> events) => _$this._events = events;

  ListBuilder<String> _addEvents;
  ListBuilder<String> get addEvents =>
      _$this._addEvents ??= new ListBuilder<String>();
  set addEvents(ListBuilder<String> addEvents) => _$this._addEvents = addEvents;

  ListBuilder<String> _removeEvents;
  ListBuilder<String> get removeEvents =>
      _$this._removeEvents ??= new ListBuilder<String>();
  set removeEvents(ListBuilder<String> removeEvents) =>
      _$this._removeEvents = removeEvents;

  bool _active;
  bool get active => _$this._active;
  set active(bool active) => _$this._active = active;

  InlineObject103Builder() {
    InlineObject103._initializeBuilder(this);
  }

  InlineObject103Builder get _$this {
    if (_$v != null) {
      _config = _$v.config?.toBuilder();
      _events = _$v.events?.toBuilder();
      _addEvents = _$v.addEvents?.toBuilder();
      _removeEvents = _$v.removeEvents?.toBuilder();
      _active = _$v.active;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject103 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject103;
  }

  @override
  void update(void Function(InlineObject103Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject103 build() {
    _$InlineObject103 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject103._(
              config: _config?.build(),
              events: _events?.build(),
              addEvents: _addEvents?.build(),
              removeEvents: _removeEvents?.build(),
              active: active);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'config';
        _config?.build();
        _$failedField = 'events';
        _events?.build();
        _$failedField = 'addEvents';
        _addEvents?.build();
        _$failedField = 'removeEvents';
        _removeEvents?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject103', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
