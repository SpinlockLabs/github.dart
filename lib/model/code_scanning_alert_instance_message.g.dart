// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_alert_instance_message.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeScanningAlertInstanceMessage>
    _$codeScanningAlertInstanceMessageSerializer =
    new _$CodeScanningAlertInstanceMessageSerializer();

class _$CodeScanningAlertInstanceMessageSerializer
    implements StructuredSerializer<CodeScanningAlertInstanceMessage> {
  @override
  final Iterable<Type> types = const [
    CodeScanningAlertInstanceMessage,
    _$CodeScanningAlertInstanceMessage
  ];
  @override
  final String wireName = 'CodeScanningAlertInstanceMessage';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CodeScanningAlertInstanceMessage object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CodeScanningAlertInstanceMessage deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeScanningAlertInstanceMessageBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CodeScanningAlertInstanceMessage
    extends CodeScanningAlertInstanceMessage {
  @override
  final String text;

  factory _$CodeScanningAlertInstanceMessage(
          [void Function(CodeScanningAlertInstanceMessageBuilder) updates]) =>
      (new CodeScanningAlertInstanceMessageBuilder()..update(updates)).build();

  _$CodeScanningAlertInstanceMessage._({this.text}) : super._();

  @override
  CodeScanningAlertInstanceMessage rebuild(
          void Function(CodeScanningAlertInstanceMessageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeScanningAlertInstanceMessageBuilder toBuilder() =>
      new CodeScanningAlertInstanceMessageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeScanningAlertInstanceMessage && text == other.text;
  }

  @override
  int get hashCode {
    return $jf($jc(0, text.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeScanningAlertInstanceMessage')
          ..add('text', text))
        .toString();
  }
}

class CodeScanningAlertInstanceMessageBuilder
    implements
        Builder<CodeScanningAlertInstanceMessage,
            CodeScanningAlertInstanceMessageBuilder> {
  _$CodeScanningAlertInstanceMessage _$v;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  CodeScanningAlertInstanceMessageBuilder() {
    CodeScanningAlertInstanceMessage._initializeBuilder(this);
  }

  CodeScanningAlertInstanceMessageBuilder get _$this {
    if (_$v != null) {
      _text = _$v.text;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeScanningAlertInstanceMessage other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeScanningAlertInstanceMessage;
  }

  @override
  void update(void Function(CodeScanningAlertInstanceMessageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeScanningAlertInstanceMessage build() {
    final _$result =
        _$v ?? new _$CodeScanningAlertInstanceMessage._(text: text);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
