// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object92.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject92StateEnum _$inlineObject92StateEnum_error =
    const InlineObject92StateEnum._('error');
const InlineObject92StateEnum _$inlineObject92StateEnum_failure =
    const InlineObject92StateEnum._('failure');
const InlineObject92StateEnum _$inlineObject92StateEnum_inactive =
    const InlineObject92StateEnum._('inactive');
const InlineObject92StateEnum _$inlineObject92StateEnum_inProgress =
    const InlineObject92StateEnum._('inProgress');
const InlineObject92StateEnum _$inlineObject92StateEnum_queued =
    const InlineObject92StateEnum._('queued');
const InlineObject92StateEnum _$inlineObject92StateEnum_pending =
    const InlineObject92StateEnum._('pending');
const InlineObject92StateEnum _$inlineObject92StateEnum_success =
    const InlineObject92StateEnum._('success');

InlineObject92StateEnum _$inlineObject92StateEnumValueOf(String name) {
  switch (name) {
    case 'error':
      return _$inlineObject92StateEnum_error;
    case 'failure':
      return _$inlineObject92StateEnum_failure;
    case 'inactive':
      return _$inlineObject92StateEnum_inactive;
    case 'inProgress':
      return _$inlineObject92StateEnum_inProgress;
    case 'queued':
      return _$inlineObject92StateEnum_queued;
    case 'pending':
      return _$inlineObject92StateEnum_pending;
    case 'success':
      return _$inlineObject92StateEnum_success;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject92StateEnum> _$inlineObject92StateEnumValues =
    new BuiltSet<InlineObject92StateEnum>(const <InlineObject92StateEnum>[
  _$inlineObject92StateEnum_error,
  _$inlineObject92StateEnum_failure,
  _$inlineObject92StateEnum_inactive,
  _$inlineObject92StateEnum_inProgress,
  _$inlineObject92StateEnum_queued,
  _$inlineObject92StateEnum_pending,
  _$inlineObject92StateEnum_success,
]);

const InlineObject92EnvironmentEnum _$inlineObject92EnvironmentEnum_production =
    const InlineObject92EnvironmentEnum._('production');
const InlineObject92EnvironmentEnum _$inlineObject92EnvironmentEnum_staging =
    const InlineObject92EnvironmentEnum._('staging');
const InlineObject92EnvironmentEnum _$inlineObject92EnvironmentEnum_qa =
    const InlineObject92EnvironmentEnum._('qa');

InlineObject92EnvironmentEnum _$inlineObject92EnvironmentEnumValueOf(
    String name) {
  switch (name) {
    case 'production':
      return _$inlineObject92EnvironmentEnum_production;
    case 'staging':
      return _$inlineObject92EnvironmentEnum_staging;
    case 'qa':
      return _$inlineObject92EnvironmentEnum_qa;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject92EnvironmentEnum>
    _$inlineObject92EnvironmentEnumValues = new BuiltSet<
        InlineObject92EnvironmentEnum>(const <InlineObject92EnvironmentEnum>[
  _$inlineObject92EnvironmentEnum_production,
  _$inlineObject92EnvironmentEnum_staging,
  _$inlineObject92EnvironmentEnum_qa,
]);

Serializer<InlineObject92> _$inlineObject92Serializer =
    new _$InlineObject92Serializer();
Serializer<InlineObject92StateEnum> _$inlineObject92StateEnumSerializer =
    new _$InlineObject92StateEnumSerializer();
Serializer<InlineObject92EnvironmentEnum>
    _$inlineObject92EnvironmentEnumSerializer =
    new _$InlineObject92EnvironmentEnumSerializer();

class _$InlineObject92Serializer
    implements StructuredSerializer<InlineObject92> {
  @override
  final Iterable<Type> types = const [InlineObject92, _$InlineObject92];
  @override
  final String wireName = 'InlineObject92';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject92 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(InlineObject92StateEnum)));
    }
    if (object.targetUrl != null) {
      result
        ..add('target_url')
        ..add(serializers.serialize(object.targetUrl,
            specifiedType: const FullType(String)));
    }
    if (object.logUrl != null) {
      result
        ..add('log_url')
        ..add(serializers.serialize(object.logUrl,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.environment != null) {
      result
        ..add('environment')
        ..add(serializers.serialize(object.environment,
            specifiedType: const FullType(InlineObject92EnvironmentEnum)));
    }
    if (object.environmentUrl != null) {
      result
        ..add('environment_url')
        ..add(serializers.serialize(object.environmentUrl,
            specifiedType: const FullType(String)));
    }
    if (object.autoInactive != null) {
      result
        ..add('auto_inactive')
        ..add(serializers.serialize(object.autoInactive,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  InlineObject92 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject92Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject92StateEnum))
              as InlineObject92StateEnum;
          break;
        case 'target_url':
          result.targetUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'log_url':
          result.logUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'environment':
          result.environment = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject92EnvironmentEnum))
              as InlineObject92EnvironmentEnum;
          break;
        case 'environment_url':
          result.environmentUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'auto_inactive':
          result.autoInactive = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject92StateEnumSerializer
    implements PrimitiveSerializer<InlineObject92StateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'error': 'error',
    'failure': 'failure',
    'inactive': 'inactive',
    'inProgress': 'in_progress',
    'queued': 'queued',
    'pending': 'pending',
    'success': 'success',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'error': 'error',
    'failure': 'failure',
    'inactive': 'inactive',
    'in_progress': 'inProgress',
    'queued': 'queued',
    'pending': 'pending',
    'success': 'success',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject92StateEnum];
  @override
  final String wireName = 'InlineObject92StateEnum';

  @override
  Object serialize(Serializers serializers, InlineObject92StateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject92StateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject92StateEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject92EnvironmentEnumSerializer
    implements PrimitiveSerializer<InlineObject92EnvironmentEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'production': 'production',
    'staging': 'staging',
    'qa': 'qa',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'production': 'production',
    'staging': 'staging',
    'qa': 'qa',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject92EnvironmentEnum];
  @override
  final String wireName = 'InlineObject92EnvironmentEnum';

  @override
  Object serialize(
          Serializers serializers, InlineObject92EnvironmentEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject92EnvironmentEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject92EnvironmentEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject92 extends InlineObject92 {
  @override
  final InlineObject92StateEnum state;
  @override
  final String targetUrl;
  @override
  final String logUrl;
  @override
  final String description;
  @override
  final InlineObject92EnvironmentEnum environment;
  @override
  final String environmentUrl;
  @override
  final bool autoInactive;

  factory _$InlineObject92([void Function(InlineObject92Builder) updates]) =>
      (new InlineObject92Builder()..update(updates)).build();

  _$InlineObject92._(
      {this.state,
      this.targetUrl,
      this.logUrl,
      this.description,
      this.environment,
      this.environmentUrl,
      this.autoInactive})
      : super._();

  @override
  InlineObject92 rebuild(void Function(InlineObject92Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject92Builder toBuilder() =>
      new InlineObject92Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject92 &&
        state == other.state &&
        targetUrl == other.targetUrl &&
        logUrl == other.logUrl &&
        description == other.description &&
        environment == other.environment &&
        environmentUrl == other.environmentUrl &&
        autoInactive == other.autoInactive;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, state.hashCode), targetUrl.hashCode),
                        logUrl.hashCode),
                    description.hashCode),
                environment.hashCode),
            environmentUrl.hashCode),
        autoInactive.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject92')
          ..add('state', state)
          ..add('targetUrl', targetUrl)
          ..add('logUrl', logUrl)
          ..add('description', description)
          ..add('environment', environment)
          ..add('environmentUrl', environmentUrl)
          ..add('autoInactive', autoInactive))
        .toString();
  }
}

class InlineObject92Builder
    implements Builder<InlineObject92, InlineObject92Builder> {
  _$InlineObject92 _$v;

  InlineObject92StateEnum _state;
  InlineObject92StateEnum get state => _$this._state;
  set state(InlineObject92StateEnum state) => _$this._state = state;

  String _targetUrl;
  String get targetUrl => _$this._targetUrl;
  set targetUrl(String targetUrl) => _$this._targetUrl = targetUrl;

  String _logUrl;
  String get logUrl => _$this._logUrl;
  set logUrl(String logUrl) => _$this._logUrl = logUrl;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  InlineObject92EnvironmentEnum _environment;
  InlineObject92EnvironmentEnum get environment => _$this._environment;
  set environment(InlineObject92EnvironmentEnum environment) =>
      _$this._environment = environment;

  String _environmentUrl;
  String get environmentUrl => _$this._environmentUrl;
  set environmentUrl(String environmentUrl) =>
      _$this._environmentUrl = environmentUrl;

  bool _autoInactive;
  bool get autoInactive => _$this._autoInactive;
  set autoInactive(bool autoInactive) => _$this._autoInactive = autoInactive;

  InlineObject92Builder() {
    InlineObject92._initializeBuilder(this);
  }

  InlineObject92Builder get _$this {
    if (_$v != null) {
      _state = _$v.state;
      _targetUrl = _$v.targetUrl;
      _logUrl = _$v.logUrl;
      _description = _$v.description;
      _environment = _$v.environment;
      _environmentUrl = _$v.environmentUrl;
      _autoInactive = _$v.autoInactive;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject92 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject92;
  }

  @override
  void update(void Function(InlineObject92Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject92 build() {
    final _$result = _$v ??
        new _$InlineObject92._(
            state: state,
            targetUrl: targetUrl,
            logUrl: logUrl,
            description: description,
            environment: environment,
            environmentUrl: environmentUrl,
            autoInactive: autoInactive);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
