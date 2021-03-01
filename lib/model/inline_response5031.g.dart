// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response5031.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse5031> _$inlineResponse5031Serializer =
    new _$InlineResponse5031Serializer();

class _$InlineResponse5031Serializer
    implements StructuredSerializer<InlineResponse5031> {
  @override
  final Iterable<Type> types = const [InlineResponse5031, _$InlineResponse5031];
  @override
  final String wireName = 'InlineResponse5031';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse5031 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.code != null) {
      result
        ..add('code')
        ..add(serializers.serialize(object.code,
            specifiedType: const FullType(String)));
    }
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
                BuiltList, const [const FullType(InlineResponse5031Errors)])));
    }
    return result;
  }

  @override
  InlineResponse5031 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse5031Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code':
          result.code = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
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
              specifiedType: const FullType(BuiltList, const [
                const FullType(InlineResponse5031Errors)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse5031 extends InlineResponse5031 {
  @override
  final String code;
  @override
  final String message;
  @override
  final String documentationUrl;
  @override
  final BuiltList<InlineResponse5031Errors> errors;

  factory _$InlineResponse5031(
          [void Function(InlineResponse5031Builder) updates]) =>
      (new InlineResponse5031Builder()..update(updates)).build();

  _$InlineResponse5031._(
      {this.code, this.message, this.documentationUrl, this.errors})
      : super._();

  @override
  InlineResponse5031 rebuild(
          void Function(InlineResponse5031Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse5031Builder toBuilder() =>
      new InlineResponse5031Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse5031 &&
        code == other.code &&
        message == other.message &&
        documentationUrl == other.documentationUrl &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, code.hashCode), message.hashCode),
            documentationUrl.hashCode),
        errors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse5031')
          ..add('code', code)
          ..add('message', message)
          ..add('documentationUrl', documentationUrl)
          ..add('errors', errors))
        .toString();
  }
}

class InlineResponse5031Builder
    implements Builder<InlineResponse5031, InlineResponse5031Builder> {
  _$InlineResponse5031 _$v;

  String _code;
  String get code => _$this._code;
  set code(String code) => _$this._code = code;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _documentationUrl;
  String get documentationUrl => _$this._documentationUrl;
  set documentationUrl(String documentationUrl) =>
      _$this._documentationUrl = documentationUrl;

  ListBuilder<InlineResponse5031Errors> _errors;
  ListBuilder<InlineResponse5031Errors> get errors =>
      _$this._errors ??= new ListBuilder<InlineResponse5031Errors>();
  set errors(ListBuilder<InlineResponse5031Errors> errors) =>
      _$this._errors = errors;

  InlineResponse5031Builder() {
    InlineResponse5031._initializeBuilder(this);
  }

  InlineResponse5031Builder get _$this {
    if (_$v != null) {
      _code = _$v.code;
      _message = _$v.message;
      _documentationUrl = _$v.documentationUrl;
      _errors = _$v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse5031 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse5031;
  }

  @override
  void update(void Function(InlineResponse5031Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse5031 build() {
    _$InlineResponse5031 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse5031._(
              code: code,
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
            'InlineResponse5031', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
