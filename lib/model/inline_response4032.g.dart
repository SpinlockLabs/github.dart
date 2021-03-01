// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response4032.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse4032> _$inlineResponse4032Serializer =
    new _$InlineResponse4032Serializer();

class _$InlineResponse4032Serializer
    implements StructuredSerializer<InlineResponse4032> {
  @override
  final Iterable<Type> types = const [InlineResponse4032, _$InlineResponse4032];
  @override
  final String wireName = 'InlineResponse4032';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse4032 object,
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
  InlineResponse4032 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse4032Builder();

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

class _$InlineResponse4032 extends InlineResponse4032 {
  @override
  final String message;
  @override
  final String documentationUrl;
  @override
  final BuiltList<String> errors;

  factory _$InlineResponse4032(
          [void Function(InlineResponse4032Builder) updates]) =>
      (new InlineResponse4032Builder()..update(updates)).build();

  _$InlineResponse4032._({this.message, this.documentationUrl, this.errors})
      : super._();

  @override
  InlineResponse4032 rebuild(
          void Function(InlineResponse4032Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse4032Builder toBuilder() =>
      new InlineResponse4032Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse4032 &&
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
    return (newBuiltValueToStringHelper('InlineResponse4032')
          ..add('message', message)
          ..add('documentationUrl', documentationUrl)
          ..add('errors', errors))
        .toString();
  }
}

class InlineResponse4032Builder
    implements Builder<InlineResponse4032, InlineResponse4032Builder> {
  _$InlineResponse4032 _$v;

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

  InlineResponse4032Builder() {
    InlineResponse4032._initializeBuilder(this);
  }

  InlineResponse4032Builder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _documentationUrl = _$v.documentationUrl;
      _errors = _$v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse4032 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse4032;
  }

  @override
  void update(void Function(InlineResponse4032Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse4032 build() {
    _$InlineResponse4032 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse4032._(
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
            'InlineResponse4032', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
