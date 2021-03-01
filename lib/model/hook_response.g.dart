// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'hook_response.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<HookResponse> _$hookResponseSerializer =
    new _$HookResponseSerializer();

class _$HookResponseSerializer implements StructuredSerializer<HookResponse> {
  @override
  final Iterable<Type> types = const [HookResponse, _$HookResponse];
  @override
  final String wireName = 'HookResponse';

  @override
  Iterable<Object> serialize(Serializers serializers, HookResponse object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.code,
            specifiedType: const FullType(int)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  HookResponse deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new HookResponseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$HookResponse extends HookResponse {
  @override
  final int code;
  @override
  final String status;
  @override
  final String message;

  factory _$HookResponse([void Function(HookResponseBuilder) updates]) =>
      (new HookResponseBuilder()..update(updates)).build();

  _$HookResponse._({this.code, this.status, this.message}) : super._();

  @override
  HookResponse rebuild(void Function(HookResponseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  HookResponseBuilder toBuilder() => new HookResponseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is HookResponse &&
        code == other.code &&
        status == other.status &&
        message == other.message;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc($jc(0, code.hashCode), status.hashCode), message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('HookResponse')
          ..add('code', code)
          ..add('status', status)
          ..add('message', message))
        .toString();
  }
}

class HookResponseBuilder
    implements Builder<HookResponse, HookResponseBuilder> {
  _$HookResponse _$v;

  int _code;
  int get code => _$this._code;
  set code(int code) => _$this._code = code;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  HookResponseBuilder() {
    HookResponse._initializeBuilder(this);
  }

  HookResponseBuilder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _status = _$v.status;
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(HookResponse other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$HookResponse;
  }

  @override
  void update(void Function(HookResponseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$HookResponse build() {
    final _$result = _$v ??
        new _$HookResponse._(code: code, status: status, message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
