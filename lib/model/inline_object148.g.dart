// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object148.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject148StateEnum _$inlineObject148StateEnum_error =
    const InlineObject148StateEnum._('error');
const InlineObject148StateEnum _$inlineObject148StateEnum_failure =
    const InlineObject148StateEnum._('failure');
const InlineObject148StateEnum _$inlineObject148StateEnum_pending =
    const InlineObject148StateEnum._('pending');
const InlineObject148StateEnum _$inlineObject148StateEnum_success =
    const InlineObject148StateEnum._('success');

InlineObject148StateEnum _$inlineObject148StateEnumValueOf(String name) {
  switch (name) {
    case 'error':
      return _$inlineObject148StateEnum_error;
    case 'failure':
      return _$inlineObject148StateEnum_failure;
    case 'pending':
      return _$inlineObject148StateEnum_pending;
    case 'success':
      return _$inlineObject148StateEnum_success;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject148StateEnum> _$inlineObject148StateEnumValues =
    new BuiltSet<InlineObject148StateEnum>(const <InlineObject148StateEnum>[
  _$inlineObject148StateEnum_error,
  _$inlineObject148StateEnum_failure,
  _$inlineObject148StateEnum_pending,
  _$inlineObject148StateEnum_success,
]);

Serializer<InlineObject148> _$inlineObject148Serializer =
    new _$InlineObject148Serializer();
Serializer<InlineObject148StateEnum> _$inlineObject148StateEnumSerializer =
    new _$InlineObject148StateEnumSerializer();

class _$InlineObject148Serializer
    implements StructuredSerializer<InlineObject148> {
  @override
  final Iterable<Type> types = const [InlineObject148, _$InlineObject148];
  @override
  final String wireName = 'InlineObject148';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject148 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(InlineObject148StateEnum)));
    }
    if (object.targetUrl != null) {
      result
        ..add('target_url')
        ..add(serializers.serialize(object.targetUrl,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.context != null) {
      result
        ..add('context')
        ..add(serializers.serialize(object.context,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject148 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject148Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject148StateEnum))
              as InlineObject148StateEnum;
          break;
        case 'target_url':
          result.targetUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'context':
          result.context = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject148StateEnumSerializer
    implements PrimitiveSerializer<InlineObject148StateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'error': 'error',
    'failure': 'failure',
    'pending': 'pending',
    'success': 'success',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'error': 'error',
    'failure': 'failure',
    'pending': 'pending',
    'success': 'success',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject148StateEnum];
  @override
  final String wireName = 'InlineObject148StateEnum';

  @override
  Object serialize(Serializers serializers, InlineObject148StateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject148StateEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject148StateEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject148 extends InlineObject148 {
  @override
  final InlineObject148StateEnum state;
  @override
  final String targetUrl;
  @override
  final String description;
  @override
  final String context;

  factory _$InlineObject148([void Function(InlineObject148Builder) updates]) =>
      (new InlineObject148Builder()..update(updates)).build();

  _$InlineObject148._(
      {this.state, this.targetUrl, this.description, this.context})
      : super._();

  @override
  InlineObject148 rebuild(void Function(InlineObject148Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject148Builder toBuilder() =>
      new InlineObject148Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject148 &&
        state == other.state &&
        targetUrl == other.targetUrl &&
        description == other.description &&
        context == other.context;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, state.hashCode), targetUrl.hashCode),
            description.hashCode),
        context.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject148')
          ..add('state', state)
          ..add('targetUrl', targetUrl)
          ..add('description', description)
          ..add('context', context))
        .toString();
  }
}

class InlineObject148Builder
    implements Builder<InlineObject148, InlineObject148Builder> {
  _$InlineObject148 _$v;

  InlineObject148StateEnum _state;
  InlineObject148StateEnum get state => _$this._state;
  set state(InlineObject148StateEnum state) => _$this._state = state;

  String _targetUrl;
  String get targetUrl => _$this._targetUrl;
  set targetUrl(String targetUrl) => _$this._targetUrl = targetUrl;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _context;
  String get context => _$this._context;
  set context(String context) => _$this._context = context;

  InlineObject148Builder() {
    InlineObject148._initializeBuilder(this);
  }

  InlineObject148Builder get _$this {
    if (_$v != null) {
      _state = _$v.state;
      _targetUrl = _$v.targetUrl;
      _description = _$v.description;
      _context = _$v.context;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject148 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject148;
  }

  @override
  void update(void Function(InlineObject148Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject148 build() {
    final _$result = _$v ??
        new _$InlineObject148._(
            state: state,
            targetUrl: targetUrl,
            description: description,
            context: context);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
