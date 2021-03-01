// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'validation_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ValidationError> _$validationErrorSerializer =
    new _$ValidationErrorSerializer();

class _$ValidationErrorSerializer
    implements StructuredSerializer<ValidationError> {
  @override
  final Iterable<Type> types = const [ValidationError, _$ValidationError];
  @override
  final String wireName = 'ValidationError';

  @override
  Iterable<Object> serialize(Serializers serializers, ValidationError object,
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
            specifiedType: const FullType(
                BuiltList, const [const FullType(ValidationErrorErrors)])));
    }
    return result;
  }

  @override
  ValidationError deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ValidationErrorBuilder();

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
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(ValidationErrorErrors)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ValidationError extends ValidationError {
  @override
  final String message;
  @override
  final String documentationUrl;
  @override
  final BuiltList<ValidationErrorErrors> errors;

  factory _$ValidationError([void Function(ValidationErrorBuilder) updates]) =>
      (new ValidationErrorBuilder()..update(updates)).build();

  _$ValidationError._({this.message, this.documentationUrl, this.errors})
      : super._();

  @override
  ValidationError rebuild(void Function(ValidationErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ValidationErrorBuilder toBuilder() =>
      new ValidationErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ValidationError &&
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
    return (newBuiltValueToStringHelper('ValidationError')
          ..add('message', message)
          ..add('documentationUrl', documentationUrl)
          ..add('errors', errors))
        .toString();
  }
}

class ValidationErrorBuilder
    implements Builder<ValidationError, ValidationErrorBuilder> {
  _$ValidationError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _documentationUrl;
  String get documentationUrl => _$this._documentationUrl;
  set documentationUrl(String documentationUrl) =>
      _$this._documentationUrl = documentationUrl;

  ListBuilder<ValidationErrorErrors> _errors;
  ListBuilder<ValidationErrorErrors> get errors =>
      _$this._errors ??= new ListBuilder<ValidationErrorErrors>();
  set errors(ListBuilder<ValidationErrorErrors> errors) =>
      _$this._errors = errors;

  ValidationErrorBuilder() {
    ValidationError._initializeBuilder(this);
  }

  ValidationErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _documentationUrl = _$v.documentationUrl;
      _errors = _$v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ValidationError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ValidationError;
  }

  @override
  void update(void Function(ValidationErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ValidationError build() {
    _$ValidationError _$result;
    try {
      _$result = _$v ??
          new _$ValidationError._(
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
            'ValidationError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
