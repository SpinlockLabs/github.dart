// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response2021.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse2021> _$inlineResponse2021Serializer =
    new _$InlineResponse2021Serializer();

class _$InlineResponse2021Serializer
    implements StructuredSerializer<InlineResponse2021> {
  @override
  final Iterable<Type> types = const [InlineResponse2021, _$InlineResponse2021];
  @override
  final String wireName = 'InlineResponse2021';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse2021 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineResponse2021 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse2021Builder();

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
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse2021 extends InlineResponse2021 {
  @override
  final String message;
  @override
  final String url;

  factory _$InlineResponse2021(
          [void Function(InlineResponse2021Builder) updates]) =>
      (new InlineResponse2021Builder()..update(updates)).build();

  _$InlineResponse2021._({this.message, this.url}) : super._();

  @override
  InlineResponse2021 rebuild(
          void Function(InlineResponse2021Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2021Builder toBuilder() =>
      new InlineResponse2021Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2021 &&
        message == other.message &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, message.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse2021')
          ..add('message', message)
          ..add('url', url))
        .toString();
  }
}

class InlineResponse2021Builder
    implements Builder<InlineResponse2021, InlineResponse2021Builder> {
  _$InlineResponse2021 _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  InlineResponse2021Builder() {
    InlineResponse2021._initializeBuilder(this);
  }

  InlineResponse2021Builder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse2021 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse2021;
  }

  @override
  void update(void Function(InlineResponse2021Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse2021 build() {
    final _$result =
        _$v ?? new _$InlineResponse2021._(message: message, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
