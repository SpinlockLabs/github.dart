// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_sarifs_receipt.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeScanningSarifsReceipt> _$codeScanningSarifsReceiptSerializer =
    new _$CodeScanningSarifsReceiptSerializer();

class _$CodeScanningSarifsReceiptSerializer
    implements StructuredSerializer<CodeScanningSarifsReceipt> {
  @override
  final Iterable<Type> types = const [
    CodeScanningSarifsReceipt,
    _$CodeScanningSarifsReceipt
  ];
  @override
  final String wireName = 'CodeScanningSarifsReceipt';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CodeScanningSarifsReceipt object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
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
  CodeScanningSarifsReceipt deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeScanningSarifsReceiptBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
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

class _$CodeScanningSarifsReceipt extends CodeScanningSarifsReceipt {
  @override
  final String id;
  @override
  final String url;

  factory _$CodeScanningSarifsReceipt(
          [void Function(CodeScanningSarifsReceiptBuilder) updates]) =>
      (new CodeScanningSarifsReceiptBuilder()..update(updates)).build();

  _$CodeScanningSarifsReceipt._({this.id, this.url}) : super._();

  @override
  CodeScanningSarifsReceipt rebuild(
          void Function(CodeScanningSarifsReceiptBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeScanningSarifsReceiptBuilder toBuilder() =>
      new CodeScanningSarifsReceiptBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeScanningSarifsReceipt &&
        id == other.id &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, id.hashCode), url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeScanningSarifsReceipt')
          ..add('id', id)
          ..add('url', url))
        .toString();
  }
}

class CodeScanningSarifsReceiptBuilder
    implements
        Builder<CodeScanningSarifsReceipt, CodeScanningSarifsReceiptBuilder> {
  _$CodeScanningSarifsReceipt _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  CodeScanningSarifsReceiptBuilder() {
    CodeScanningSarifsReceipt._initializeBuilder(this);
  }

  CodeScanningSarifsReceiptBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeScanningSarifsReceipt other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeScanningSarifsReceipt;
  }

  @override
  void update(void Function(CodeScanningSarifsReceiptBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeScanningSarifsReceipt build() {
    final _$result = _$v ?? new _$CodeScanningSarifsReceipt._(id: id, url: url);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
