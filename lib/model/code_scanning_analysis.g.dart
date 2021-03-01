// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_analysis.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeScanningAnalysis> _$codeScanningAnalysisSerializer =
    new _$CodeScanningAnalysisSerializer();

class _$CodeScanningAnalysisSerializer
    implements StructuredSerializer<CodeScanningAnalysis> {
  @override
  final Iterable<Type> types = const [
    CodeScanningAnalysis,
    _$CodeScanningAnalysis
  ];
  @override
  final String wireName = 'CodeScanningAnalysis';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CodeScanningAnalysis object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ref != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(object.ref,
            specifiedType: const FullType(String)));
    }
    if (object.commitSha != null) {
      result
        ..add('commit_sha')
        ..add(serializers.serialize(object.commitSha,
            specifiedType: const FullType(String)));
    }
    if (object.analysisKey != null) {
      result
        ..add('analysis_key')
        ..add(serializers.serialize(object.analysisKey,
            specifiedType: const FullType(String)));
    }
    if (object.environment != null) {
      result
        ..add('environment')
        ..add(serializers.serialize(object.environment,
            specifiedType: const FullType(String)));
    }
    if (object.error != null) {
      result
        ..add('error')
        ..add(serializers.serialize(object.error,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.resultsCount != null) {
      result
        ..add('results_count')
        ..add(serializers.serialize(object.resultsCount,
            specifiedType: const FullType(int)));
    }
    if (object.rulesCount != null) {
      result
        ..add('rules_count')
        ..add(serializers.serialize(object.rulesCount,
            specifiedType: const FullType(int)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.sarifId != null) {
      result
        ..add('sarif_id')
        ..add(serializers.serialize(object.sarifId,
            specifiedType: const FullType(String)));
    }
    if (object.tool != null) {
      result
        ..add('tool')
        ..add(serializers.serialize(object.tool,
            specifiedType: const FullType(CodeScanningAnalysisTool)));
    }
    if (object.deletable != null) {
      result
        ..add('deletable')
        ..add(serializers.serialize(object.deletable,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  CodeScanningAnalysis deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeScanningAnalysisBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit_sha':
          result.commitSha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'analysis_key':
          result.analysisKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'environment':
          result.environment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'error':
          result.error = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'results_count':
          result.resultsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'rules_count':
          result.rulesCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sarif_id':
          result.sarifId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'tool':
          result.tool.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CodeScanningAnalysisTool))
              as CodeScanningAnalysisTool);
          break;
        case 'deletable':
          result.deletable = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$CodeScanningAnalysis extends CodeScanningAnalysis {
  @override
  final String ref;
  @override
  final String commitSha;
  @override
  final String analysisKey;
  @override
  final String environment;
  @override
  final String error;
  @override
  final DateTime createdAt;
  @override
  final int resultsCount;
  @override
  final int rulesCount;
  @override
  final int id;
  @override
  final String url;
  @override
  final String sarifId;
  @override
  final CodeScanningAnalysisTool tool;
  @override
  final bool deletable;

  factory _$CodeScanningAnalysis(
          [void Function(CodeScanningAnalysisBuilder) updates]) =>
      (new CodeScanningAnalysisBuilder()..update(updates)).build();

  _$CodeScanningAnalysis._(
      {this.ref,
      this.commitSha,
      this.analysisKey,
      this.environment,
      this.error,
      this.createdAt,
      this.resultsCount,
      this.rulesCount,
      this.id,
      this.url,
      this.sarifId,
      this.tool,
      this.deletable})
      : super._();

  @override
  CodeScanningAnalysis rebuild(
          void Function(CodeScanningAnalysisBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeScanningAnalysisBuilder toBuilder() =>
      new CodeScanningAnalysisBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeScanningAnalysis &&
        ref == other.ref &&
        commitSha == other.commitSha &&
        analysisKey == other.analysisKey &&
        environment == other.environment &&
        error == other.error &&
        createdAt == other.createdAt &&
        resultsCount == other.resultsCount &&
        rulesCount == other.rulesCount &&
        id == other.id &&
        url == other.url &&
        sarifId == other.sarifId &&
        tool == other.tool &&
        deletable == other.deletable;
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
                                            $jc(
                                                $jc($jc(0, ref.hashCode),
                                                    commitSha.hashCode),
                                                analysisKey.hashCode),
                                            environment.hashCode),
                                        error.hashCode),
                                    createdAt.hashCode),
                                resultsCount.hashCode),
                            rulesCount.hashCode),
                        id.hashCode),
                    url.hashCode),
                sarifId.hashCode),
            tool.hashCode),
        deletable.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeScanningAnalysis')
          ..add('ref', ref)
          ..add('commitSha', commitSha)
          ..add('analysisKey', analysisKey)
          ..add('environment', environment)
          ..add('error', error)
          ..add('createdAt', createdAt)
          ..add('resultsCount', resultsCount)
          ..add('rulesCount', rulesCount)
          ..add('id', id)
          ..add('url', url)
          ..add('sarifId', sarifId)
          ..add('tool', tool)
          ..add('deletable', deletable))
        .toString();
  }
}

class CodeScanningAnalysisBuilder
    implements Builder<CodeScanningAnalysis, CodeScanningAnalysisBuilder> {
  _$CodeScanningAnalysis _$v;

  String _ref;
  String get ref => _$this._ref;
  set ref(String ref) => _$this._ref = ref;

  String _commitSha;
  String get commitSha => _$this._commitSha;
  set commitSha(String commitSha) => _$this._commitSha = commitSha;

  String _analysisKey;
  String get analysisKey => _$this._analysisKey;
  set analysisKey(String analysisKey) => _$this._analysisKey = analysisKey;

  String _environment;
  String get environment => _$this._environment;
  set environment(String environment) => _$this._environment = environment;

  String _error;
  String get error => _$this._error;
  set error(String error) => _$this._error = error;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  int _resultsCount;
  int get resultsCount => _$this._resultsCount;
  set resultsCount(int resultsCount) => _$this._resultsCount = resultsCount;

  int _rulesCount;
  int get rulesCount => _$this._rulesCount;
  set rulesCount(int rulesCount) => _$this._rulesCount = rulesCount;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _sarifId;
  String get sarifId => _$this._sarifId;
  set sarifId(String sarifId) => _$this._sarifId = sarifId;

  CodeScanningAnalysisToolBuilder _tool;
  CodeScanningAnalysisToolBuilder get tool =>
      _$this._tool ??= new CodeScanningAnalysisToolBuilder();
  set tool(CodeScanningAnalysisToolBuilder tool) => _$this._tool = tool;

  bool _deletable;
  bool get deletable => _$this._deletable;
  set deletable(bool deletable) => _$this._deletable = deletable;

  CodeScanningAnalysisBuilder() {
    CodeScanningAnalysis._initializeBuilder(this);
  }

  CodeScanningAnalysisBuilder get _$this {
    if (_$v != null) {
      _ref = _$v.ref;
      _commitSha = _$v.commitSha;
      _analysisKey = _$v.analysisKey;
      _environment = _$v.environment;
      _error = _$v.error;
      _createdAt = _$v.createdAt;
      _resultsCount = _$v.resultsCount;
      _rulesCount = _$v.rulesCount;
      _id = _$v.id;
      _url = _$v.url;
      _sarifId = _$v.sarifId;
      _tool = _$v.tool?.toBuilder();
      _deletable = _$v.deletable;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeScanningAnalysis other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeScanningAnalysis;
  }

  @override
  void update(void Function(CodeScanningAnalysisBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeScanningAnalysis build() {
    _$CodeScanningAnalysis _$result;
    try {
      _$result = _$v ??
          new _$CodeScanningAnalysis._(
              ref: ref,
              commitSha: commitSha,
              analysisKey: analysisKey,
              environment: environment,
              error: error,
              createdAt: createdAt,
              resultsCount: resultsCount,
              rulesCount: rulesCount,
              id: id,
              url: url,
              sarifId: sarifId,
              tool: _tool?.build(),
              deletable: deletable);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tool';
        _tool?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CodeScanningAnalysis', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
