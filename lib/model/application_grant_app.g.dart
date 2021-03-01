// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'application_grant_app.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApplicationGrantApp> _$applicationGrantAppSerializer =
    new _$ApplicationGrantAppSerializer();

class _$ApplicationGrantAppSerializer
    implements StructuredSerializer<ApplicationGrantApp> {
  @override
  final Iterable<Type> types = const [
    ApplicationGrantApp,
    _$ApplicationGrantApp
  ];
  @override
  final String wireName = 'ApplicationGrantApp';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ApplicationGrantApp object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.clientId != null) {
      result
        ..add('client_id')
        ..add(serializers.serialize(object.clientId,
            specifiedType: const FullType(String)));
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
  ApplicationGrantApp deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApplicationGrantAppBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'client_id':
          result.clientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
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

class _$ApplicationGrantApp extends ApplicationGrantApp {
  @override
  final String clientId;
  @override
  final String name;
  @override
  final String url;

  factory _$ApplicationGrantApp(
          [void Function(ApplicationGrantAppBuilder) updates]) =>
      (new ApplicationGrantAppBuilder()..update(updates)).build();

  _$ApplicationGrantApp._({this.clientId, this.name, this.url}) : super._();

  @override
  ApplicationGrantApp rebuild(
          void Function(ApplicationGrantAppBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApplicationGrantAppBuilder toBuilder() =>
      new ApplicationGrantAppBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApplicationGrantApp &&
        clientId == other.clientId &&
        name == other.name &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, clientId.hashCode), name.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApplicationGrantApp')
          ..add('clientId', clientId)
          ..add('name', name)
          ..add('url', url))
        .toString();
  }
}

class ApplicationGrantAppBuilder
    implements Builder<ApplicationGrantApp, ApplicationGrantAppBuilder> {
  _$ApplicationGrantApp _$v;

  String _clientId;
  String get clientId => _$this._clientId;
  set clientId(String clientId) => _$this._clientId = clientId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  ApplicationGrantAppBuilder() {
    ApplicationGrantApp._initializeBuilder(this);
  }

  ApplicationGrantAppBuilder get _$this {
    if (_$v != null) {
      _clientId = _$v.clientId;
      _name = _$v.name;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApplicationGrantApp other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ApplicationGrantApp;
  }

  @override
  void update(void Function(ApplicationGrantAppBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApplicationGrantApp build() {
    final _$result = _$v ??
        new _$ApplicationGrantApp._(clientId: clientId, name: name, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
