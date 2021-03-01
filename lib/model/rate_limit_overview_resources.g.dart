// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'rate_limit_overview_resources.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RateLimitOverviewResources> _$rateLimitOverviewResourcesSerializer =
    new _$RateLimitOverviewResourcesSerializer();

class _$RateLimitOverviewResourcesSerializer
    implements StructuredSerializer<RateLimitOverviewResources> {
  @override
  final Iterable<Type> types = const [
    RateLimitOverviewResources,
    _$RateLimitOverviewResources
  ];
  @override
  final String wireName = 'RateLimitOverviewResources';

  @override
  Iterable<Object> serialize(
      Serializers serializers, RateLimitOverviewResources object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.core != null) {
      result
        ..add('core')
        ..add(serializers.serialize(object.core,
            specifiedType: const FullType(RateLimit)));
    }
    if (object.graphql != null) {
      result
        ..add('graphql')
        ..add(serializers.serialize(object.graphql,
            specifiedType: const FullType(RateLimit)));
    }
    if (object.search != null) {
      result
        ..add('search')
        ..add(serializers.serialize(object.search,
            specifiedType: const FullType(RateLimit)));
    }
    if (object.sourceImport != null) {
      result
        ..add('source_import')
        ..add(serializers.serialize(object.sourceImport,
            specifiedType: const FullType(RateLimit)));
    }
    if (object.integrationManifest != null) {
      result
        ..add('integration_manifest')
        ..add(serializers.serialize(object.integrationManifest,
            specifiedType: const FullType(RateLimit)));
    }
    if (object.codeScanningUpload != null) {
      result
        ..add('code_scanning_upload')
        ..add(serializers.serialize(object.codeScanningUpload,
            specifiedType: const FullType(RateLimit)));
    }
    return result;
  }

  @override
  RateLimitOverviewResources deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RateLimitOverviewResourcesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'core':
          result.core.replace(serializers.deserialize(value,
              specifiedType: const FullType(RateLimit)) as RateLimit);
          break;
        case 'graphql':
          result.graphql.replace(serializers.deserialize(value,
              specifiedType: const FullType(RateLimit)) as RateLimit);
          break;
        case 'search':
          result.search.replace(serializers.deserialize(value,
              specifiedType: const FullType(RateLimit)) as RateLimit);
          break;
        case 'source_import':
          result.sourceImport.replace(serializers.deserialize(value,
              specifiedType: const FullType(RateLimit)) as RateLimit);
          break;
        case 'integration_manifest':
          result.integrationManifest.replace(serializers.deserialize(value,
              specifiedType: const FullType(RateLimit)) as RateLimit);
          break;
        case 'code_scanning_upload':
          result.codeScanningUpload.replace(serializers.deserialize(value,
              specifiedType: const FullType(RateLimit)) as RateLimit);
          break;
      }
    }

    return result.build();
  }
}

class _$RateLimitOverviewResources extends RateLimitOverviewResources {
  @override
  final RateLimit core;
  @override
  final RateLimit graphql;
  @override
  final RateLimit search;
  @override
  final RateLimit sourceImport;
  @override
  final RateLimit integrationManifest;
  @override
  final RateLimit codeScanningUpload;

  factory _$RateLimitOverviewResources(
          [void Function(RateLimitOverviewResourcesBuilder) updates]) =>
      (new RateLimitOverviewResourcesBuilder()..update(updates)).build();

  _$RateLimitOverviewResources._(
      {this.core,
      this.graphql,
      this.search,
      this.sourceImport,
      this.integrationManifest,
      this.codeScanningUpload})
      : super._();

  @override
  RateLimitOverviewResources rebuild(
          void Function(RateLimitOverviewResourcesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RateLimitOverviewResourcesBuilder toBuilder() =>
      new RateLimitOverviewResourcesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RateLimitOverviewResources &&
        core == other.core &&
        graphql == other.graphql &&
        search == other.search &&
        sourceImport == other.sourceImport &&
        integrationManifest == other.integrationManifest &&
        codeScanningUpload == other.codeScanningUpload;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, core.hashCode), graphql.hashCode),
                    search.hashCode),
                sourceImport.hashCode),
            integrationManifest.hashCode),
        codeScanningUpload.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('RateLimitOverviewResources')
          ..add('core', core)
          ..add('graphql', graphql)
          ..add('search', search)
          ..add('sourceImport', sourceImport)
          ..add('integrationManifest', integrationManifest)
          ..add('codeScanningUpload', codeScanningUpload))
        .toString();
  }
}

class RateLimitOverviewResourcesBuilder
    implements
        Builder<RateLimitOverviewResources, RateLimitOverviewResourcesBuilder> {
  _$RateLimitOverviewResources _$v;

  RateLimitBuilder _core;
  RateLimitBuilder get core => _$this._core ??= new RateLimitBuilder();
  set core(RateLimitBuilder core) => _$this._core = core;

  RateLimitBuilder _graphql;
  RateLimitBuilder get graphql => _$this._graphql ??= new RateLimitBuilder();
  set graphql(RateLimitBuilder graphql) => _$this._graphql = graphql;

  RateLimitBuilder _search;
  RateLimitBuilder get search => _$this._search ??= new RateLimitBuilder();
  set search(RateLimitBuilder search) => _$this._search = search;

  RateLimitBuilder _sourceImport;
  RateLimitBuilder get sourceImport =>
      _$this._sourceImport ??= new RateLimitBuilder();
  set sourceImport(RateLimitBuilder sourceImport) =>
      _$this._sourceImport = sourceImport;

  RateLimitBuilder _integrationManifest;
  RateLimitBuilder get integrationManifest =>
      _$this._integrationManifest ??= new RateLimitBuilder();
  set integrationManifest(RateLimitBuilder integrationManifest) =>
      _$this._integrationManifest = integrationManifest;

  RateLimitBuilder _codeScanningUpload;
  RateLimitBuilder get codeScanningUpload =>
      _$this._codeScanningUpload ??= new RateLimitBuilder();
  set codeScanningUpload(RateLimitBuilder codeScanningUpload) =>
      _$this._codeScanningUpload = codeScanningUpload;

  RateLimitOverviewResourcesBuilder() {
    RateLimitOverviewResources._initializeBuilder(this);
  }

  RateLimitOverviewResourcesBuilder get _$this {
    if (_$v != null) {
      _core = _$v.core?.toBuilder();
      _graphql = _$v.graphql?.toBuilder();
      _search = _$v.search?.toBuilder();
      _sourceImport = _$v.sourceImport?.toBuilder();
      _integrationManifest = _$v.integrationManifest?.toBuilder();
      _codeScanningUpload = _$v.codeScanningUpload?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RateLimitOverviewResources other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$RateLimitOverviewResources;
  }

  @override
  void update(void Function(RateLimitOverviewResourcesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$RateLimitOverviewResources build() {
    _$RateLimitOverviewResources _$result;
    try {
      _$result = _$v ??
          new _$RateLimitOverviewResources._(
              core: _core?.build(),
              graphql: _graphql?.build(),
              search: _search?.build(),
              sourceImport: _sourceImport?.build(),
              integrationManifest: _integrationManifest?.build(),
              codeScanningUpload: _codeScanningUpload?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'core';
        _core?.build();
        _$failedField = 'graphql';
        _graphql?.build();
        _$failedField = 'search';
        _search?.build();
        _$failedField = 'sourceImport';
        _sourceImport?.build();
        _$failedField = 'integrationManifest';
        _integrationManifest?.build();
        _$failedField = 'codeScanningUpload';
        _codeScanningUpload?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'RateLimitOverviewResources', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
