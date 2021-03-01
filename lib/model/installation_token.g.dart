// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'installation_token.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InstallationTokenRepositorySelectionEnum
    _$installationTokenRepositorySelectionEnum_all =
    const InstallationTokenRepositorySelectionEnum._('all');
const InstallationTokenRepositorySelectionEnum
    _$installationTokenRepositorySelectionEnum_selected =
    const InstallationTokenRepositorySelectionEnum._('selected');

InstallationTokenRepositorySelectionEnum
    _$installationTokenRepositorySelectionEnumValueOf(String name) {
  switch (name) {
    case 'all':
      return _$installationTokenRepositorySelectionEnum_all;
    case 'selected':
      return _$installationTokenRepositorySelectionEnum_selected;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InstallationTokenRepositorySelectionEnum>
    _$installationTokenRepositorySelectionEnumValues =
    new BuiltSet<InstallationTokenRepositorySelectionEnum>(const <
        InstallationTokenRepositorySelectionEnum>[
  _$installationTokenRepositorySelectionEnum_all,
  _$installationTokenRepositorySelectionEnum_selected,
]);

Serializer<InstallationToken> _$installationTokenSerializer =
    new _$InstallationTokenSerializer();
Serializer<InstallationTokenRepositorySelectionEnum>
    _$installationTokenRepositorySelectionEnumSerializer =
    new _$InstallationTokenRepositorySelectionEnumSerializer();

class _$InstallationTokenSerializer
    implements StructuredSerializer<InstallationToken> {
  @override
  final Iterable<Type> types = const [InstallationToken, _$InstallationToken];
  @override
  final String wireName = 'InstallationToken';

  @override
  Iterable<Object> serialize(Serializers serializers, InstallationToken object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.token != null) {
      result
        ..add('token')
        ..add(serializers.serialize(object.token,
            specifiedType: const FullType(String)));
    }
    if (object.expiresAt != null) {
      result
        ..add('expires_at')
        ..add(serializers.serialize(object.expiresAt,
            specifiedType: const FullType(String)));
    }
    if (object.permissions != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(object.permissions,
            specifiedType: const FullType(InstallationTokenPermissions)));
    }
    if (object.repositorySelection != null) {
      result
        ..add('repository_selection')
        ..add(serializers.serialize(object.repositorySelection,
            specifiedType:
                const FullType(InstallationTokenRepositorySelectionEnum)));
    }
    if (object.repositories != null) {
      result
        ..add('repositories')
        ..add(serializers.serialize(object.repositories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Repository)])));
    }
    if (object.singleFile != null) {
      result
        ..add('single_file')
        ..add(serializers.serialize(object.singleFile,
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
    return result;
  }

  @override
  InstallationToken deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InstallationTokenBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'token':
          result.token = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'expires_at':
          result.expiresAt = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
                  specifiedType: const FullType(InstallationTokenPermissions))
              as InstallationTokenPermissions);
          break;
        case 'repository_selection':
          result.repositorySelection = serializers.deserialize(value,
                  specifiedType:
                      const FullType(InstallationTokenRepositorySelectionEnum))
              as InstallationTokenRepositorySelectionEnum;
          break;
        case 'repositories':
          result.repositories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Repository)]))
              as BuiltList<Object>);
          break;
        case 'single_file':
          result.singleFile = serializers.deserialize(value,
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
      }
    }

    return result.build();
  }
}

class _$InstallationTokenRepositorySelectionEnumSerializer
    implements PrimitiveSerializer<InstallationTokenRepositorySelectionEnum> {
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
    InstallationTokenRepositorySelectionEnum
  ];
  @override
  final String wireName = 'InstallationTokenRepositorySelectionEnum';

  @override
  Object serialize(Serializers serializers,
          InstallationTokenRepositorySelectionEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InstallationTokenRepositorySelectionEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InstallationTokenRepositorySelectionEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InstallationToken extends InstallationToken {
  @override
  final String token;
  @override
  final String expiresAt;
  @override
  final InstallationTokenPermissions permissions;
  @override
  final InstallationTokenRepositorySelectionEnum repositorySelection;
  @override
  final BuiltList<Repository> repositories;
  @override
  final String singleFile;
  @override
  final bool hasMultipleSingleFiles;
  @override
  final BuiltList<String> singleFilePaths;

  factory _$InstallationToken(
          [void Function(InstallationTokenBuilder) updates]) =>
      (new InstallationTokenBuilder()..update(updates)).build();

  _$InstallationToken._(
      {this.token,
      this.expiresAt,
      this.permissions,
      this.repositorySelection,
      this.repositories,
      this.singleFile,
      this.hasMultipleSingleFiles,
      this.singleFilePaths})
      : super._();

  @override
  InstallationToken rebuild(void Function(InstallationTokenBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstallationTokenBuilder toBuilder() =>
      new InstallationTokenBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstallationToken &&
        token == other.token &&
        expiresAt == other.expiresAt &&
        permissions == other.permissions &&
        repositorySelection == other.repositorySelection &&
        repositories == other.repositories &&
        singleFile == other.singleFile &&
        hasMultipleSingleFiles == other.hasMultipleSingleFiles &&
        singleFilePaths == other.singleFilePaths;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc($jc($jc(0, token.hashCode), expiresAt.hashCode),
                            permissions.hashCode),
                        repositorySelection.hashCode),
                    repositories.hashCode),
                singleFile.hashCode),
            hasMultipleSingleFiles.hashCode),
        singleFilePaths.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InstallationToken')
          ..add('token', token)
          ..add('expiresAt', expiresAt)
          ..add('permissions', permissions)
          ..add('repositorySelection', repositorySelection)
          ..add('repositories', repositories)
          ..add('singleFile', singleFile)
          ..add('hasMultipleSingleFiles', hasMultipleSingleFiles)
          ..add('singleFilePaths', singleFilePaths))
        .toString();
  }
}

class InstallationTokenBuilder
    implements Builder<InstallationToken, InstallationTokenBuilder> {
  _$InstallationToken _$v;

  String _token;
  String get token => _$this._token;
  set token(String token) => _$this._token = token;

  String _expiresAt;
  String get expiresAt => _$this._expiresAt;
  set expiresAt(String expiresAt) => _$this._expiresAt = expiresAt;

  InstallationTokenPermissionsBuilder _permissions;
  InstallationTokenPermissionsBuilder get permissions =>
      _$this._permissions ??= new InstallationTokenPermissionsBuilder();
  set permissions(InstallationTokenPermissionsBuilder permissions) =>
      _$this._permissions = permissions;

  InstallationTokenRepositorySelectionEnum _repositorySelection;
  InstallationTokenRepositorySelectionEnum get repositorySelection =>
      _$this._repositorySelection;
  set repositorySelection(
          InstallationTokenRepositorySelectionEnum repositorySelection) =>
      _$this._repositorySelection = repositorySelection;

  ListBuilder<Repository> _repositories;
  ListBuilder<Repository> get repositories =>
      _$this._repositories ??= new ListBuilder<Repository>();
  set repositories(ListBuilder<Repository> repositories) =>
      _$this._repositories = repositories;

  String _singleFile;
  String get singleFile => _$this._singleFile;
  set singleFile(String singleFile) => _$this._singleFile = singleFile;

  bool _hasMultipleSingleFiles;
  bool get hasMultipleSingleFiles => _$this._hasMultipleSingleFiles;
  set hasMultipleSingleFiles(bool hasMultipleSingleFiles) =>
      _$this._hasMultipleSingleFiles = hasMultipleSingleFiles;

  ListBuilder<String> _singleFilePaths;
  ListBuilder<String> get singleFilePaths =>
      _$this._singleFilePaths ??= new ListBuilder<String>();
  set singleFilePaths(ListBuilder<String> singleFilePaths) =>
      _$this._singleFilePaths = singleFilePaths;

  InstallationTokenBuilder() {
    InstallationToken._initializeBuilder(this);
  }

  InstallationTokenBuilder get _$this {
    if (_$v != null) {
      _token = _$v.token;
      _expiresAt = _$v.expiresAt;
      _permissions = _$v.permissions?.toBuilder();
      _repositorySelection = _$v.repositorySelection;
      _repositories = _$v.repositories?.toBuilder();
      _singleFile = _$v.singleFile;
      _hasMultipleSingleFiles = _$v.hasMultipleSingleFiles;
      _singleFilePaths = _$v.singleFilePaths?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstallationToken other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InstallationToken;
  }

  @override
  void update(void Function(InstallationTokenBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InstallationToken build() {
    _$InstallationToken _$result;
    try {
      _$result = _$v ??
          new _$InstallationToken._(
              token: token,
              expiresAt: expiresAt,
              permissions: _permissions?.build(),
              repositorySelection: repositorySelection,
              repositories: _repositories?.build(),
              singleFile: singleFile,
              hasMultipleSingleFiles: hasMultipleSingleFiles,
              singleFilePaths: _singleFilePaths?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();

        _$failedField = 'repositories';
        _repositories?.build();

        _$failedField = 'singleFilePaths';
        _singleFilePaths?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InstallationToken', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
