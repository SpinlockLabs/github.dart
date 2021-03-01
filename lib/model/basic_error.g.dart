// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'basic_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BasicError> _$basicErrorSerializer = new _$BasicErrorSerializer();

class _$BasicErrorSerializer implements StructuredSerializer<BasicError> {
  @override
  final Iterable<Type> types = const [BasicError, _$BasicError];
  @override
  final String wireName = 'BasicError';

  @override
  Iterable<Object> serialize(Serializers serializers, BasicError object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.documentationUrl != null) {
      result
        ..add('documentation_url')
        ..add(serializers.serialize(object.documentationUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  BasicError deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BasicErrorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'documentation_url':
          result.documentationUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$BasicError extends BasicError {
  @override
  final String message;
  @override
  final String documentationUrl;

  factory _$BasicError([void Function(BasicErrorBuilder) updates]) =>
      (new BasicErrorBuilder()..update(updates)).build();

  _$BasicError._({this.message, this.documentationUrl}) : super._();

  @override
  BasicError rebuild(void Function(BasicErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BasicErrorBuilder toBuilder() => new BasicErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BasicError &&
        message == other.message &&
        documentationUrl == other.documentationUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), documentationUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BasicError')
          ..add('message', message)
          ..add('documentationUrl', documentationUrl))
        .toString();
  }
}

class BasicErrorBuilder implements Builder<BasicError, BasicErrorBuilder> {
  _$BasicError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _documentationUrl;
  String get documentationUrl => _$this._documentationUrl;
  set documentationUrl(String documentationUrl) =>
      _$this._documentationUrl = documentationUrl;

  BasicErrorBuilder() {
    BasicError._initializeBuilder(this);
  }

  BasicErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _documentationUrl = _$v.documentationUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BasicError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BasicError;
  }

  @override
  void update(void Function(BasicErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BasicError build() {
    final _$result = _$v ??
        new _$BasicError._(
            message: message, documentationUrl: documentationUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
