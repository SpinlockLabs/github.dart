// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object40.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject40VisibilityEnum _$inlineObject40VisibilityEnum_public =
    const InlineObject40VisibilityEnum._('public');
const InlineObject40VisibilityEnum _$inlineObject40VisibilityEnum_private =
    const InlineObject40VisibilityEnum._('private');
const InlineObject40VisibilityEnum _$inlineObject40VisibilityEnum_visibility =
    const InlineObject40VisibilityEnum._('visibility');
const InlineObject40VisibilityEnum _$inlineObject40VisibilityEnum_internal =
    const InlineObject40VisibilityEnum._('internal');

InlineObject40VisibilityEnum _$inlineObject40VisibilityEnumValueOf(
    String name) {
  switch (name) {
    case 'public':
      return _$inlineObject40VisibilityEnum_public;
    case 'private':
      return _$inlineObject40VisibilityEnum_private;
    case 'visibility':
      return _$inlineObject40VisibilityEnum_visibility;
    case 'internal':
      return _$inlineObject40VisibilityEnum_internal;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject40VisibilityEnum>
    _$inlineObject40VisibilityEnumValues = new BuiltSet<
        InlineObject40VisibilityEnum>(const <InlineObject40VisibilityEnum>[
  _$inlineObject40VisibilityEnum_public,
  _$inlineObject40VisibilityEnum_private,
  _$inlineObject40VisibilityEnum_visibility,
  _$inlineObject40VisibilityEnum_internal,
]);

Serializer<InlineObject40> _$inlineObject40Serializer =
    new _$InlineObject40Serializer();
Serializer<InlineObject40VisibilityEnum>
    _$inlineObject40VisibilityEnumSerializer =
    new _$InlineObject40VisibilityEnumSerializer();

class _$InlineObject40Serializer
    implements StructuredSerializer<InlineObject40> {
  @override
  final Iterable<Type> types = const [InlineObject40, _$InlineObject40];
  @override
  final String wireName = 'InlineObject40';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject40 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.homepage != null) {
      result
        ..add('homepage')
        ..add(serializers.serialize(object.homepage,
            specifiedType: const FullType(String)));
    }
    if (object.private != null) {
      result
        ..add('private')
        ..add(serializers.serialize(object.private,
            specifiedType: const FullType(bool)));
    }
    if (object.visibility != null) {
      result
        ..add('visibility')
        ..add(serializers.serialize(object.visibility,
            specifiedType: const FullType(InlineObject40VisibilityEnum)));
    }
    if (object.hasIssues != null) {
      result
        ..add('has_issues')
        ..add(serializers.serialize(object.hasIssues,
            specifiedType: const FullType(bool)));
    }
    if (object.hasProjects != null) {
      result
        ..add('has_projects')
        ..add(serializers.serialize(object.hasProjects,
            specifiedType: const FullType(bool)));
    }
    if (object.hasWiki != null) {
      result
        ..add('has_wiki')
        ..add(serializers.serialize(object.hasWiki,
            specifiedType: const FullType(bool)));
    }
    if (object.isTemplate != null) {
      result
        ..add('is_template')
        ..add(serializers.serialize(object.isTemplate,
            specifiedType: const FullType(bool)));
    }
    if (object.teamId != null) {
      result
        ..add('team_id')
        ..add(serializers.serialize(object.teamId,
            specifiedType: const FullType(int)));
    }
    if (object.autoInit != null) {
      result
        ..add('auto_init')
        ..add(serializers.serialize(object.autoInit,
            specifiedType: const FullType(bool)));
    }
    if (object.gitignoreTemplate != null) {
      result
        ..add('gitignore_template')
        ..add(serializers.serialize(object.gitignoreTemplate,
            specifiedType: const FullType(String)));
    }
    if (object.licenseTemplate != null) {
      result
        ..add('license_template')
        ..add(serializers.serialize(object.licenseTemplate,
            specifiedType: const FullType(String)));
    }
    if (object.allowSquashMerge != null) {
      result
        ..add('allow_squash_merge')
        ..add(serializers.serialize(object.allowSquashMerge,
            specifiedType: const FullType(bool)));
    }
    if (object.allowMergeCommit != null) {
      result
        ..add('allow_merge_commit')
        ..add(serializers.serialize(object.allowMergeCommit,
            specifiedType: const FullType(bool)));
    }
    if (object.allowRebaseMerge != null) {
      result
        ..add('allow_rebase_merge')
        ..add(serializers.serialize(object.allowRebaseMerge,
            specifiedType: const FullType(bool)));
    }
    if (object.deleteBranchOnMerge != null) {
      result
        ..add('delete_branch_on_merge')
        ..add(serializers.serialize(object.deleteBranchOnMerge,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  InlineObject40 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject40Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'homepage':
          result.homepage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'private':
          result.private = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'visibility':
          result.visibility = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject40VisibilityEnum))
              as InlineObject40VisibilityEnum;
          break;
        case 'has_issues':
          result.hasIssues = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_projects':
          result.hasProjects = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'has_wiki':
          result.hasWiki = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'is_template':
          result.isTemplate = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'team_id':
          result.teamId = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'auto_init':
          result.autoInit = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'gitignore_template':
          result.gitignoreTemplate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'license_template':
          result.licenseTemplate = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'allow_squash_merge':
          result.allowSquashMerge = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'allow_merge_commit':
          result.allowMergeCommit = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'allow_rebase_merge':
          result.allowRebaseMerge = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'delete_branch_on_merge':
          result.deleteBranchOnMerge = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject40VisibilityEnumSerializer
    implements PrimitiveSerializer<InlineObject40VisibilityEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'public': 'public',
    'private': 'private',
    'visibility': 'visibility',
    'internal': 'internal',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'public': 'public',
    'private': 'private',
    'visibility': 'visibility',
    'internal': 'internal',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject40VisibilityEnum];
  @override
  final String wireName = 'InlineObject40VisibilityEnum';

  @override
  Object serialize(Serializers serializers, InlineObject40VisibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject40VisibilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject40VisibilityEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject40 extends InlineObject40 {
  @override
  final String name;
  @override
  final String description;
  @override
  final String homepage;
  @override
  final bool private;
  @override
  final InlineObject40VisibilityEnum visibility;
  @override
  final bool hasIssues;
  @override
  final bool hasProjects;
  @override
  final bool hasWiki;
  @override
  final bool isTemplate;
  @override
  final int teamId;
  @override
  final bool autoInit;
  @override
  final String gitignoreTemplate;
  @override
  final String licenseTemplate;
  @override
  final bool allowSquashMerge;
  @override
  final bool allowMergeCommit;
  @override
  final bool allowRebaseMerge;
  @override
  final bool deleteBranchOnMerge;

  factory _$InlineObject40([void Function(InlineObject40Builder) updates]) =>
      (new InlineObject40Builder()..update(updates)).build();

  _$InlineObject40._(
      {this.name,
      this.description,
      this.homepage,
      this.private,
      this.visibility,
      this.hasIssues,
      this.hasProjects,
      this.hasWiki,
      this.isTemplate,
      this.teamId,
      this.autoInit,
      this.gitignoreTemplate,
      this.licenseTemplate,
      this.allowSquashMerge,
      this.allowMergeCommit,
      this.allowRebaseMerge,
      this.deleteBranchOnMerge})
      : super._();

  @override
  InlineObject40 rebuild(void Function(InlineObject40Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject40Builder toBuilder() =>
      new InlineObject40Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject40 &&
        name == other.name &&
        description == other.description &&
        homepage == other.homepage &&
        private == other.private &&
        visibility == other.visibility &&
        hasIssues == other.hasIssues &&
        hasProjects == other.hasProjects &&
        hasWiki == other.hasWiki &&
        isTemplate == other.isTemplate &&
        teamId == other.teamId &&
        autoInit == other.autoInit &&
        gitignoreTemplate == other.gitignoreTemplate &&
        licenseTemplate == other.licenseTemplate &&
        allowSquashMerge == other.allowSquashMerge &&
        allowMergeCommit == other.allowMergeCommit &&
        allowRebaseMerge == other.allowRebaseMerge &&
        deleteBranchOnMerge == other.deleteBranchOnMerge;
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
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    $jc(
                                                                        0,
                                                                        name
                                                                            .hashCode),
                                                                    description
                                                                        .hashCode),
                                                                homepage
                                                                    .hashCode),
                                                            private.hashCode),
                                                        visibility.hashCode),
                                                    hasIssues.hashCode),
                                                hasProjects.hashCode),
                                            hasWiki.hashCode),
                                        isTemplate.hashCode),
                                    teamId.hashCode),
                                autoInit.hashCode),
                            gitignoreTemplate.hashCode),
                        licenseTemplate.hashCode),
                    allowSquashMerge.hashCode),
                allowMergeCommit.hashCode),
            allowRebaseMerge.hashCode),
        deleteBranchOnMerge.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject40')
          ..add('name', name)
          ..add('description', description)
          ..add('homepage', homepage)
          ..add('private', private)
          ..add('visibility', visibility)
          ..add('hasIssues', hasIssues)
          ..add('hasProjects', hasProjects)
          ..add('hasWiki', hasWiki)
          ..add('isTemplate', isTemplate)
          ..add('teamId', teamId)
          ..add('autoInit', autoInit)
          ..add('gitignoreTemplate', gitignoreTemplate)
          ..add('licenseTemplate', licenseTemplate)
          ..add('allowSquashMerge', allowSquashMerge)
          ..add('allowMergeCommit', allowMergeCommit)
          ..add('allowRebaseMerge', allowRebaseMerge)
          ..add('deleteBranchOnMerge', deleteBranchOnMerge))
        .toString();
  }
}

class InlineObject40Builder
    implements Builder<InlineObject40, InlineObject40Builder> {
  _$InlineObject40 _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _homepage;
  String get homepage => _$this._homepage;
  set homepage(String homepage) => _$this._homepage = homepage;

  bool _private;
  bool get private => _$this._private;
  set private(bool private) => _$this._private = private;

  InlineObject40VisibilityEnum _visibility;
  InlineObject40VisibilityEnum get visibility => _$this._visibility;
  set visibility(InlineObject40VisibilityEnum visibility) =>
      _$this._visibility = visibility;

  bool _hasIssues;
  bool get hasIssues => _$this._hasIssues;
  set hasIssues(bool hasIssues) => _$this._hasIssues = hasIssues;

  bool _hasProjects;
  bool get hasProjects => _$this._hasProjects;
  set hasProjects(bool hasProjects) => _$this._hasProjects = hasProjects;

  bool _hasWiki;
  bool get hasWiki => _$this._hasWiki;
  set hasWiki(bool hasWiki) => _$this._hasWiki = hasWiki;

  bool _isTemplate;
  bool get isTemplate => _$this._isTemplate;
  set isTemplate(bool isTemplate) => _$this._isTemplate = isTemplate;

  int _teamId;
  int get teamId => _$this._teamId;
  set teamId(int teamId) => _$this._teamId = teamId;

  bool _autoInit;
  bool get autoInit => _$this._autoInit;
  set autoInit(bool autoInit) => _$this._autoInit = autoInit;

  String _gitignoreTemplate;
  String get gitignoreTemplate => _$this._gitignoreTemplate;
  set gitignoreTemplate(String gitignoreTemplate) =>
      _$this._gitignoreTemplate = gitignoreTemplate;

  String _licenseTemplate;
  String get licenseTemplate => _$this._licenseTemplate;
  set licenseTemplate(String licenseTemplate) =>
      _$this._licenseTemplate = licenseTemplate;

  bool _allowSquashMerge;
  bool get allowSquashMerge => _$this._allowSquashMerge;
  set allowSquashMerge(bool allowSquashMerge) =>
      _$this._allowSquashMerge = allowSquashMerge;

  bool _allowMergeCommit;
  bool get allowMergeCommit => _$this._allowMergeCommit;
  set allowMergeCommit(bool allowMergeCommit) =>
      _$this._allowMergeCommit = allowMergeCommit;

  bool _allowRebaseMerge;
  bool get allowRebaseMerge => _$this._allowRebaseMerge;
  set allowRebaseMerge(bool allowRebaseMerge) =>
      _$this._allowRebaseMerge = allowRebaseMerge;

  bool _deleteBranchOnMerge;
  bool get deleteBranchOnMerge => _$this._deleteBranchOnMerge;
  set deleteBranchOnMerge(bool deleteBranchOnMerge) =>
      _$this._deleteBranchOnMerge = deleteBranchOnMerge;

  InlineObject40Builder() {
    InlineObject40._initializeBuilder(this);
  }

  InlineObject40Builder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _description = _$v.description;
      _homepage = _$v.homepage;
      _private = _$v.private;
      _visibility = _$v.visibility;
      _hasIssues = _$v.hasIssues;
      _hasProjects = _$v.hasProjects;
      _hasWiki = _$v.hasWiki;
      _isTemplate = _$v.isTemplate;
      _teamId = _$v.teamId;
      _autoInit = _$v.autoInit;
      _gitignoreTemplate = _$v.gitignoreTemplate;
      _licenseTemplate = _$v.licenseTemplate;
      _allowSquashMerge = _$v.allowSquashMerge;
      _allowMergeCommit = _$v.allowMergeCommit;
      _allowRebaseMerge = _$v.allowRebaseMerge;
      _deleteBranchOnMerge = _$v.deleteBranchOnMerge;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject40 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject40;
  }

  @override
  void update(void Function(InlineObject40Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject40 build() {
    final _$result = _$v ??
        new _$InlineObject40._(
            name: name,
            description: description,
            homepage: homepage,
            private: private,
            visibility: visibility,
            hasIssues: hasIssues,
            hasProjects: hasProjects,
            hasWiki: hasWiki,
            isTemplate: isTemplate,
            teamId: teamId,
            autoInit: autoInit,
            gitignoreTemplate: gitignoreTemplate,
            licenseTemplate: licenseTemplate,
            allowSquashMerge: allowSquashMerge,
            allowMergeCommit: allowMergeCommit,
            allowRebaseMerge: allowRebaseMerge,
            deleteBranchOnMerge: deleteBranchOnMerge);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
