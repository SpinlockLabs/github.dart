// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response403.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse403> _$inlineResponse403Serializer =
    new _$InlineResponse403Serializer();

class _$InlineResponse403Serializer
    implements StructuredSerializer<InlineResponse403> {
  @override
  final Iterable<Type> types = const [InlineResponse403, _$InlineResponse403];
  @override
  final String wireName = 'InlineResponse403';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse403 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.block != null) {
      result
        ..add('block')
        ..add(serializers.serialize(object.block,
            specifiedType: const FullType(InlineResponse403Block)));
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
    return result;
  }

  @override
  InlineResponse403 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse403Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'block':
          result.block.replace(serializers.deserialize(value,
                  specifiedType: const FullType(InlineResponse403Block))
              as InlineResponse403Block);
          break;
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

class _$InlineResponse403 extends InlineResponse403 {
  @override
  final InlineResponse403Block block;
  @override
  final String message;
  @override
  final String documentationUrl;

  factory _$InlineResponse403(
          [void Function(InlineResponse403Builder) updates]) =>
      (new InlineResponse403Builder()..update(updates)).build();

  _$InlineResponse403._({this.block, this.message, this.documentationUrl})
      : super._();

  @override
  InlineResponse403 rebuild(void Function(InlineResponse403Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse403Builder toBuilder() =>
      new InlineResponse403Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse403 &&
        block == other.block &&
        message == other.message &&
        documentationUrl == other.documentationUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, block.hashCode), message.hashCode),
        documentationUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse403')
          ..add('block', block)
          ..add('message', message)
          ..add('documentationUrl', documentationUrl))
        .toString();
  }
}

class InlineResponse403Builder
    implements Builder<InlineResponse403, InlineResponse403Builder> {
  _$InlineResponse403 _$v;

  InlineResponse403BlockBuilder _block;
  InlineResponse403BlockBuilder get block =>
      _$this._block ??= new InlineResponse403BlockBuilder();
  set block(InlineResponse403BlockBuilder block) => _$this._block = block;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _documentationUrl;
  String get documentationUrl => _$this._documentationUrl;
  set documentationUrl(String documentationUrl) =>
      _$this._documentationUrl = documentationUrl;

  InlineResponse403Builder() {
    InlineResponse403._initializeBuilder(this);
  }

  InlineResponse403Builder get _$this {
    if (_$v != null) {
      _block = _$v.block?.toBuilder();
      _message = _$v.message;
      _documentationUrl = _$v.documentationUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse403 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse403;
  }

  @override
  void update(void Function(InlineResponse403Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse403 build() {
    _$InlineResponse403 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse403._(
              block: _block?.build(),
              message: message,
              documentationUrl: documentationUrl);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'block';
        _block?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse403', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
