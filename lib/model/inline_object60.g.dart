// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object60.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject60VisibilityEnum _$inlineObject60VisibilityEnum_public =
    const InlineObject60VisibilityEnum._('public');
const InlineObject60VisibilityEnum _$inlineObject60VisibilityEnum_private =
    const InlineObject60VisibilityEnum._('private');
const InlineObject60VisibilityEnum _$inlineObject60VisibilityEnum_visibility =
    const InlineObject60VisibilityEnum._('visibility');
const InlineObject60VisibilityEnum _$inlineObject60VisibilityEnum_internal =
    const InlineObject60VisibilityEnum._('internal');

InlineObject60VisibilityEnum _$inlineObject60VisibilityEnumValueOf(
    String name) {
  switch (name) {
    case 'public':
      return _$inlineObject60VisibilityEnum_public;
    case 'private':
      return _$inlineObject60VisibilityEnum_private;
    case 'visibility':
      return _$inlineObject60VisibilityEnum_visibility;
    case 'internal':
      return _$inlineObject60VisibilityEnum_internal;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject60VisibilityEnum>
    _$inlineObject60VisibilityEnumValues = new BuiltSet<
        InlineObject60VisibilityEnum>(const <InlineObject60VisibilityEnum>[
  _$inlineObject60VisibilityEnum_public,
  _$inlineObject60VisibilityEnum_private,
  _$inlineObject60VisibilityEnum_visibility,
  _$inlineObject60VisibilityEnum_internal,
]);

Serializer<InlineObject60> _$inlineObject60Serializer =
    new _$InlineObject60Serializer();
Serializer<InlineObject60VisibilityEnum>
    _$inlineObject60VisibilityEnumSerializer =
    new _$InlineObject60VisibilityEnumSerializer();

class _$InlineObject60Serializer
    implements StructuredSerializer<InlineObject60> {
  @override
  final Iterable<Type> types = const [InlineObject60, _$InlineObject60];
  @override
  final String wireName = 'InlineObject60';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject60 object,
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
            specifiedType: const FullType(InlineObject60VisibilityEnum)));
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
    if (object.defaultBranch != null) {
      result
        ..add('default_branch')
        ..add(serializers.serialize(object.defaultBranch,
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
    if (object.archived != null) {
      result
        ..add('archived')
        ..add(serializers.serialize(object.archived,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  InlineObject60 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject60Builder();

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
                  specifiedType: const FullType(InlineObject60VisibilityEnum))
              as InlineObject60VisibilityEnum;
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
        case 'default_branch':
          result.defaultBranch = serializers.deserialize(value,
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
        case 'archived':
          result.archived = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject60VisibilityEnumSerializer
    implements PrimitiveSerializer<InlineObject60VisibilityEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject60VisibilityEnum];
  @override
  final String wireName = 'InlineObject60VisibilityEnum';

  @override
  Object serialize(Serializers serializers, InlineObject60VisibilityEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject60VisibilityEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject60VisibilityEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject60 extends InlineObject60 {
  @override
  final String name;
  @override
  final String description;
  @override
  final String homepage;
  @override
  final bool private;
  @override
  final InlineObject60VisibilityEnum visibility;
  @override
  final bool hasIssues;
  @override
  final bool hasProjects;
  @override
  final bool hasWiki;
  @override
  final bool isTemplate;
  @override
  final String defaultBranch;
  @override
  final bool allowSquashMerge;
  @override
  final bool allowMergeCommit;
  @override
  final bool allowRebaseMerge;
  @override
  final bool deleteBranchOnMerge;
  @override
  final bool archived;

  factory _$InlineObject60([void Function(InlineObject60Builder) updates]) =>
      (new InlineObject60Builder()..update(updates)).build();

  _$InlineObject60._(
      {this.name,
      this.description,
      this.homepage,
      this.private,
      this.visibility,
      this.hasIssues,
      this.hasProjects,
      this.hasWiki,
      this.isTemplate,
      this.defaultBranch,
      this.allowSquashMerge,
      this.allowMergeCommit,
      this.allowRebaseMerge,
      this.deleteBranchOnMerge,
      this.archived})
      : super._();

  @override
  InlineObject60 rebuild(void Function(InlineObject60Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject60Builder toBuilder() =>
      new InlineObject60Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject60 &&
        name == other.name &&
        description == other.description &&
        homepage == other.homepage &&
        private == other.private &&
        visibility == other.visibility &&
        hasIssues == other.hasIssues &&
        hasProjects == other.hasProjects &&
        hasWiki == other.hasWiki &&
        isTemplate == other.isTemplate &&
        defaultBranch == other.defaultBranch &&
        allowSquashMerge == other.allowSquashMerge &&
        allowMergeCommit == other.allowMergeCommit &&
        allowRebaseMerge == other.allowRebaseMerge &&
        deleteBranchOnMerge == other.deleteBranchOnMerge &&
        archived == other.archived;
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
                                                            $jc(0,
                                                                name.hashCode),
                                                            description
                                                                .hashCode),
                                                        homepage.hashCode),
                                                    private.hashCode),
                                                visibility.hashCode),
                                            hasIssues.hashCode),
                                        hasProjects.hashCode),
                                    hasWiki.hashCode),
                                isTemplate.hashCode),
                            defaultBranch.hashCode),
                        allowSquashMerge.hashCode),
                    allowMergeCommit.hashCode),
                allowRebaseMerge.hashCode),
            deleteBranchOnMerge.hashCode),
        archived.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject60')
          ..add('name', name)
          ..add('description', description)
          ..add('homepage', homepage)
          ..add('private', private)
          ..add('visibility', visibility)
          ..add('hasIssues', hasIssues)
          ..add('hasProjects', hasProjects)
          ..add('hasWiki', hasWiki)
          ..add('isTemplate', isTemplate)
          ..add('defaultBranch', defaultBranch)
          ..add('allowSquashMerge', allowSquashMerge)
          ..add('allowMergeCommit', allowMergeCommit)
          ..add('allowRebaseMerge', allowRebaseMerge)
          ..add('deleteBranchOnMerge', deleteBranchOnMerge)
          ..add('archived', archived))
        .toString();
  }
}

class InlineObject60Builder
    implements Builder<InlineObject60, InlineObject60Builder> {
  _$InlineObject60 _$v;

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

  InlineObject60VisibilityEnum _visibility;
  InlineObject60VisibilityEnum get visibility => _$this._visibility;
  set visibility(InlineObject60VisibilityEnum visibility) =>
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

  String _defaultBranch;
  String get defaultBranch => _$this._defaultBranch;
  set defaultBranch(String defaultBranch) =>
      _$this._defaultBranch = defaultBranch;

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

  bool _archived;
  bool get archived => _$this._archived;
  set archived(bool archived) => _$this._archived = archived;

  InlineObject60Builder() {
    InlineObject60._initializeBuilder(this);
  }

  InlineObject60Builder get _$this {
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
      _defaultBranch = _$v.defaultBranch;
      _allowSquashMerge = _$v.allowSquashMerge;
      _allowMergeCommit = _$v.allowMergeCommit;
      _allowRebaseMerge = _$v.allowRebaseMerge;
      _deleteBranchOnMerge = _$v.deleteBranchOnMerge;
      _archived = _$v.archived;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject60 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject60;
  }

  @override
  void update(void Function(InlineObject60Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject60 build() {
    final _$result = _$v ??
        new _$InlineObject60._(
            name: name,
            description: description,
            homepage: homepage,
            private: private,
            visibility: visibility,
            hasIssues: hasIssues,
            hasProjects: hasProjects,
            hasWiki: hasWiki,
            isTemplate: isTemplate,
            defaultBranch: defaultBranch,
            allowSquashMerge: allowSquashMerge,
            allowMergeCommit: allowMergeCommit,
            allowRebaseMerge: allowRebaseMerge,
            deleteBranchOnMerge: deleteBranchOnMerge,
            archived: archived);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
