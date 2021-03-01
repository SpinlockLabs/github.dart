// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_alert_items.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeScanningAlertItems> _$codeScanningAlertItemsSerializer =
    new _$CodeScanningAlertItemsSerializer();

class _$CodeScanningAlertItemsSerializer
    implements StructuredSerializer<CodeScanningAlertItems> {
  @override
  final Iterable<Type> types = const [
    CodeScanningAlertItems,
    _$CodeScanningAlertItems
  ];
  @override
  final String wireName = 'CodeScanningAlertItems';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CodeScanningAlertItems object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.instancesUrl != null) {
      result
        ..add('instances_url')
        ..add(serializers.serialize(object.instancesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(CodeScanningAlertState)));
    }
    if (object.dismissedBy != null) {
      result
        ..add('dismissed_by')
        ..add(serializers.serialize(object.dismissedBy,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.dismissedAt != null) {
      result
        ..add('dismissed_at')
        ..add(serializers.serialize(object.dismissedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.dismissedReason != null) {
      result
        ..add('dismissed_reason')
        ..add(serializers.serialize(object.dismissedReason,
            specifiedType: const FullType(CodeScanningAlertDismissedReason)));
    }
    if (object.rule != null) {
      result
        ..add('rule')
        ..add(serializers.serialize(object.rule,
            specifiedType: const FullType(CodeScanningAlertRuleSummary)));
    }
    if (object.tool != null) {
      result
        ..add('tool')
        ..add(serializers.serialize(object.tool,
            specifiedType: const FullType(CodeScanningAnalysisTool)));
    }
    if (object.mostRecentInstance != null) {
      result
        ..add('most_recent_instance')
        ..add(serializers.serialize(object.mostRecentInstance,
            specifiedType: const FullType(CodeScanningAlertInstance)));
    }
    return result;
  }

  @override
  CodeScanningAlertItems deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeScanningAlertItemsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'instances_url':
          result.instancesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(CodeScanningAlertState))
              as CodeScanningAlertState;
          break;
        case 'dismissed_by':
          result.dismissedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'dismissed_at':
          result.dismissedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'dismissed_reason':
          result.dismissedReason.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(CodeScanningAlertDismissedReason))
              as CodeScanningAlertDismissedReason);
          break;
        case 'rule':
          result.rule.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CodeScanningAlertRuleSummary))
              as CodeScanningAlertRuleSummary);
          break;
        case 'tool':
          result.tool.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CodeScanningAnalysisTool))
              as CodeScanningAnalysisTool);
          break;
        case 'most_recent_instance':
          result.mostRecentInstance.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CodeScanningAlertInstance))
              as CodeScanningAlertInstance);
          break;
      }
    }

    return result.build();
  }
}

class _$CodeScanningAlertItems extends CodeScanningAlertItems {
  @override
  final int number;
  @override
  final DateTime createdAt;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String instancesUrl;
  @override
  final CodeScanningAlertState state;
  @override
  final SimpleUser dismissedBy;
  @override
  final DateTime dismissedAt;
  @override
  final CodeScanningAlertDismissedReason dismissedReason;
  @override
  final CodeScanningAlertRuleSummary rule;
  @override
  final CodeScanningAnalysisTool tool;
  @override
  final CodeScanningAlertInstance mostRecentInstance;

  factory _$CodeScanningAlertItems(
          [void Function(CodeScanningAlertItemsBuilder) updates]) =>
      (new CodeScanningAlertItemsBuilder()..update(updates)).build();

  _$CodeScanningAlertItems._(
      {this.number,
      this.createdAt,
      this.url,
      this.htmlUrl,
      this.instancesUrl,
      this.state,
      this.dismissedBy,
      this.dismissedAt,
      this.dismissedReason,
      this.rule,
      this.tool,
      this.mostRecentInstance})
      : super._();

  @override
  CodeScanningAlertItems rebuild(
          void Function(CodeScanningAlertItemsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeScanningAlertItemsBuilder toBuilder() =>
      new CodeScanningAlertItemsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeScanningAlertItems &&
        number == other.number &&
        createdAt == other.createdAt &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        instancesUrl == other.instancesUrl &&
        state == other.state &&
        dismissedBy == other.dismissedBy &&
        dismissedAt == other.dismissedAt &&
        dismissedReason == other.dismissedReason &&
        rule == other.rule &&
        tool == other.tool &&
        mostRecentInstance == other.mostRecentInstance;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc($jc(0, number.hashCode),
                                                createdAt.hashCode),
                                            url.hashCode),
                                        htmlUrl.hashCode),
                                    instancesUrl.hashCode),
                                state.hashCode),
                            dismissedBy.hashCode),
                        dismissedAt.hashCode),
                    dismissedReason.hashCode),
                rule.hashCode),
            tool.hashCode),
        mostRecentInstance.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeScanningAlertItems')
          ..add('number', number)
          ..add('createdAt', createdAt)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('instancesUrl', instancesUrl)
          ..add('state', state)
          ..add('dismissedBy', dismissedBy)
          ..add('dismissedAt', dismissedAt)
          ..add('dismissedReason', dismissedReason)
          ..add('rule', rule)
          ..add('tool', tool)
          ..add('mostRecentInstance', mostRecentInstance))
        .toString();
  }
}

class CodeScanningAlertItemsBuilder
    implements Builder<CodeScanningAlertItems, CodeScanningAlertItemsBuilder> {
  _$CodeScanningAlertItems _$v;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _instancesUrl;
  String get instancesUrl => _$this._instancesUrl;
  set instancesUrl(String instancesUrl) => _$this._instancesUrl = instancesUrl;

  CodeScanningAlertState _state;
  CodeScanningAlertState get state => _$this._state;
  set state(CodeScanningAlertState state) => _$this._state = state;

  SimpleUserBuilder _dismissedBy;
  SimpleUserBuilder get dismissedBy =>
      _$this._dismissedBy ??= new SimpleUserBuilder();
  set dismissedBy(SimpleUserBuilder dismissedBy) =>
      _$this._dismissedBy = dismissedBy;

  DateTime _dismissedAt;
  DateTime get dismissedAt => _$this._dismissedAt;
  set dismissedAt(DateTime dismissedAt) => _$this._dismissedAt = dismissedAt;

  CodeScanningAlertDismissedReasonBuilder _dismissedReason;
  CodeScanningAlertDismissedReasonBuilder get dismissedReason =>
      _$this._dismissedReason ??= new CodeScanningAlertDismissedReasonBuilder();
  set dismissedReason(
          CodeScanningAlertDismissedReasonBuilder dismissedReason) =>
      _$this._dismissedReason = dismissedReason;

  CodeScanningAlertRuleSummaryBuilder _rule;
  CodeScanningAlertRuleSummaryBuilder get rule =>
      _$this._rule ??= new CodeScanningAlertRuleSummaryBuilder();
  set rule(CodeScanningAlertRuleSummaryBuilder rule) => _$this._rule = rule;

  CodeScanningAnalysisToolBuilder _tool;
  CodeScanningAnalysisToolBuilder get tool =>
      _$this._tool ??= new CodeScanningAnalysisToolBuilder();
  set tool(CodeScanningAnalysisToolBuilder tool) => _$this._tool = tool;

  CodeScanningAlertInstanceBuilder _mostRecentInstance;
  CodeScanningAlertInstanceBuilder get mostRecentInstance =>
      _$this._mostRecentInstance ??= new CodeScanningAlertInstanceBuilder();
  set mostRecentInstance(CodeScanningAlertInstanceBuilder mostRecentInstance) =>
      _$this._mostRecentInstance = mostRecentInstance;

  CodeScanningAlertItemsBuilder() {
    CodeScanningAlertItems._initializeBuilder(this);
  }

  CodeScanningAlertItemsBuilder get _$this {
    if (_$v != null) {
      _number = _$v.number;
      _createdAt = _$v.createdAt;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _instancesUrl = _$v.instancesUrl;
      _state = _$v.state;
      _dismissedBy = _$v.dismissedBy?.toBuilder();
      _dismissedAt = _$v.dismissedAt;
      _dismissedReason = _$v.dismissedReason?.toBuilder();
      _rule = _$v.rule?.toBuilder();
      _tool = _$v.tool?.toBuilder();
      _mostRecentInstance = _$v.mostRecentInstance?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeScanningAlertItems other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeScanningAlertItems;
  }

  @override
  void update(void Function(CodeScanningAlertItemsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeScanningAlertItems build() {
    _$CodeScanningAlertItems _$result;
    try {
      _$result = _$v ??
          new _$CodeScanningAlertItems._(
              number: number,
              createdAt: createdAt,
              url: url,
              htmlUrl: htmlUrl,
              instancesUrl: instancesUrl,
              state: state,
              dismissedBy: _dismissedBy?.build(),
              dismissedAt: dismissedAt,
              dismissedReason: _dismissedReason?.build(),
              rule: _rule?.build(),
              tool: _tool?.build(),
              mostRecentInstance: _mostRecentInstance?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'dismissedBy';
        _dismissedBy?.build();

        _$failedField = 'dismissedReason';
        _dismissedReason?.build();
        _$failedField = 'rule';
        _rule?.build();
        _$failedField = 'tool';
        _tool?.build();
        _$failedField = 'mostRecentInstance';
        _mostRecentInstance?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CodeScanningAlertItems', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
