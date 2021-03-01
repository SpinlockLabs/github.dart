// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_alert_rule.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CodeScanningAlertRuleSeverityEnum
    _$codeScanningAlertRuleSeverityEnum_none =
    const CodeScanningAlertRuleSeverityEnum._('none');
const CodeScanningAlertRuleSeverityEnum
    _$codeScanningAlertRuleSeverityEnum_note =
    const CodeScanningAlertRuleSeverityEnum._('note');
const CodeScanningAlertRuleSeverityEnum
    _$codeScanningAlertRuleSeverityEnum_warning =
    const CodeScanningAlertRuleSeverityEnum._('warning');
const CodeScanningAlertRuleSeverityEnum
    _$codeScanningAlertRuleSeverityEnum_error =
    const CodeScanningAlertRuleSeverityEnum._('error');

CodeScanningAlertRuleSeverityEnum _$codeScanningAlertRuleSeverityEnumValueOf(
    String name) {
  switch (name) {
    case 'none':
      return _$codeScanningAlertRuleSeverityEnum_none;
    case 'note':
      return _$codeScanningAlertRuleSeverityEnum_note;
    case 'warning':
      return _$codeScanningAlertRuleSeverityEnum_warning;
    case 'error':
      return _$codeScanningAlertRuleSeverityEnum_error;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CodeScanningAlertRuleSeverityEnum>
    _$codeScanningAlertRuleSeverityEnumValues =
    new BuiltSet<CodeScanningAlertRuleSeverityEnum>(const <
        CodeScanningAlertRuleSeverityEnum>[
  _$codeScanningAlertRuleSeverityEnum_none,
  _$codeScanningAlertRuleSeverityEnum_note,
  _$codeScanningAlertRuleSeverityEnum_warning,
  _$codeScanningAlertRuleSeverityEnum_error,
]);

Serializer<CodeScanningAlertRule> _$codeScanningAlertRuleSerializer =
    new _$CodeScanningAlertRuleSerializer();
Serializer<CodeScanningAlertRuleSeverityEnum>
    _$codeScanningAlertRuleSeverityEnumSerializer =
    new _$CodeScanningAlertRuleSeverityEnumSerializer();

class _$CodeScanningAlertRuleSerializer
    implements StructuredSerializer<CodeScanningAlertRule> {
  @override
  final Iterable<Type> types = const [
    CodeScanningAlertRule,
    _$CodeScanningAlertRule
  ];
  @override
  final String wireName = 'CodeScanningAlertRule';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CodeScanningAlertRule object,
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
            specifiedType: const FullType(CodeScanningAlertRuleSeverityEnum)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.fullDescription != null) {
      result
        ..add('full_description')
        ..add(serializers.serialize(object.fullDescription,
            specifiedType: const FullType(String)));
    }
    if (object.tags != null) {
      result
        ..add('tags')
        ..add(serializers.serialize(object.tags,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.help != null) {
      result
        ..add('help')
        ..add(serializers.serialize(object.help,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CodeScanningAlertRule deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeScanningAlertRuleBuilder();

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
                      const FullType(CodeScanningAlertRuleSeverityEnum))
              as CodeScanningAlertRuleSeverityEnum;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'full_description':
          result.fullDescription = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tags':
          result.tags.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'help':
          result.help = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CodeScanningAlertRuleSeverityEnumSerializer
    implements PrimitiveSerializer<CodeScanningAlertRuleSeverityEnum> {
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
  final Iterable<Type> types = const <Type>[CodeScanningAlertRuleSeverityEnum];
  @override
  final String wireName = 'CodeScanningAlertRuleSeverityEnum';

  @override
  Object serialize(
          Serializers serializers, CodeScanningAlertRuleSeverityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CodeScanningAlertRuleSeverityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CodeScanningAlertRuleSeverityEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$CodeScanningAlertRule extends CodeScanningAlertRule {
  @override
  final String id;
  @override
  final String name;
  @override
  final CodeScanningAlertRuleSeverityEnum severity;
  @override
  final String description;
  @override
  final String fullDescription;
  @override
  final BuiltList<String> tags;
  @override
  final String help;

  factory _$CodeScanningAlertRule(
          [void Function(CodeScanningAlertRuleBuilder) updates]) =>
      (new CodeScanningAlertRuleBuilder()..update(updates)).build();

  _$CodeScanningAlertRule._(
      {this.id,
      this.name,
      this.severity,
      this.description,
      this.fullDescription,
      this.tags,
      this.help})
      : super._();

  @override
  CodeScanningAlertRule rebuild(
          void Function(CodeScanningAlertRuleBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeScanningAlertRuleBuilder toBuilder() =>
      new CodeScanningAlertRuleBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeScanningAlertRule &&
        id == other.id &&
        name == other.name &&
        severity == other.severity &&
        description == other.description &&
        fullDescription == other.fullDescription &&
        tags == other.tags &&
        help == other.help;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                        severity.hashCode),
                    description.hashCode),
                fullDescription.hashCode),
            tags.hashCode),
        help.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeScanningAlertRule')
          ..add('id', id)
          ..add('name', name)
          ..add('severity', severity)
          ..add('description', description)
          ..add('fullDescription', fullDescription)
          ..add('tags', tags)
          ..add('help', help))
        .toString();
  }
}

class CodeScanningAlertRuleBuilder
    implements Builder<CodeScanningAlertRule, CodeScanningAlertRuleBuilder> {
  _$CodeScanningAlertRule _$v;

  String _id;
  String get id => _$this._id;
  set id(String id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  CodeScanningAlertRuleSeverityEnum _severity;
  CodeScanningAlertRuleSeverityEnum get severity => _$this._severity;
  set severity(CodeScanningAlertRuleSeverityEnum severity) =>
      _$this._severity = severity;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _fullDescription;
  String get fullDescription => _$this._fullDescription;
  set fullDescription(String fullDescription) =>
      _$this._fullDescription = fullDescription;

  ListBuilder<String> _tags;
  ListBuilder<String> get tags => _$this._tags ??= new ListBuilder<String>();
  set tags(ListBuilder<String> tags) => _$this._tags = tags;

  String _help;
  String get help => _$this._help;
  set help(String help) => _$this._help = help;

  CodeScanningAlertRuleBuilder() {
    CodeScanningAlertRule._initializeBuilder(this);
  }

  CodeScanningAlertRuleBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _severity = _$v.severity;
      _description = _$v.description;
      _fullDescription = _$v.fullDescription;
      _tags = _$v.tags?.toBuilder();
      _help = _$v.help;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeScanningAlertRule other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeScanningAlertRule;
  }

  @override
  void update(void Function(CodeScanningAlertRuleBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeScanningAlertRule build() {
    _$CodeScanningAlertRule _$result;
    try {
      _$result = _$v ??
          new _$CodeScanningAlertRule._(
              id: id,
              name: name,
              severity: severity,
              description: description,
              fullDescription: fullDescription,
              tags: _tags?.build(),
              help: help);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tags';
        _tags?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CodeScanningAlertRule', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
