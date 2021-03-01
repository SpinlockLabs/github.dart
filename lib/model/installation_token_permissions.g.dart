// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'installation_token_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InstallationTokenPermissions>
    _$installationTokenPermissionsSerializer =
    new _$InstallationTokenPermissionsSerializer();

class _$InstallationTokenPermissionsSerializer
    implements StructuredSerializer<InstallationTokenPermissions> {
  @override
  final Iterable<Type> types = const [
    InstallationTokenPermissions,
    _$InstallationTokenPermissions
  ];
  @override
  final String wireName = 'InstallationTokenPermissions';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InstallationTokenPermissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.issues != null) {
      result
        ..add('issues')
        ..add(serializers.serialize(object.issues,
            specifiedType: const FullType(String)));
    }
    if (object.contents != null) {
      result
        ..add('contents')
        ..add(serializers.serialize(object.contents,
            specifiedType: const FullType(String)));
    }
    if (object.metadata != null) {
      result
        ..add('metadata')
        ..add(serializers.serialize(object.metadata,
            specifiedType: const FullType(String)));
    }
    if (object.singleFile != null) {
      result
        ..add('single_file')
        ..add(serializers.serialize(object.singleFile,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InstallationTokenPermissions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InstallationTokenPermissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'issues':
          result.issues = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contents':
          result.contents = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'metadata':
          result.metadata = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'single_file':
          result.singleFile = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InstallationTokenPermissions extends InstallationTokenPermissions {
  @override
  final String issues;
  @override
  final String contents;
  @override
  final String metadata;
  @override
  final String singleFile;

  factory _$InstallationTokenPermissions(
          [void Function(InstallationTokenPermissionsBuilder) updates]) =>
      (new InstallationTokenPermissionsBuilder()..update(updates)).build();

  _$InstallationTokenPermissions._(
      {this.issues, this.contents, this.metadata, this.singleFile})
      : super._();

  @override
  InstallationTokenPermissions rebuild(
          void Function(InstallationTokenPermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InstallationTokenPermissionsBuilder toBuilder() =>
      new InstallationTokenPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InstallationTokenPermissions &&
        issues == other.issues &&
        contents == other.contents &&
        metadata == other.metadata &&
        singleFile == other.singleFile;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, issues.hashCode), contents.hashCode), metadata.hashCode),
        singleFile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InstallationTokenPermissions')
          ..add('issues', issues)
          ..add('contents', contents)
          ..add('metadata', metadata)
          ..add('singleFile', singleFile))
        .toString();
  }
}

class InstallationTokenPermissionsBuilder
    implements
        Builder<InstallationTokenPermissions,
            InstallationTokenPermissionsBuilder> {
  _$InstallationTokenPermissions _$v;

  String _issues;
  String get issues => _$this._issues;
  set issues(String issues) => _$this._issues = issues;

  String _contents;
  String get contents => _$this._contents;
  set contents(String contents) => _$this._contents = contents;

  String _metadata;
  String get metadata => _$this._metadata;
  set metadata(String metadata) => _$this._metadata = metadata;

  String _singleFile;
  String get singleFile => _$this._singleFile;
  set singleFile(String singleFile) => _$this._singleFile = singleFile;

  InstallationTokenPermissionsBuilder() {
    InstallationTokenPermissions._initializeBuilder(this);
  }

  InstallationTokenPermissionsBuilder get _$this {
    if (_$v != null) {
      _issues = _$v.issues;
      _contents = _$v.contents;
      _metadata = _$v.metadata;
      _singleFile = _$v.singleFile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InstallationTokenPermissions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InstallationTokenPermissions;
  }

  @override
  void update(void Function(InstallationTokenPermissionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InstallationTokenPermissions build() {
    final _$result = _$v ??
        new _$InstallationTokenPermissions._(
            issues: issues,
            contents: contents,
            metadata: metadata,
            singleFile: singleFile);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
