// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response4221.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse4221> _$inlineResponse4221Serializer =
    new _$InlineResponse4221Serializer();

class _$InlineResponse4221Serializer
    implements StructuredSerializer<InlineResponse4221> {
  @override
  final Iterable<Type> types = const [InlineResponse4221, _$InlineResponse4221];
  @override
  final String wireName = 'InlineResponse4221';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse4221 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.errors != null) {
      result
        ..add('errors')
        ..add(serializers.serialize(object.errors,
            specifiedType: const FullType(
                BuiltList, const [const FullType(InlineResponse422Errors)])));
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
  InlineResponse4221 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse4221Builder();

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
        case 'errors':
          result.errors.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(InlineResponse422Errors)
              ])) as BuiltList<Object>);
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

class _$InlineResponse4221 extends InlineResponse4221 {
  @override
  final String message;
  @override
  final BuiltList<InlineResponse422Errors> errors;
  @override
  final String documentationUrl;

  factory _$InlineResponse4221(
          [void Function(InlineResponse4221Builder) updates]) =>
      (new InlineResponse4221Builder()..update(updates)).build();

  _$InlineResponse4221._({this.message, this.errors, this.documentationUrl})
      : super._();

  @override
  InlineResponse4221 rebuild(
          void Function(InlineResponse4221Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse4221Builder toBuilder() =>
      new InlineResponse4221Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse4221 &&
        message == other.message &&
        errors == other.errors &&
        documentationUrl == other.documentationUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, message.hashCode), errors.hashCode),
        documentationUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse4221')
          ..add('message', message)
          ..add('errors', errors)
          ..add('documentationUrl', documentationUrl))
        .toString();
  }
}

class InlineResponse4221Builder
    implements Builder<InlineResponse4221, InlineResponse4221Builder> {
  _$InlineResponse4221 _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ListBuilder<InlineResponse422Errors> _errors;
  ListBuilder<InlineResponse422Errors> get errors =>
      _$this._errors ??= new ListBuilder<InlineResponse422Errors>();
  set errors(ListBuilder<InlineResponse422Errors> errors) =>
      _$this._errors = errors;

  String _documentationUrl;
  String get documentationUrl => _$this._documentationUrl;
  set documentationUrl(String documentationUrl) =>
      _$this._documentationUrl = documentationUrl;

  InlineResponse4221Builder() {
    InlineResponse4221._initializeBuilder(this);
  }

  InlineResponse4221Builder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _errors = _$v.errors?.toBuilder();
      _documentationUrl = _$v.documentationUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse4221 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse4221;
  }

  @override
  void update(void Function(InlineResponse4221Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse4221 build() {
    _$InlineResponse4221 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse4221._(
              message: message,
              errors: _errors?.build(),
              documentationUrl: documentationUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse4221', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
