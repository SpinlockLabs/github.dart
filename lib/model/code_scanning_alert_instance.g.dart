// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'code_scanning_alert_instance.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CodeScanningAlertInstance> _$codeScanningAlertInstanceSerializer =
    new _$CodeScanningAlertInstanceSerializer();

class _$CodeScanningAlertInstanceSerializer
    implements StructuredSerializer<CodeScanningAlertInstance> {
  @override
  final Iterable<Type> types = const [
    CodeScanningAlertInstance,
    _$CodeScanningAlertInstance
  ];
  @override
  final String wireName = 'CodeScanningAlertInstance';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CodeScanningAlertInstance object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.ref != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(object.ref,
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
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(CodeScanningAlertState)));
    }
    if (object.commitSha != null) {
      result
        ..add('commit_sha')
        ..add(serializers.serialize(object.commitSha,
            specifiedType: const FullType(String)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(CodeScanningAlertInstanceMessage)));
    }
    if (object.location != null) {
      result
        ..add('location')
        ..add(serializers.serialize(object.location,
            specifiedType: const FullType(CodeScanningAlertLocation)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.classifications != null) {
      result
        ..add('classifications')
        ..add(serializers.serialize(object.classifications,
            specifiedType: const FullType(BuiltList,
                const [const FullType(CodeScanningAlertClassification)])));
    }
    return result;
  }

  @override
  CodeScanningAlertInstance deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CodeScanningAlertInstanceBuilder();

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
        case 'analysis_key':
          result.analysisKey = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'environment':
          result.environment = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(CodeScanningAlertState))
              as CodeScanningAlertState;
          break;
        case 'commit_sha':
          result.commitSha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(CodeScanningAlertInstanceMessage))
              as CodeScanningAlertInstanceMessage);
          break;
        case 'location':
          result.location.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CodeScanningAlertLocation))
              as CodeScanningAlertLocation);
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'classifications':
          result.classifications.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(CodeScanningAlertClassification)
              ])) as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CodeScanningAlertInstance extends CodeScanningAlertInstance {
  @override
  final String ref;
  @override
  final String analysisKey;
  @override
  final String environment;
  @override
  final CodeScanningAlertState state;
  @override
  final String commitSha;
  @override
  final CodeScanningAlertInstanceMessage message;
  @override
  final CodeScanningAlertLocation location;
  @override
  final String htmlUrl;
  @override
  final BuiltList<CodeScanningAlertClassification> classifications;

  factory _$CodeScanningAlertInstance(
          [void Function(CodeScanningAlertInstanceBuilder) updates]) =>
      (new CodeScanningAlertInstanceBuilder()..update(updates)).build();

  _$CodeScanningAlertInstance._(
      {this.ref,
      this.analysisKey,
      this.environment,
      this.state,
      this.commitSha,
      this.message,
      this.location,
      this.htmlUrl,
      this.classifications})
      : super._();

  @override
  CodeScanningAlertInstance rebuild(
          void Function(CodeScanningAlertInstanceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CodeScanningAlertInstanceBuilder toBuilder() =>
      new CodeScanningAlertInstanceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CodeScanningAlertInstance &&
        ref == other.ref &&
        analysisKey == other.analysisKey &&
        environment == other.environment &&
        state == other.state &&
        commitSha == other.commitSha &&
        message == other.message &&
        location == other.location &&
        htmlUrl == other.htmlUrl &&
        classifications == other.classifications;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, ref.hashCode), analysisKey.hashCode),
                                environment.hashCode),
                            state.hashCode),
                        commitSha.hashCode),
                    message.hashCode),
                location.hashCode),
            htmlUrl.hashCode),
        classifications.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CodeScanningAlertInstance')
          ..add('ref', ref)
          ..add('analysisKey', analysisKey)
          ..add('environment', environment)
          ..add('state', state)
          ..add('commitSha', commitSha)
          ..add('message', message)
          ..add('location', location)
          ..add('htmlUrl', htmlUrl)
          ..add('classifications', classifications))
        .toString();
  }
}

class CodeScanningAlertInstanceBuilder
    implements
        Builder<CodeScanningAlertInstance, CodeScanningAlertInstanceBuilder> {
  _$CodeScanningAlertInstance _$v;

  String _ref;
  String get ref => _$this._ref;
  set ref(String ref) => _$this._ref = ref;

  String _analysisKey;
  String get analysisKey => _$this._analysisKey;
  set analysisKey(String analysisKey) => _$this._analysisKey = analysisKey;

  String _environment;
  String get environment => _$this._environment;
  set environment(String environment) => _$this._environment = environment;

  CodeScanningAlertState _state;
  CodeScanningAlertState get state => _$this._state;
  set state(CodeScanningAlertState state) => _$this._state = state;

  String _commitSha;
  String get commitSha => _$this._commitSha;
  set commitSha(String commitSha) => _$this._commitSha = commitSha;

  CodeScanningAlertInstanceMessageBuilder _message;
  CodeScanningAlertInstanceMessageBuilder get message =>
      _$this._message ??= new CodeScanningAlertInstanceMessageBuilder();
  set message(CodeScanningAlertInstanceMessageBuilder message) =>
      _$this._message = message;

  CodeScanningAlertLocationBuilder _location;
  CodeScanningAlertLocationBuilder get location =>
      _$this._location ??= new CodeScanningAlertLocationBuilder();
  set location(CodeScanningAlertLocationBuilder location) =>
      _$this._location = location;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  ListBuilder<CodeScanningAlertClassification> _classifications;
  ListBuilder<CodeScanningAlertClassification> get classifications =>
      _$this._classifications ??=
          new ListBuilder<CodeScanningAlertClassification>();
  set classifications(
          ListBuilder<CodeScanningAlertClassification> classifications) =>
      _$this._classifications = classifications;

  CodeScanningAlertInstanceBuilder() {
    CodeScanningAlertInstance._initializeBuilder(this);
  }

  CodeScanningAlertInstanceBuilder get _$this {
    if (_$v != null) {
      _ref = _$v.ref;
      _analysisKey = _$v.analysisKey;
      _environment = _$v.environment;
      _state = _$v.state;
      _commitSha = _$v.commitSha;
      _message = _$v.message?.toBuilder();
      _location = _$v.location?.toBuilder();
      _htmlUrl = _$v.htmlUrl;
      _classifications = _$v.classifications?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CodeScanningAlertInstance other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CodeScanningAlertInstance;
  }

  @override
  void update(void Function(CodeScanningAlertInstanceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CodeScanningAlertInstance build() {
    _$CodeScanningAlertInstance _$result;
    try {
      _$result = _$v ??
          new _$CodeScanningAlertInstance._(
              ref: ref,
              analysisKey: analysisKey,
              environment: environment,
              state: state,
              commitSha: commitSha,
              message: _message?.build(),
              location: _location?.build(),
              htmlUrl: htmlUrl,
              classifications: _classifications?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'message';
        _message?.build();
        _$failedField = 'location';
        _location?.build();

        _$failedField = 'classifications';
        _classifications?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CodeScanningAlertInstance', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
