// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'community_profile_files.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommunityProfileFiles> _$communityProfileFilesSerializer =
    new _$CommunityProfileFilesSerializer();

class _$CommunityProfileFilesSerializer
    implements StructuredSerializer<CommunityProfileFiles> {
  @override
  final Iterable<Type> types = const [
    CommunityProfileFiles,
    _$CommunityProfileFiles
  ];
  @override
  final String wireName = 'CommunityProfileFiles';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CommunityProfileFiles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.codeOfConduct != null) {
      result
        ..add('code_of_conduct')
        ..add(serializers.serialize(object.codeOfConduct,
            specifiedType: const FullType(CodeOfConductSimple)));
    }
    if (object.license != null) {
      result
        ..add('license')
        ..add(serializers.serialize(object.license,
            specifiedType: const FullType(LicenseSimple)));
    }
    if (object.contributing != null) {
      result
        ..add('contributing')
        ..add(serializers.serialize(object.contributing,
            specifiedType: const FullType(CommunityHealthFile)));
    }
    if (object.readme != null) {
      result
        ..add('readme')
        ..add(serializers.serialize(object.readme,
            specifiedType: const FullType(CommunityHealthFile)));
    }
    if (object.issueTemplate != null) {
      result
        ..add('issue_template')
        ..add(serializers.serialize(object.issueTemplate,
            specifiedType: const FullType(CommunityHealthFile)));
    }
    if (object.pullRequestTemplate != null) {
      result
        ..add('pull_request_template')
        ..add(serializers.serialize(object.pullRequestTemplate,
            specifiedType: const FullType(CommunityHealthFile)));
    }
    return result;
  }

  @override
  CommunityProfileFiles deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommunityProfileFilesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'code_of_conduct':
          result.codeOfConduct.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CodeOfConductSimple))
              as CodeOfConductSimple);
          break;
        case 'license':
          result.license.replace(serializers.deserialize(value,
              specifiedType: const FullType(LicenseSimple)) as LicenseSimple);
          break;
        case 'contributing':
          result.contributing.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommunityHealthFile))
              as CommunityHealthFile);
          break;
        case 'readme':
          result.readme.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommunityHealthFile))
              as CommunityHealthFile);
          break;
        case 'issue_template':
          result.issueTemplate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommunityHealthFile))
              as CommunityHealthFile);
          break;
        case 'pull_request_template':
          result.pullRequestTemplate.replace(serializers.deserialize(value,
                  specifiedType: const FullType(CommunityHealthFile))
              as CommunityHealthFile);
          break;
      }
    }

    return result.build();
  }
}

class _$CommunityProfileFiles extends CommunityProfileFiles {
  @override
  final CodeOfConductSimple codeOfConduct;
  @override
  final LicenseSimple license;
  @override
  final CommunityHealthFile contributing;
  @override
  final CommunityHealthFile readme;
  @override
  final CommunityHealthFile issueTemplate;
  @override
  final CommunityHealthFile pullRequestTemplate;

  factory _$CommunityProfileFiles(
          [void Function(CommunityProfileFilesBuilder) updates]) =>
      (new CommunityProfileFilesBuilder()..update(updates)).build();

  _$CommunityProfileFiles._(
      {this.codeOfConduct,
      this.license,
      this.contributing,
      this.readme,
      this.issueTemplate,
      this.pullRequestTemplate})
      : super._();

  @override
  CommunityProfileFiles rebuild(
          void Function(CommunityProfileFilesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommunityProfileFilesBuilder toBuilder() =>
      new CommunityProfileFilesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommunityProfileFiles &&
        codeOfConduct == other.codeOfConduct &&
        license == other.license &&
        contributing == other.contributing &&
        readme == other.readme &&
        issueTemplate == other.issueTemplate &&
        pullRequestTemplate == other.pullRequestTemplate;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, codeOfConduct.hashCode), license.hashCode),
                    contributing.hashCode),
                readme.hashCode),
            issueTemplate.hashCode),
        pullRequestTemplate.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommunityProfileFiles')
          ..add('codeOfConduct', codeOfConduct)
          ..add('license', license)
          ..add('contributing', contributing)
          ..add('readme', readme)
          ..add('issueTemplate', issueTemplate)
          ..add('pullRequestTemplate', pullRequestTemplate))
        .toString();
  }
}

class CommunityProfileFilesBuilder
    implements Builder<CommunityProfileFiles, CommunityProfileFilesBuilder> {
  _$CommunityProfileFiles _$v;

  CodeOfConductSimpleBuilder _codeOfConduct;
  CodeOfConductSimpleBuilder get codeOfConduct =>
      _$this._codeOfConduct ??= new CodeOfConductSimpleBuilder();
  set codeOfConduct(CodeOfConductSimpleBuilder codeOfConduct) =>
      _$this._codeOfConduct = codeOfConduct;

  LicenseSimpleBuilder _license;
  LicenseSimpleBuilder get license =>
      _$this._license ??= new LicenseSimpleBuilder();
  set license(LicenseSimpleBuilder license) => _$this._license = license;

  CommunityHealthFileBuilder _contributing;
  CommunityHealthFileBuilder get contributing =>
      _$this._contributing ??= new CommunityHealthFileBuilder();
  set contributing(CommunityHealthFileBuilder contributing) =>
      _$this._contributing = contributing;

  CommunityHealthFileBuilder _readme;
  CommunityHealthFileBuilder get readme =>
      _$this._readme ??= new CommunityHealthFileBuilder();
  set readme(CommunityHealthFileBuilder readme) => _$this._readme = readme;

  CommunityHealthFileBuilder _issueTemplate;
  CommunityHealthFileBuilder get issueTemplate =>
      _$this._issueTemplate ??= new CommunityHealthFileBuilder();
  set issueTemplate(CommunityHealthFileBuilder issueTemplate) =>
      _$this._issueTemplate = issueTemplate;

  CommunityHealthFileBuilder _pullRequestTemplate;
  CommunityHealthFileBuilder get pullRequestTemplate =>
      _$this._pullRequestTemplate ??= new CommunityHealthFileBuilder();
  set pullRequestTemplate(CommunityHealthFileBuilder pullRequestTemplate) =>
      _$this._pullRequestTemplate = pullRequestTemplate;

  CommunityProfileFilesBuilder() {
    CommunityProfileFiles._initializeBuilder(this);
  }

  CommunityProfileFilesBuilder get _$this {
    if (_$v != null) {
      _codeOfConduct = _$v.codeOfConduct?.toBuilder();
      _license = _$v.license?.toBuilder();
      _contributing = _$v.contributing?.toBuilder();
      _readme = _$v.readme?.toBuilder();
      _issueTemplate = _$v.issueTemplate?.toBuilder();
      _pullRequestTemplate = _$v.pullRequestTemplate?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommunityProfileFiles other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommunityProfileFiles;
  }

  @override
  void update(void Function(CommunityProfileFilesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommunityProfileFiles build() {
    _$CommunityProfileFiles _$result;
    try {
      _$result = _$v ??
          new _$CommunityProfileFiles._(
              codeOfConduct: _codeOfConduct?.build(),
              license: _license?.build(),
              contributing: _contributing?.build(),
              readme: _readme?.build(),
              issueTemplate: _issueTemplate?.build(),
              pullRequestTemplate: _pullRequestTemplate?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'codeOfConduct';
        _codeOfConduct?.build();
        _$failedField = 'license';
        _license?.build();
        _$failedField = 'contributing';
        _contributing?.build();
        _$failedField = 'readme';
        _readme?.build();
        _$failedField = 'issueTemplate';
        _issueTemplate?.build();
        _$failedField = 'pullRequestTemplate';
        _pullRequestTemplate?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommunityProfileFiles', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
