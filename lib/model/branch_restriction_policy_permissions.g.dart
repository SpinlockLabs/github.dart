// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'branch_restriction_policy_permissions.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BranchRestrictionPolicyPermissions>
    _$branchRestrictionPolicyPermissionsSerializer =
    new _$BranchRestrictionPolicyPermissionsSerializer();

class _$BranchRestrictionPolicyPermissionsSerializer
    implements StructuredSerializer<BranchRestrictionPolicyPermissions> {
  @override
  final Iterable<Type> types = const [
    BranchRestrictionPolicyPermissions,
    _$BranchRestrictionPolicyPermissions
  ];
  @override
  final String wireName = 'BranchRestrictionPolicyPermissions';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BranchRestrictionPolicyPermissions object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.metadata != null) {
      result
        ..add('metadata')
        ..add(serializers.serialize(object.metadata,
            specifiedType: const FullType(String)));
    }
    if (object.contents != null) {
      result
        ..add('contents')
        ..add(serializers.serialize(object.contents,
            specifiedType: const FullType(String)));
    }
    if (object.issues != null) {
      result
        ..add('issues')
        ..add(serializers.serialize(object.issues,
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
  BranchRestrictionPolicyPermissions deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchRestrictionPolicyPermissionsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'metadata':
          result.metadata = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contents':
          result.contents = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'issues':
          result.issues = serializers.deserialize(value,
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

class _$BranchRestrictionPolicyPermissions
    extends BranchRestrictionPolicyPermissions {
  @override
  final String metadata;
  @override
  final String contents;
  @override
  final String issues;
  @override
  final String singleFile;

  factory _$BranchRestrictionPolicyPermissions(
          [void Function(BranchRestrictionPolicyPermissionsBuilder) updates]) =>
      (new BranchRestrictionPolicyPermissionsBuilder()..update(updates))
          .build();

  _$BranchRestrictionPolicyPermissions._(
      {this.metadata, this.contents, this.issues, this.singleFile})
      : super._();

  @override
  BranchRestrictionPolicyPermissions rebuild(
          void Function(BranchRestrictionPolicyPermissionsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchRestrictionPolicyPermissionsBuilder toBuilder() =>
      new BranchRestrictionPolicyPermissionsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchRestrictionPolicyPermissions &&
        metadata == other.metadata &&
        contents == other.contents &&
        issues == other.issues &&
        singleFile == other.singleFile;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, metadata.hashCode), contents.hashCode), issues.hashCode),
        singleFile.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BranchRestrictionPolicyPermissions')
          ..add('metadata', metadata)
          ..add('contents', contents)
          ..add('issues', issues)
          ..add('singleFile', singleFile))
        .toString();
  }
}

class BranchRestrictionPolicyPermissionsBuilder
    implements
        Builder<BranchRestrictionPolicyPermissions,
            BranchRestrictionPolicyPermissionsBuilder> {
  _$BranchRestrictionPolicyPermissions _$v;

  String _metadata;
  String get metadata => _$this._metadata;
  set metadata(String metadata) => _$this._metadata = metadata;

  String _contents;
  String get contents => _$this._contents;
  set contents(String contents) => _$this._contents = contents;

  String _issues;
  String get issues => _$this._issues;
  set issues(String issues) => _$this._issues = issues;

  String _singleFile;
  String get singleFile => _$this._singleFile;
  set singleFile(String singleFile) => _$this._singleFile = singleFile;

  BranchRestrictionPolicyPermissionsBuilder() {
    BranchRestrictionPolicyPermissions._initializeBuilder(this);
  }

  BranchRestrictionPolicyPermissionsBuilder get _$this {
    if (_$v != null) {
      _metadata = _$v.metadata;
      _contents = _$v.contents;
      _issues = _$v.issues;
      _singleFile = _$v.singleFile;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchRestrictionPolicyPermissions other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BranchRestrictionPolicyPermissions;
  }

  @override
  void update(
      void Function(BranchRestrictionPolicyPermissionsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BranchRestrictionPolicyPermissions build() {
    final _$result = _$v ??
        new _$BranchRestrictionPolicyPermissions._(
            metadata: metadata,
            contents: contents,
            issues: issues,
            singleFile: singleFile);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
