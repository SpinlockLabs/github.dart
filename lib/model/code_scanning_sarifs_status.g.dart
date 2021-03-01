// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_sarifs_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CodeScanningSarifsStatusProcessingStatusEnum
    _$codeScanningSarifsStatusProcessingStatusEnum_pending =
    const CodeScanningSarifsStatusProcessingStatusEnum._('pending');
const CodeScanningSarifsStatusProcessingStatusEnum
    _$codeScanningSarifsStatusProcessingStatusEnum_complete =
    const CodeScanningSarifsStatusProcessingStatusEnum._('complete');

CodeScanningSarifsStatusProcessingStatusEnum
    _$codeScanningSarifsStatusProcessingStatusEnumValueOf(String name) {
  switch (name) {
    case 'pending':
      return _$codeScanningSarifsStatusProcessingStatusEnum_pending;
    case 'complete':
      return _$codeScanningSarifsStatusProcessingStatusEnum_complete;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CodeScanningSarifsStatusProcessingStatusEnum>
    _$codeScanningSarifsStatusProcessingStatusEnumValues =
    new BuiltSet<CodeScanningSarifsStatusProcessingStatusEnum>(const <
        CodeScanningSarifsStatusProcessingStatusEnum>[
  _$codeScanningSarifsStatusProcessingStatusEnum_pending,
  _$codeScanningSarifsStatusProcessingStatusEnum_complete,
]);

Serializer<CodeScanningSarifsStatus> _$codeScanningSarifsStatusSerializer =
    new _$CodeScanningSarifsStatusSerializer();
Serializer<CodeScanningSarifsStatusProcessingStatusEnum>
    _$codeScanningSarifsStatusProcessingStatusEnumSerializer =
    new _$CodeScanningSarifsStatusProcessingStatusEnumSerializer();

class _$CodeScanningSarifsStatusSerializer
    implements StructuredSerializer<CodeScanningSarifsStatus> {
  @override
  final Iterable<Type> types = const [
    CodeScanningSarifsStatus,
    _$CodeScanningSarifsStatus
  ];
  @override
  final String wireName = 'CodeScanningSarifsStatus';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CodeScanningSarifsStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.processingStatus != null) {
      result
        ..add('processing_status')
        ..add(serializers.serialize(object.processingStatus,
            specifiedType:
                const FullType(CodeScanningSarifsStatusProcessingStatusEnum)));
    }
    if (object.analysesUrl != null) {
      result
        ..add('analyses_url')
        ..add(serializers.serialize(object.analysesUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CodeScanningSarifsStatus deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeScanningSarifsStatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'processing_status':
          result.processingStatus = serializers.deserialize(value,
                  specifiedType: const FullType(
                      CodeScanningSarifsStatusProcessingStatusEnum))
              as CodeScanningSarifsStatusProcessingStatusEnum;
          break;
        case 'analyses_url':
          result.analysesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CodeScanningSarifsStatusProcessingStatusEnumSerializer
    implements
        PrimitiveSerializer<CodeScanningSarifsStatusProcessingStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'pending': 'pending',
    'complete': 'complete',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'pending': 'pending',
    'complete': 'complete',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CodeScanningSarifsStatusProcessingStatusEnum
  ];
  @override
  final String wireName = 'CodeScanningSarifsStatusProcessingStatusEnum';

  @override
  Object serialize(Serializers serializers,
          CodeScanningSarifsStatusProcessingStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CodeScanningSarifsStatusProcessingStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CodeScanningSarifsStatusProcessingStatusEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$CodeScanningSarifsStatus extends CodeScanningSarifsStatus {
  @override
  final CodeScanningSarifsStatusProcessingStatusEnum processingStatus;
  @override
  final String analysesUrl;

  factory _$CodeScanningSarifsStatus(
          [void Function(CodeScanningSarifsStatusBuilder) updates]) =>
      (new CodeScanningSarifsStatusBuilder()..update(updates)).build();

  _$CodeScanningSarifsStatus._({this.processingStatus, this.analysesUrl})
      : super._();

  @override
  CodeScanningSarifsStatus rebuild(
          void Function(CodeScanningSarifsStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeScanningSarifsStatusBuilder toBuilder() =>
      new CodeScanningSarifsStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeScanningSarifsStatus &&
        processingStatus == other.processingStatus &&
        analysesUrl == other.analysesUrl;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, processingStatus.hashCode), analysesUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeScanningSarifsStatus')
          ..add('processingStatus', processingStatus)
          ..add('analysesUrl', analysesUrl))
        .toString();
  }
}

class CodeScanningSarifsStatusBuilder
    implements
        Builder<CodeScanningSarifsStatus, CodeScanningSarifsStatusBuilder> {
  _$CodeScanningSarifsStatus _$v;

  CodeScanningSarifsStatusProcessingStatusEnum _processingStatus;
  CodeScanningSarifsStatusProcessingStatusEnum get processingStatus =>
      _$this._processingStatus;
  set processingStatus(
          CodeScanningSarifsStatusProcessingStatusEnum processingStatus) =>
      _$this._processingStatus = processingStatus;

  String _analysesUrl;
  String get analysesUrl => _$this._analysesUrl;
  set analysesUrl(String analysesUrl) => _$this._analysesUrl = analysesUrl;

  CodeScanningSarifsStatusBuilder() {
    CodeScanningSarifsStatus._initializeBuilder(this);
  }

  CodeScanningSarifsStatusBuilder get _$this {
    if (_$v != null) {
      _processingStatus = _$v.processingStatus;
      _analysesUrl = _$v.analysesUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeScanningSarifsStatus other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeScanningSarifsStatus;
  }

  @override
  void update(void Function(CodeScanningSarifsStatusBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeScanningSarifsStatus build() {
    final _$result = _$v ??
        new _$CodeScanningSarifsStatus._(
            processingStatus: processingStatus, analysesUrl: analysesUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
