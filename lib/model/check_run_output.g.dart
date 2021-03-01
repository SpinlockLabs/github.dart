// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'check_run_output.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CheckRunOutput> _$checkRunOutputSerializer =
    new _$CheckRunOutputSerializer();

class _$CheckRunOutputSerializer
    implements StructuredSerializer<CheckRunOutput> {
  @override
  final Iterable<Type> types = const [CheckRunOutput, _$CheckRunOutput];
  @override
  final String wireName = 'CheckRunOutput';

  @override
  Iterable<Object> serialize(Serializers serializers, CheckRunOutput object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.summary != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(object.summary,
            specifiedType: const FullType(String)));
    }
    if (object.text != null) {
      result
        ..add('text')
        ..add(serializers.serialize(object.text,
            specifiedType: const FullType(String)));
    }
    if (object.annotationsCount != null) {
      result
        ..add('annotations_count')
        ..add(serializers.serialize(object.annotationsCount,
            specifiedType: const FullType(int)));
    }
    if (object.annotationsUrl != null) {
      result
        ..add('annotations_url')
        ..add(serializers.serialize(object.annotationsUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CheckRunOutput deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CheckRunOutputBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'annotations_count':
          result.annotationsCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'annotations_url':
          result.annotationsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CheckRunOutput extends CheckRunOutput {
  @override
  final String title;
  @override
  final String summary;
  @override
  final String text;
  @override
  final int annotationsCount;
  @override
  final String annotationsUrl;

  factory _$CheckRunOutput([void Function(CheckRunOutputBuilder) updates]) =>
      (new CheckRunOutputBuilder()..update(updates)).build();

  _$CheckRunOutput._(
      {this.title,
      this.summary,
      this.text,
      this.annotationsCount,
      this.annotationsUrl})
      : super._();

  @override
  CheckRunOutput rebuild(void Function(CheckRunOutputBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CheckRunOutputBuilder toBuilder() =>
      new CheckRunOutputBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CheckRunOutput &&
        title == other.title &&
        summary == other.summary &&
        text == other.text &&
        annotationsCount == other.annotationsCount &&
        annotationsUrl == other.annotationsUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, title.hashCode), summary.hashCode), text.hashCode),
            annotationsCount.hashCode),
        annotationsUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CheckRunOutput')
          ..add('title', title)
          ..add('summary', summary)
          ..add('text', text)
          ..add('annotationsCount', annotationsCount)
          ..add('annotationsUrl', annotationsUrl))
        .toString();
  }
}

class CheckRunOutputBuilder
    implements Builder<CheckRunOutput, CheckRunOutputBuilder> {
  _$CheckRunOutput _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _summary;
  String get summary => _$this._summary;
  set summary(String summary) => _$this._summary = summary;

  String _text;
  String get text => _$this._text;
  set text(String text) => _$this._text = text;

  int _annotationsCount;
  int get annotationsCount => _$this._annotationsCount;
  set annotationsCount(int annotationsCount) =>
      _$this._annotationsCount = annotationsCount;

  String _annotationsUrl;
  String get annotationsUrl => _$this._annotationsUrl;
  set annotationsUrl(String annotationsUrl) =>
      _$this._annotationsUrl = annotationsUrl;

  CheckRunOutputBuilder() {
    CheckRunOutput._initializeBuilder(this);
  }

  CheckRunOutputBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _summary = _$v.summary;
      _text = _$v.text;
      _annotationsCount = _$v.annotationsCount;
      _annotationsUrl = _$v.annotationsUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CheckRunOutput other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CheckRunOutput;
  }

  @override
  void update(void Function(CheckRunOutputBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CheckRunOutput build() {
    final _$result = _$v ??
        new _$CheckRunOutput._(
            title: title,
            summary: summary,
            text: text,
            annotationsCount: annotationsCount,
            annotationsUrl: annotationsUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
