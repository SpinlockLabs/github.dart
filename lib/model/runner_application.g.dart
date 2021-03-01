// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'runner_application.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RunnerApplication> _$runnerApplicationSerializer =
    new _$RunnerApplicationSerializer();

class _$RunnerApplicationSerializer
    implements StructuredSerializer<RunnerApplication> {
  @override
  final Iterable<Type> types = const [RunnerApplication, _$RunnerApplication];
  @override
  final String wireName = 'RunnerApplication';

  @override
  Iterable<Object> serialize(Serializers serializers, RunnerApplication object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.os != null) {
      result
        ..add('os')
        ..add(serializers.serialize(object.os,
            specifiedType: const FullType(String)));
    }
    if (object.architecture != null) {
      result
        ..add('architecture')
        ..add(serializers.serialize(object.architecture,
            specifiedType: const FullType(String)));
    }
    if (object.downloadUrl != null) {
      result
        ..add('download_url')
        ..add(serializers.serialize(object.downloadUrl,
            specifiedType: const FullType(String)));
    }
    if (object.filename != null) {
      result
        ..add('filename')
        ..add(serializers.serialize(object.filename,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  RunnerApplication deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RunnerApplicationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'os':
          result.os = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'architecture':
          result.architecture = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'download_url':
          result.downloadUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'filename':
          result.filename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$RunnerApplication extends RunnerApplication {
  @override
  final String os;
  @override
  final String architecture;
  @override
  final String downloadUrl;
  @override
  final String filename;

  factory _$RunnerApplication(
          [void Function(RunnerApplicationBuilder) updates]) =>
      (new RunnerApplicationBuilder()..update(updates)).build();

  _$RunnerApplication._(
      {this.os, this.architecture, this.downloadUrl, this.filename})
      : super._();

  @override
  RunnerApplication rebuild(void Function(RunnerApplicationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RunnerApplicationBuilder toBuilder() =>
      new RunnerApplicationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RunnerApplication &&
        os == other.os &&
        architecture == other.architecture &&
        downloadUrl == other.downloadUrl &&
        filename == other.filename;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, os.hashCode), architecture.hashCode),
            downloadUrl.hashCode),
        filename.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RunnerApplication')
          ..add('os', os)
          ..add('architecture', architecture)
          ..add('downloadUrl', downloadUrl)
          ..add('filename', filename))
        .toString();
  }
}

class RunnerApplicationBuilder
    implements Builder<RunnerApplication, RunnerApplicationBuilder> {
  _$RunnerApplication _$v;

  String _os;
  String get os => _$this._os;
  set os(String os) => _$this._os = os;

  String _architecture;
  String get architecture => _$this._architecture;
  set architecture(String architecture) => _$this._architecture = architecture;

  String _downloadUrl;
  String get downloadUrl => _$this._downloadUrl;
  set downloadUrl(String downloadUrl) => _$this._downloadUrl = downloadUrl;

  String _filename;
  String get filename => _$this._filename;
  set filename(String filename) => _$this._filename = filename;

  RunnerApplicationBuilder() {
    RunnerApplication._initializeBuilder(this);
  }

  RunnerApplicationBuilder get _$this {
    if (_$v != null) {
      _os = _$v.os;
      _architecture = _$v.architecture;
      _downloadUrl = _$v.downloadUrl;
      _filename = _$v.filename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RunnerApplication other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RunnerApplication;
  }

  @override
  void update(void Function(RunnerApplicationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RunnerApplication build() {
    final _$result = _$v ??
        new _$RunnerApplication._(
            os: os,
            architecture: architecture,
            downloadUrl: downloadUrl,
            filename: filename);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
