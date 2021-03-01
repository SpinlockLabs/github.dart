// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'api_overview.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApiOverview> _$apiOverviewSerializer = new _$ApiOverviewSerializer();

class _$ApiOverviewSerializer implements StructuredSerializer<ApiOverview> {
  @override
  final Iterable<Type> types = const [ApiOverview, _$ApiOverview];
  @override
  final String wireName = 'ApiOverview';

  @override
  Iterable<Object> serialize(Serializers serializers, ApiOverview object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.verifiablePasswordAuthentication != null) {
      result
        ..add('verifiable_password_authentication')
        ..add(serializers.serialize(object.verifiablePasswordAuthentication,
            specifiedType: const FullType(bool)));
    }
    if (object.sshKeyFingerprints != null) {
      result
        ..add('ssh_key_fingerprints')
        ..add(serializers.serialize(object.sshKeyFingerprints,
            specifiedType: const FullType(ApiOverviewSshKeyFingerprints)));
    }
    if (object.hooks != null) {
      result
        ..add('hooks')
        ..add(serializers.serialize(object.hooks,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.web != null) {
      result
        ..add('web')
        ..add(serializers.serialize(object.web,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.api != null) {
      result
        ..add('api')
        ..add(serializers.serialize(object.api,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.git != null) {
      result
        ..add('git')
        ..add(serializers.serialize(object.git,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.pages != null) {
      result
        ..add('pages')
        ..add(serializers.serialize(object.pages,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.importer != null) {
      result
        ..add('importer')
        ..add(serializers.serialize(object.importer,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.actions != null) {
      result
        ..add('actions')
        ..add(serializers.serialize(object.actions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  ApiOverview deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApiOverviewBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'verifiable_password_authentication':
          result.verifiablePasswordAuthentication = serializers
              .deserialize(value, specifiedType: const FullType(bool)) as bool;
          break;
        case 'ssh_key_fingerprints':
          result.sshKeyFingerprints.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ApiOverviewSshKeyFingerprints))
              as ApiOverviewSshKeyFingerprints);
          break;
        case 'hooks':
          result.hooks.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'web':
          result.web.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'api':
          result.api.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'git':
          result.git.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'pages':
          result.pages.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'importer':
          result.importer.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'actions':
          result.actions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$ApiOverview extends ApiOverview {
  @override
  final bool verifiablePasswordAuthentication;
  @override
  final ApiOverviewSshKeyFingerprints sshKeyFingerprints;
  @override
  final BuiltList<String> hooks;
  @override
  final BuiltList<String> web;
  @override
  final BuiltList<String> api;
  @override
  final BuiltList<String> git;
  @override
  final BuiltList<String> pages;
  @override
  final BuiltList<String> importer;
  @override
  final BuiltList<String> actions;

  factory _$ApiOverview([void Function(ApiOverviewBuilder) updates]) =>
      (new ApiOverviewBuilder()..update(updates)).build();

  _$ApiOverview._(
      {this.verifiablePasswordAuthentication,
      this.sshKeyFingerprints,
      this.hooks,
      this.web,
      this.api,
      this.git,
      this.pages,
      this.importer,
      this.actions})
      : super._();

  @override
  ApiOverview rebuild(void Function(ApiOverviewBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiOverviewBuilder toBuilder() => new ApiOverviewBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiOverview &&
        verifiablePasswordAuthentication ==
            other.verifiablePasswordAuthentication &&
        sshKeyFingerprints == other.sshKeyFingerprints &&
        hooks == other.hooks &&
        web == other.web &&
        api == other.api &&
        git == other.git &&
        pages == other.pages &&
        importer == other.importer &&
        actions == other.actions;
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
                                        0,
                                        verifiablePasswordAuthentication
                                            .hashCode),
                                    sshKeyFingerprints.hashCode),
                                hooks.hashCode),
                            web.hashCode),
                        api.hashCode),
                    git.hashCode),
                pages.hashCode),
            importer.hashCode),
        actions.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiOverview')
          ..add('verifiablePasswordAuthentication',
              verifiablePasswordAuthentication)
          ..add('sshKeyFingerprints', sshKeyFingerprints)
          ..add('hooks', hooks)
          ..add('web', web)
          ..add('api', api)
          ..add('git', git)
          ..add('pages', pages)
          ..add('importer', importer)
          ..add('actions', actions))
        .toString();
  }
}

class ApiOverviewBuilder implements Builder<ApiOverview, ApiOverviewBuilder> {
  _$ApiOverview _$v;

  bool _verifiablePasswordAuthentication;
  bool get verifiablePasswordAuthentication =>
      _$this._verifiablePasswordAuthentication;
  set verifiablePasswordAuthentication(bool verifiablePasswordAuthentication) =>
      _$this._verifiablePasswordAuthentication =
          verifiablePasswordAuthentication;

  ApiOverviewSshKeyFingerprintsBuilder _sshKeyFingerprints;
  ApiOverviewSshKeyFingerprintsBuilder get sshKeyFingerprints =>
      _$this._sshKeyFingerprints ??= new ApiOverviewSshKeyFingerprintsBuilder();
  set sshKeyFingerprints(
          ApiOverviewSshKeyFingerprintsBuilder sshKeyFingerprints) =>
      _$this._sshKeyFingerprints = sshKeyFingerprints;

  ListBuilder<String> _hooks;
  ListBuilder<String> get hooks => _$this._hooks ??= new ListBuilder<String>();
  set hooks(ListBuilder<String> hooks) => _$this._hooks = hooks;

  ListBuilder<String> _web;
  ListBuilder<String> get web => _$this._web ??= new ListBuilder<String>();
  set web(ListBuilder<String> web) => _$this._web = web;

  ListBuilder<String> _api;
  ListBuilder<String> get api => _$this._api ??= new ListBuilder<String>();
  set api(ListBuilder<String> api) => _$this._api = api;

  ListBuilder<String> _git;
  ListBuilder<String> get git => _$this._git ??= new ListBuilder<String>();
  set git(ListBuilder<String> git) => _$this._git = git;

  ListBuilder<String> _pages;
  ListBuilder<String> get pages => _$this._pages ??= new ListBuilder<String>();
  set pages(ListBuilder<String> pages) => _$this._pages = pages;

  ListBuilder<String> _importer;
  ListBuilder<String> get importer =>
      _$this._importer ??= new ListBuilder<String>();
  set importer(ListBuilder<String> importer) => _$this._importer = importer;

  ListBuilder<String> _actions;
  ListBuilder<String> get actions =>
      _$this._actions ??= new ListBuilder<String>();
  set actions(ListBuilder<String> actions) => _$this._actions = actions;

  ApiOverviewBuilder() {
    ApiOverview._initializeBuilder(this);
  }

  ApiOverviewBuilder get _$this {
    if (_$v != null) {
      _verifiablePasswordAuthentication = _$v.verifiablePasswordAuthentication;
      _sshKeyFingerprints = _$v.sshKeyFingerprints?.toBuilder();
      _hooks = _$v.hooks?.toBuilder();
      _web = _$v.web?.toBuilder();
      _api = _$v.api?.toBuilder();
      _git = _$v.git?.toBuilder();
      _pages = _$v.pages?.toBuilder();
      _importer = _$v.importer?.toBuilder();
      _actions = _$v.actions?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiOverview other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ApiOverview;
  }

  @override
  void update(void Function(ApiOverviewBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiOverview build() {
    _$ApiOverview _$result;
    try {
      _$result = _$v ??
          new _$ApiOverview._(
              verifiablePasswordAuthentication:
                  verifiablePasswordAuthentication,
              sshKeyFingerprints: _sshKeyFingerprints?.build(),
              hooks: _hooks?.build(),
              web: _web?.build(),
              api: _api?.build(),
              git: _git?.build(),
              pages: _pages?.build(),
              importer: _importer?.build(),
              actions: _actions?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'sshKeyFingerprints';
        _sshKeyFingerprints?.build();
        _$failedField = 'hooks';
        _hooks?.build();
        _$failedField = 'web';
        _web?.build();
        _$failedField = 'api';
        _api?.build();
        _$failedField = 'git';
        _git?.build();
        _$failedField = 'pages';
        _pages?.build();
        _$failedField = 'importer';
        _importer?.build();
        _$failedField = 'actions';
        _actions?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ApiOverview', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
