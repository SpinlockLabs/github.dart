// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_analysis_deletion.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeScanningAnalysisDeletion>
    _$codeScanningAnalysisDeletionSerializer =
    new _$CodeScanningAnalysisDeletionSerializer();

class _$CodeScanningAnalysisDeletionSerializer
    implements StructuredSerializer<CodeScanningAnalysisDeletion> {
  @override
  final Iterable<Type> types = const [
    CodeScanningAnalysisDeletion,
    _$CodeScanningAnalysisDeletion
  ];
  @override
  final String wireName = 'CodeScanningAnalysisDeletion';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CodeScanningAnalysisDeletion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.nextAnalysisUrl != null) {
      result
        ..add('next_analysis_url')
        ..add(serializers.serialize(object.nextAnalysisUrl,
            specifiedType: const FullType(String)));
    }
    if (object.confirmDeleteUrl != null) {
      result
        ..add('confirm_delete_url')
        ..add(serializers.serialize(object.confirmDeleteUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CodeScanningAnalysisDeletion deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeScanningAnalysisDeletionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'next_analysis_url':
          result.nextAnalysisUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'confirm_delete_url':
          result.confirmDeleteUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CodeScanningAnalysisDeletion extends CodeScanningAnalysisDeletion {
  @override
  final String nextAnalysisUrl;
  @override
  final String confirmDeleteUrl;

  factory _$CodeScanningAnalysisDeletion(
          [void Function(CodeScanningAnalysisDeletionBuilder) updates]) =>
      (new CodeScanningAnalysisDeletionBuilder()..update(updates)).build();

  _$CodeScanningAnalysisDeletion._(
      {this.nextAnalysisUrl, this.confirmDeleteUrl})
      : super._();

  @override
  CodeScanningAnalysisDeletion rebuild(
          void Function(CodeScanningAnalysisDeletionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeScanningAnalysisDeletionBuilder toBuilder() =>
      new CodeScanningAnalysisDeletionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeScanningAnalysisDeletion &&
        nextAnalysisUrl == other.nextAnalysisUrl &&
        confirmDeleteUrl == other.confirmDeleteUrl;
  }

  @override
  int get hashCode {
    return $jf(
        $jc($jc(0, nextAnalysisUrl.hashCode), confirmDeleteUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeScanningAnalysisDeletion')
          ..add('nextAnalysisUrl', nextAnalysisUrl)
          ..add('confirmDeleteUrl', confirmDeleteUrl))
        .toString();
  }
}

class CodeScanningAnalysisDeletionBuilder
    implements
        Builder<CodeScanningAnalysisDeletion,
            CodeScanningAnalysisDeletionBuilder> {
  _$CodeScanningAnalysisDeletion _$v;

  String _nextAnalysisUrl;
  String get nextAnalysisUrl => _$this._nextAnalysisUrl;
  set nextAnalysisUrl(String nextAnalysisUrl) =>
      _$this._nextAnalysisUrl = nextAnalysisUrl;

  String _confirmDeleteUrl;
  String get confirmDeleteUrl => _$this._confirmDeleteUrl;
  set confirmDeleteUrl(String confirmDeleteUrl) =>
      _$this._confirmDeleteUrl = confirmDeleteUrl;

  CodeScanningAnalysisDeletionBuilder() {
    CodeScanningAnalysisDeletion._initializeBuilder(this);
  }

  CodeScanningAnalysisDeletionBuilder get _$this {
    if (_$v != null) {
      _nextAnalysisUrl = _$v.nextAnalysisUrl;
      _confirmDeleteUrl = _$v.confirmDeleteUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeScanningAnalysisDeletion other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeScanningAnalysisDeletion;
  }

  @override
  void update(void Function(CodeScanningAnalysisDeletionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeScanningAnalysisDeletion build() {
    final _$result = _$v ??
        new _$CodeScanningAnalysisDeletion._(
            nextAnalysisUrl: nextAnalysisUrl,
            confirmDeleteUrl: confirmDeleteUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
