// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_alert_rule_summary.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CodeScanningAlertRuleSummarySeverityEnum
    _$codeScanningAlertRuleSummarySeverityEnum_none =
    const CodeScanningAlertRuleSummarySeverityEnum._('none');
const CodeScanningAlertRuleSummarySeverityEnum
    _$codeScanningAlertRuleSummarySeverityEnum_note =
    const CodeScanningAlertRuleSummarySeverityEnum._('note');
const CodeScanningAlertRuleSummarySeverityEnum
    _$codeScanningAlertRuleSummarySeverityEnum_warning =
    const CodeScanningAlertRuleSummarySeverityEnum._('warning');
const CodeScanningAlertRuleSummarySeverityEnum
    _$codeScanningAlertRuleSummarySeverityEnum_error =
    const CodeScanningAlertRuleSummarySeverityEnum._('error');

CodeScanningAlertRuleSummarySeverityEnum
    _$codeScanningAlertRuleSummarySeverityEnumValueOf(String name) {
  switch (name) {
    case 'none':
      return _$codeScanningAlertRuleSummarySeverityEnum_none;
    case 'note':
      return _$codeScanningAlertRuleSummarySeverityEnum_note;
    case 'warning':
      return _$codeScanningAlertRuleSummarySeverityEnum_warning;
    case 'error':
      return _$codeScanningAlertRuleSummarySeverityEnum_error;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CodeScanningAlertRuleSummarySeverityEnum>
    _$codeScanningAlertRuleSummarySeverityEnumValues =
    new BuiltSet<CodeScanningAlertRuleSummarySeverityEnum>(const <
        CodeScanningAlertRuleSummarySeverityEnum>[
  _$codeScanningAlertRuleSummarySeverityEnum_none,
  _$codeScanningAlertRuleSummarySeverityEnum_note,
  _$codeScanningAlertRuleSummarySeverityEnum_warning,
  _$codeScanningAlertRuleSummarySeverityEnum_error,
]);

Serializer<CodeScanningAlertRuleSummary>
    _$codeScanningAlertRuleSummarySerializer =
    new _$CodeScanningAlertRuleSummarySerializer();
Serializer<CodeScanningAlertRuleSummarySeverityEnum>
    _$codeScanningAlertRuleSummarySeverityEnumSerializer =
    new _$CodeScanningAlertRuleSummarySeverityEnumSerializer();

class _$CodeScanningAlertRuleSummarySerializer
    implements StructuredSerializer<CodeScanningAlertRuleSummary> {
  @override
  final Iterable<Type> types = const [
    CodeScanningAlertRuleSummary,
    _$CodeScanningAlertRuleSummary
  ];
  @override
  final String wireName = 'CodeScanningAlertRuleSummary';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CodeScanningAlertRuleSummary object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.severity != null) {
      result
        ..add('severity')
        ..add(serializers.serialize(object.severity,
            specifiedType:
                const FullType(CodeScanningAlertRuleSummarySeverityEnum)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CodeScanningAlertRuleSummary deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeScanningAlertRuleSummaryBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'severity':
          result.severity = serializers.deserialize(value,
                  specifiedType:
                      const FullType(CodeScanningAlertRuleSummarySeverityEnum))
              as CodeScanningAlertRuleSummarySeverityEnum;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CodeScanningAlertRuleSummarySeverityEnumSerializer
    implements PrimitiveSerializer<CodeScanningAlertRuleSummarySeverityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'none': 'none',
    'note': 'note',
    'warning': 'warning',
    'error': 'error',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'none': 'none',
    'note': 'note',
    'warning': 'warning',
    'error': 'error',
  };

  @override
  final Iterable<Type> types = const <Type>[
    CodeScanningAlertRuleSummarySeverityEnum
  ];
  @override
  final String wireName = 'CodeScanningAlertRuleSummarySeverityEnum';

  @override
  Object serialize(Serializers serializers,
          CodeScanningAlertRuleSummarySeverityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CodeScanningAlertRuleSummarySeverityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CodeScanningAlertRuleSummarySeverityEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$CodeScanningAlertRuleSummary extends CodeScanningAlertRuleSummary {
  @override
  final String id;
  @override
  final String name;
  @override
  final CodeScanningAlertRuleSummarySeverityEnum severity;
  @override
  final String description;

  factory _$CodeScanningAlertRuleSummary(
          [void Function(CodeScanningAlertRuleSummaryBuilder) updates]) =>
      (new CodeScanningAlertRuleSummaryBuilder()..update(updates)).build();

  _$CodeScanningAlertRuleSummary._(
      {this.id, this.name, this.severity, this.description})
      : super._();

  @override
  CodeScanningAlertRuleSummary rebuild(
          void Function(CodeScanningAlertRuleSummaryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeScanningAlertRuleSummaryBuilder toBuilder() =>
      new CodeScanningAlertRuleSummaryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeScanningAlertRuleSummary &&
        id == other.id &&
        name == other.name &&
        severity == other.severity &&
        description == other.description;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, id.hashCode), name.hashCode), severity.hashCode),
        description.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeScanningAlertRuleSummary')
          ..add('id', id)
          ..add('name', name)
          ..add('severity', severity)
          ..add('description', description))
        .toString();
  }
}

class CodeScanningAlertRuleSummaryBuilder
    implements
        Builder<CodeScanningAlertRuleSummary,
            CodeScanningAlertRuleSummaryBuilder> {
  _$CodeScanningAlertRuleSummary _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  CodeScanningAlertRuleSummarySeverityEnum _severity;
  CodeScanningAlertRuleSummarySeverityEnum get severity => _$this._severity;
  set severity(CodeScanningAlertRuleSummarySeverityEnum severity) =>
      _$this._severity = severity;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  CodeScanningAlertRuleSummaryBuilder() {
    CodeScanningAlertRuleSummary._initializeBuilder(this);
  }

  CodeScanningAlertRuleSummaryBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _severity = _$v.severity;
      _description = _$v.description;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeScanningAlertRuleSummary other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeScanningAlertRuleSummary;
  }

  @override
  void update(void Function(CodeScanningAlertRuleSummaryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeScanningAlertRuleSummary build() {
    final _$result = _$v ??
        new _$CodeScanningAlertRuleSummary._(
            id: id, name: name, severity: severity, description: description);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
