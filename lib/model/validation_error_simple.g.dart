// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'validation_error_simple.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ValidationErrorSimple> _$validationErrorSimpleSerializer =
    new _$ValidationErrorSimpleSerializer();

class _$ValidationErrorSimpleSerializer
    implements StructuredSerializer<ValidationErrorSimple> {
  @override
  final Iterable<Type> types = const [
    ValidationErrorSimple,
    _$ValidationErrorSimple
  ];
  @override
  final String wireName = 'ValidationErrorSimple';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ValidationErrorSimple object,
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
    if (object.errors != null) {
      result
        ..add('errors')
        ..add(serializers.serialize(object.errors,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  ValidationErrorSimple deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ValidationErrorSimpleBuilder();

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
        case 'errors':
          result.errors.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ValidationErrorSimple extends ValidationErrorSimple {
  @override
  final String message;
  @override
  final String documentationUrl;
  @override
  final BuiltList<String> errors;

  factory _$ValidationErrorSimple(
          [void Function(ValidationErrorSimpleBuilder) updates]) =>
      (new ValidationErrorSimpleBuilder()..update(updates)).build();

  _$ValidationErrorSimple._({this.message, this.documentationUrl, this.errors})
      : super._();

  @override
  ValidationErrorSimple rebuild(
          void Function(ValidationErrorSimpleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidationErrorSimpleBuilder toBuilder() =>
      new ValidationErrorSimpleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationErrorSimple &&
        message == other.message &&
        documentationUrl == other.documentationUrl &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, message.hashCode), documentationUrl.hashCode),
        errors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ValidationErrorSimple')
          ..add('message', message)
          ..add('documentationUrl', documentationUrl)
          ..add('errors', errors))
        .toString();
  }
}

class ValidationErrorSimpleBuilder
    implements Builder<ValidationErrorSimple, ValidationErrorSimpleBuilder> {
  _$ValidationErrorSimple _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _documentationUrl;
  String get documentationUrl => _$this._documentationUrl;
  set documentationUrl(String documentationUrl) =>
      _$this._documentationUrl = documentationUrl;

  ListBuilder<String> _errors;
  ListBuilder<String> get errors =>
      _$this._errors ??= new ListBuilder<String>();
  set errors(ListBuilder<String> errors) => _$this._errors = errors;

  ValidationErrorSimpleBuilder() {
    ValidationErrorSimple._initializeBuilder(this);
  }

  ValidationErrorSimpleBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _documentationUrl = _$v.documentationUrl;
      _errors = _$v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationErrorSimple other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ValidationErrorSimple;
  }

  @override
  void update(void Function(ValidationErrorSimpleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ValidationErrorSimple build() {
    _$ValidationErrorSimple _$result;
    try {
      _$result = _$v ??
          new _$ValidationErrorSimple._(
              message: message,
              documentationUrl: documentationUrl,
              errors: _errors?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ValidationErrorSimple', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
