// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'event.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Event> _$eventSerializer = new _$EventSerializer();

class _$EventSerializer implements StructuredSerializer<Event> {
  @override
  final Iterable<Type> types = const [Event, _$Event];
  @override
  final String wireName = 'Event';

  @override
  Iterable<Object> serialize(Serializers serializers, Event object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    if (object.actor != null) {
      result
        ..add('actor')
        ..add(serializers.serialize(object.actor,
            specifiedType: const FullType(Actor)));
    }
    if (object.repo != null) {
      result
        ..add('repo')
        ..add(serializers.serialize(object.repo,
            specifiedType: const FullType(EventRepo)));
    }
    if (object.org != null) {
      result
        ..add('org')
        ..add(serializers.serialize(object.org,
            specifiedType: const FullType(Actor)));
    }
    if (object.payload != null) {
      result
        ..add('payload')
        ..add(serializers.serialize(object.payload,
            specifiedType: const FullType(EventPayload)));
    }
    if (object.public != null) {
      result
        ..add('public')
        ..add(serializers.serialize(object.public,
            specifiedType: const FullType(bool)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  Event deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'actor':
          result.actor.replace(serializers.deserialize(value,
              specifiedType: const FullType(Actor)) as Actor);
          break;
        case 'repo':
          result.repo.replace(serializers.deserialize(value,
              specifiedType: const FullType(EventRepo)) as EventRepo);
          break;
        case 'org':
          result.org.replace(serializers.deserialize(value,
              specifiedType: const FullType(Actor)) as Actor);
          break;
        case 'payload':
          result.payload.replace(serializers.deserialize(value,
              specifiedType: const FullType(EventPayload)) as EventPayload);
          break;
        case 'public':
          result.public = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$Event extends Event {
  @override
  final String id;
  @override
  final String type;
  @override
  final Actor actor;
  @override
  final EventRepo repo;
  @override
  final Actor org;
  @override
  final EventPayload payload;
  @override
  final bool public;
  @override
  final DateTime createdAt;

  factory _$Event([void Function(EventBuilder) updates]) =>
      (new EventBuilder()..update(updates)).build();

  _$Event._(
      {this.id,
      this.type,
      this.actor,
      this.repo,
      this.org,
      this.payload,
      this.public,
      this.createdAt})
      : super._();

  @override
  Event rebuild(void Function(EventBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventBuilder toBuilder() => new EventBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Event &&
        id == other.id &&
        type == other.type &&
        actor == other.actor &&
        repo == other.repo &&
        org == other.org &&
        payload == other.payload &&
        public == other.public &&
        createdAt == other.createdAt;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, id.hashCode), type.hashCode),
                            actor.hashCode),
                        repo.hashCode),
                    org.hashCode),
                payload.hashCode),
            public.hashCode),
        createdAt.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Event')
          ..add('id', id)
          ..add('type', type)
          ..add('actor', actor)
          ..add('repo', repo)
          ..add('org', org)
          ..add('payload', payload)
          ..add('public', public)
          ..add('createdAt', createdAt))
        .toString();
  }
}

class EventBuilder implements Builder<Event, EventBuilder> {
  _$Event _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  ActorBuilder _actor;
  ActorBuilder get actor => _$this._actor ??= new ActorBuilder();
  set actor(ActorBuilder actor) => _$this._actor = actor;

  EventRepoBuilder _repo;
  EventRepoBuilder get repo => _$this._repo ??= new EventRepoBuilder();
  set repo(EventRepoBuilder repo) => _$this._repo = repo;

  ActorBuilder _org;
  ActorBuilder get org => _$this._org ??= new ActorBuilder();
  set org(ActorBuilder org) => _$this._org = org;

  EventPayloadBuilder _payload;
  EventPayloadBuilder get payload =>
      _$this._payload ??= new EventPayloadBuilder();
  set payload(EventPayloadBuilder payload) => _$this._payload = payload;

  bool _public;
  bool get public => _$this._public;
  set public(bool public) => _$this._public = public;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  EventBuilder() {
    Event._initializeBuilder(this);
  }

  EventBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _type = _$v.type;
      _actor = _$v.actor?.toBuilder();
      _repo = _$v.repo?.toBuilder();
      _org = _$v.org?.toBuilder();
      _payload = _$v.payload?.toBuilder();
      _public = _$v.public;
      _createdAt = _$v.createdAt;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Event other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Event;
  }

  @override
  void update(void Function(EventBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Event build() {
    _$Event _$result;
    try {
      _$result = _$v ??
          new _$Event._(
              id: id,
              type: type,
              actor: _actor?.build(),
              repo: _repo?.build(),
              org: _org?.build(),
              payload: _payload?.build(),
              public: public,
              createdAt: createdAt);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'actor';
        _actor?.build();
        _$failedField = 'repo';
        _repo?.build();
        _$failedField = 'org';
        _org?.build();
        _$failedField = 'payload';
        _payload?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Event', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
