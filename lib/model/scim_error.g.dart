// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scim_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ScimError> _$scimErrorSerializer = new _$ScimErrorSerializer();

class _$ScimErrorSerializer implements StructuredSerializer<ScimError> {
  @override
  final Iterable<Type> types = const [ScimError, _$ScimError];
  @override
  final String wireName = 'ScimError';

  @override
  Iterable<Object> serialize(Serializers serializers, ScimError object,
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
    if (object.detail != null) {
      result
        ..add('detail')
        ..add(serializers.serialize(object.detail,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(int)));
    }
    if (object.scimType != null) {
      result
        ..add('scimType')
        ..add(serializers.serialize(object.scimType,
            specifiedType: const FullType(String)));
    }
    if (object.schemas != null) {
      result
        ..add('schemas')
        ..add(serializers.serialize(object.schemas,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  ScimError deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScimErrorBuilder();

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
        case 'detail':
          result.detail = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'scimType':
          result.scimType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'schemas':
          result.schemas.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ScimError extends ScimError {
  @override
  final String message;
  @override
  final String documentationUrl;
  @override
  final String detail;
  @override
  final int status;
  @override
  final String scimType;
  @override
  final BuiltList<String> schemas;

  factory _$ScimError([void Function(ScimErrorBuilder) updates]) =>
      (new ScimErrorBuilder()..update(updates)).build();

  _$ScimError._(
      {this.message,
      this.documentationUrl,
      this.detail,
      this.status,
      this.scimType,
      this.schemas})
      : super._();

  @override
  ScimError rebuild(void Function(ScimErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScimErrorBuilder toBuilder() => new ScimErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScimError &&
        message == other.message &&
        documentationUrl == other.documentationUrl &&
        detail == other.detail &&
        status == other.status &&
        scimType == other.scimType &&
        schemas == other.schemas;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, message.hashCode), documentationUrl.hashCode),
                    detail.hashCode),
                status.hashCode),
            scimType.hashCode),
        schemas.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScimError')
          ..add('message', message)
          ..add('documentationUrl', documentationUrl)
          ..add('detail', detail)
          ..add('status', status)
          ..add('scimType', scimType)
          ..add('schemas', schemas))
        .toString();
  }
}

class ScimErrorBuilder implements Builder<ScimError, ScimErrorBuilder> {
  _$ScimError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _documentationUrl;
  String get documentationUrl => _$this._documentationUrl;
  set documentationUrl(String documentationUrl) =>
      _$this._documentationUrl = documentationUrl;

  String _detail;
  String get detail => _$this._detail;
  set detail(String detail) => _$this._detail = detail;

  int _status;
  int get status => _$this._status;
  set status(int status) => _$this._status = status;

  String _scimType;
  String get scimType => _$this._scimType;
  set scimType(String scimType) => _$this._scimType = scimType;

  ListBuilder<String> _schemas;
  ListBuilder<String> get schemas =>
      _$this._schemas ??= new ListBuilder<String>();
  set schemas(ListBuilder<String> schemas) => _$this._schemas = schemas;

  ScimErrorBuilder() {
    ScimError._initializeBuilder(this);
  }

  ScimErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _documentationUrl = _$v.documentationUrl;
      _detail = _$v.detail;
      _status = _$v.status;
      _scimType = _$v.scimType;
      _schemas = _$v.schemas?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScimError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScimError;
  }

  @override
  void update(void Function(ScimErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScimError build() {
    _$ScimError _$result;
    try {
      _$result = _$v ??
          new _$ScimError._(
              message: message,
              documentationUrl: documentationUrl,
              detail: detail,
              status: status,
              scimType: scimType,
              schemas: _schemas?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'schemas';
        _schemas?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ScimError', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
