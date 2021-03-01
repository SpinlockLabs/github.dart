// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'event_repo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventRepo> _$eventRepoSerializer = new _$EventRepoSerializer();

class _$EventRepoSerializer implements StructuredSerializer<EventRepo> {
  @override
  final Iterable<Type> types = const [EventRepo, _$EventRepo];
  @override
  final String wireName = 'EventRepo';

  @override
  Iterable<Object> serialize(Serializers serializers, EventRepo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  EventRepo deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventRepoBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EventRepo extends EventRepo {
  @override
  final int id;
  @override
  final String name;
  @override
  final String url;

  factory _$EventRepo([void Function(EventRepoBuilder) updates]) =>
      (new EventRepoBuilder()..update(updates)).build();

  _$EventRepo._({this.id, this.name, this.url}) : super._();

  @override
  EventRepo rebuild(void Function(EventRepoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventRepoBuilder toBuilder() => new EventRepoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventRepo &&
        id == other.id &&
        name == other.name &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), name.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventRepo')
          ..add('id', id)
          ..add('name', name)
          ..add('url', url))
        .toString();
  }
}

class EventRepoBuilder implements Builder<EventRepo, EventRepoBuilder> {
  _$EventRepo _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  EventRepoBuilder() {
    EventRepo._initializeBuilder(this);
  }

  EventRepoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventRepo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EventRepo;
  }

  @override
  void update(void Function(EventRepoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventRepo build() {
    final _$result = _$v ?? new _$EventRepo._(id: id, name: name, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
