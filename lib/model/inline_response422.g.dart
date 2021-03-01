// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response422.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse422> _$inlineResponse422Serializer =
    new _$InlineResponse422Serializer();

class _$InlineResponse422Serializer
    implements StructuredSerializer<InlineResponse422> {
  @override
  final Iterable<Type> types = const [InlineResponse422, _$InlineResponse422];
  @override
  final String wireName = 'InlineResponse422';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse422 object,
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
    return result;
  }

  @override
  InlineResponse422 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse422Builder();

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
      }
    }

    return result.build();
  }
}

class _$InlineResponse422 extends InlineResponse422 {
  @override
  final String message;
  @override
  final BuiltList<InlineResponse422Errors> errors;

  factory _$InlineResponse422(
          [void Function(InlineResponse422Builder) updates]) =>
      (new InlineResponse422Builder()..update(updates)).build();

  _$InlineResponse422._({this.message, this.errors}) : super._();

  @override
  InlineResponse422 rebuild(void Function(InlineResponse422Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse422Builder toBuilder() =>
      new InlineResponse422Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse422 &&
        message == other.message &&
        errors == other.errors;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), errors.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse422')
          ..add('message', message)
          ..add('errors', errors))
        .toString();
  }
}

class InlineResponse422Builder
    implements Builder<InlineResponse422, InlineResponse422Builder> {
  _$InlineResponse422 _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  ListBuilder<InlineResponse422Errors> _errors;
  ListBuilder<InlineResponse422Errors> get errors =>
      _$this._errors ??= new ListBuilder<InlineResponse422Errors>();
  set errors(ListBuilder<InlineResponse422Errors> errors) =>
      _$this._errors = errors;

  InlineResponse422Builder() {
    InlineResponse422._initializeBuilder(this);
  }

  InlineResponse422Builder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _errors = _$v.errors?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse422 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse422;
  }

  @override
  void update(void Function(InlineResponse422Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse422 build() {
    _$InlineResponse422 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse422._(message: message, errors: _errors?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'errors';
        _errors?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse422', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
