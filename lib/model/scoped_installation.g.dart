// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'scoped_installation.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ScopedInstallationRepositorySelectionEnum
    _$scopedInstallationRepositorySelectionEnum_all =
    const ScopedInstallationRepositorySelectionEnum._('all');
const ScopedInstallationRepositorySelectionEnum
    _$scopedInstallationRepositorySelectionEnum_selected =
    const ScopedInstallationRepositorySelectionEnum._('selected');

ScopedInstallationRepositorySelectionEnum
    _$scopedInstallationRepositorySelectionEnumValueOf(String name) {
  switch (name) {
    case 'all':
      return _$scopedInstallationRepositorySelectionEnum_all;
    case 'selected':
      return _$scopedInstallationRepositorySelectionEnum_selected;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ScopedInstallationRepositorySelectionEnum>
    _$scopedInstallationRepositorySelectionEnumValues =
    new BuiltSet<ScopedInstallationRepositorySelectionEnum>(const <
        ScopedInstallationRepositorySelectionEnum>[
  _$scopedInstallationRepositorySelectionEnum_all,
  _$scopedInstallationRepositorySelectionEnum_selected,
]);

Serializer<ScopedInstallation> _$scopedInstallationSerializer =
    new _$ScopedInstallationSerializer();
Serializer<ScopedInstallationRepositorySelectionEnum>
    _$scopedInstallationRepositorySelectionEnumSerializer =
    new _$ScopedInstallationRepositorySelectionEnumSerializer();

class _$ScopedInstallationSerializer
    implements StructuredSerializer<ScopedInstallation> {
  @override
  final Iterable<Type> types = const [ScopedInstallation, _$ScopedInstallation];
  @override
  final String wireName = 'ScopedInstallation';

  @override
  Iterable<Object> serialize(Serializers serializers, ScopedInstallation object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.permissions != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(object.permissions,
            specifiedType: const FullType(AppPermissions)));
    }
    if (object.repositorySelection != null) {
      result
        ..add('repository_selection')
        ..add(serializers.serialize(object.repositorySelection,
            specifiedType:
                const FullType(ScopedInstallationRepositorySelectionEnum)));
    }
    if (object.singleFileName != null) {
      result
        ..add('single_file_name')
        ..add(serializers.serialize(object.singleFileName,
            specifiedType: const FullType(String)));
    }
    if (object.hasMultipleSingleFiles != null) {
      result
        ..add('has_multiple_single_files')
        ..add(serializers.serialize(object.hasMultipleSingleFiles,
            specifiedType: const FullType(bool)));
    }
    if (object.singleFilePaths != null) {
      result
        ..add('single_file_paths')
        ..add(serializers.serialize(object.singleFilePaths,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.repositoriesUrl != null) {
      result
        ..add('repositories_url')
        ..add(serializers.serialize(object.repositoriesUrl,
            specifiedType: const FullType(String)));
    }
    if (object.account != null) {
      result
        ..add('account')
        ..add(serializers.serialize(object.account,
            specifiedType: const FullType(SimpleUser)));
    }
    return result;
  }

  @override
  ScopedInstallation deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ScopedInstallationBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
              specifiedType: const FullType(AppPermissions)) as AppPermissions);
          break;
        case 'repository_selection':
          result.repositorySelection = serializers.deserialize(value,
                  specifiedType:
                      const FullType(ScopedInstallationRepositorySelectionEnum))
              as ScopedInstallationRepositorySelectionEnum;
          break;
        case 'single_file_name':
          result.singleFileName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'has_multiple_single_files':
          result.hasMultipleSingleFiles = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'single_file_paths':
          result.singleFilePaths.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'repositories_url':
          result.repositoriesUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'account':
          result.account.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
      }
    }

    return result.build();
  }
}

class _$ScopedInstallationRepositorySelectionEnumSerializer
    implements PrimitiveSerializer<ScopedInstallationRepositorySelectionEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'all': 'all',
    'selected': 'selected',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'all': 'all',
    'selected': 'selected',
  };

  @override
  final Iterable<Type> types = const <Type>[
    ScopedInstallationRepositorySelectionEnum
  ];
  @override
  final String wireName = 'ScopedInstallationRepositorySelectionEnum';

  @override
  Object serialize(Serializers serializers,
          ScopedInstallationRepositorySelectionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ScopedInstallationRepositorySelectionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ScopedInstallationRepositorySelectionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$ScopedInstallation extends ScopedInstallation {
  @override
  final AppPermissions permissions;
  @override
  final ScopedInstallationRepositorySelectionEnum repositorySelection;
  @override
  final String singleFileName;
  @override
  final bool hasMultipleSingleFiles;
  @override
  final BuiltList<String> singleFilePaths;
  @override
  final String repositoriesUrl;
  @override
  final SimpleUser account;

  factory _$ScopedInstallation(
          [void Function(ScopedInstallationBuilder) updates]) =>
      (new ScopedInstallationBuilder()..update(updates)).build();

  _$ScopedInstallation._(
      {this.permissions,
      this.repositorySelection,
      this.singleFileName,
      this.hasMultipleSingleFiles,
      this.singleFilePaths,
      this.repositoriesUrl,
      this.account})
      : super._();

  @override
  ScopedInstallation rebuild(
          void Function(ScopedInstallationBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ScopedInstallationBuilder toBuilder() =>
      new ScopedInstallationBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ScopedInstallation &&
        permissions == other.permissions &&
        repositorySelection == other.repositorySelection &&
        singleFileName == other.singleFileName &&
        hasMultipleSingleFiles == other.hasMultipleSingleFiles &&
        singleFilePaths == other.singleFilePaths &&
        repositoriesUrl == other.repositoriesUrl &&
        account == other.account;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc(0, permissions.hashCode),
                            repositorySelection.hashCode),
                        singleFileName.hashCode),
                    hasMultipleSingleFiles.hashCode),
                singleFilePaths.hashCode),
            repositoriesUrl.hashCode),
        account.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ScopedInstallation')
          ..add('permissions', permissions)
          ..add('repositorySelection', repositorySelection)
          ..add('singleFileName', singleFileName)
          ..add('hasMultipleSingleFiles', hasMultipleSingleFiles)
          ..add('singleFilePaths', singleFilePaths)
          ..add('repositoriesUrl', repositoriesUrl)
          ..add('account', account))
        .toString();
  }
}

class ScopedInstallationBuilder
    implements Builder<ScopedInstallation, ScopedInstallationBuilder> {
  _$ScopedInstallation _$v;

  AppPermissionsBuilder _permissions;
  AppPermissionsBuilder get permissions =>
      _$this._permissions ??= new AppPermissionsBuilder();
  set permissions(AppPermissionsBuilder permissions) =>
      _$this._permissions = permissions;

  ScopedInstallationRepositorySelectionEnum _repositorySelection;
  ScopedInstallationRepositorySelectionEnum get repositorySelection =>
      _$this._repositorySelection;
  set repositorySelection(
          ScopedInstallationRepositorySelectionEnum repositorySelection) =>
      _$this._repositorySelection = repositorySelection;

  String _singleFileName;
  String get singleFileName => _$this._singleFileName;
  set singleFileName(String singleFileName) =>
      _$this._singleFileName = singleFileName;

  bool _hasMultipleSingleFiles;
  bool get hasMultipleSingleFiles => _$this._hasMultipleSingleFiles;
  set hasMultipleSingleFiles(bool hasMultipleSingleFiles) =>
      _$this._hasMultipleSingleFiles = hasMultipleSingleFiles;

  ListBuilder<String> _singleFilePaths;
  ListBuilder<String> get singleFilePaths =>
      _$this._singleFilePaths ??= new ListBuilder<String>();
  set singleFilePaths(ListBuilder<String> singleFilePaths) =>
      _$this._singleFilePaths = singleFilePaths;

  String _repositoriesUrl;
  String get repositoriesUrl => _$this._repositoriesUrl;
  set repositoriesUrl(String repositoriesUrl) =>
      _$this._repositoriesUrl = repositoriesUrl;

  SimpleUserBuilder _account;
  SimpleUserBuilder get account => _$this._account ??= new SimpleUserBuilder();
  set account(SimpleUserBuilder account) => _$this._account = account;

  ScopedInstallationBuilder() {
    ScopedInstallation._initializeBuilder(this);
  }

  ScopedInstallationBuilder get _$this {
    if (_$v != null) {
      _permissions = _$v.permissions?.toBuilder();
      _repositorySelection = _$v.repositorySelection;
      _singleFileName = _$v.singleFileName;
      _hasMultipleSingleFiles = _$v.hasMultipleSingleFiles;
      _singleFilePaths = _$v.singleFilePaths?.toBuilder();
      _repositoriesUrl = _$v.repositoriesUrl;
      _account = _$v.account?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ScopedInstallation other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ScopedInstallation;
  }

  @override
  void update(void Function(ScopedInstallationBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ScopedInstallation build() {
    _$ScopedInstallation _$result;
    try {
      _$result = _$v ??
          new _$ScopedInstallation._(
              permissions: _permissions?.build(),
              repositorySelection: repositorySelection,
              singleFileName: singleFileName,
              hasMultipleSingleFiles: hasMultipleSingleFiles,
              singleFilePaths: _singleFilePaths?.build(),
              repositoriesUrl: repositoriesUrl,
              account: _account?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();

        _$failedField = 'singleFilePaths';
        _singleFilePaths?.build();

        _$failedField = 'account';
        _account?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ScopedInstallation', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
