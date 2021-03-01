// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_git_trees_tree.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReposOwnerRepoGitTreesTreeModeEnum
    _$reposOwnerRepoGitTreesTreeModeEnum_n100644 =
    const ReposOwnerRepoGitTreesTreeModeEnum._('n100644');
const ReposOwnerRepoGitTreesTreeModeEnum
    _$reposOwnerRepoGitTreesTreeModeEnum_n100755 =
    const ReposOwnerRepoGitTreesTreeModeEnum._('n100755');
const ReposOwnerRepoGitTreesTreeModeEnum
    _$reposOwnerRepoGitTreesTreeModeEnum_n040000 =
    const ReposOwnerRepoGitTreesTreeModeEnum._('n040000');
const ReposOwnerRepoGitTreesTreeModeEnum
    _$reposOwnerRepoGitTreesTreeModeEnum_n160000 =
    const ReposOwnerRepoGitTreesTreeModeEnum._('n160000');
const ReposOwnerRepoGitTreesTreeModeEnum
    _$reposOwnerRepoGitTreesTreeModeEnum_n120000 =
    const ReposOwnerRepoGitTreesTreeModeEnum._('n120000');

ReposOwnerRepoGitTreesTreeModeEnum _$reposOwnerRepoGitTreesTreeModeEnumValueOf(
    String name) {
  switch (name) {
    case 'n100644':
      return _$reposOwnerRepoGitTreesTreeModeEnum_n100644;
    case 'n100755':
      return _$reposOwnerRepoGitTreesTreeModeEnum_n100755;
    case 'n040000':
      return _$reposOwnerRepoGitTreesTreeModeEnum_n040000;
    case 'n160000':
      return _$reposOwnerRepoGitTreesTreeModeEnum_n160000;
    case 'n120000':
      return _$reposOwnerRepoGitTreesTreeModeEnum_n120000;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ReposOwnerRepoGitTreesTreeModeEnum>
    _$reposOwnerRepoGitTreesTreeModeEnumValues =
    new BuiltSet<ReposOwnerRepoGitTreesTreeModeEnum>(const <
        ReposOwnerRepoGitTreesTreeModeEnum>[
  _$reposOwnerRepoGitTreesTreeModeEnum_n100644,
  _$reposOwnerRepoGitTreesTreeModeEnum_n100755,
  _$reposOwnerRepoGitTreesTreeModeEnum_n040000,
  _$reposOwnerRepoGitTreesTreeModeEnum_n160000,
  _$reposOwnerRepoGitTreesTreeModeEnum_n120000,
]);

const ReposOwnerRepoGitTreesTreeTypeEnum
    _$reposOwnerRepoGitTreesTreeTypeEnum_blob =
    const ReposOwnerRepoGitTreesTreeTypeEnum._('blob');
const ReposOwnerRepoGitTreesTreeTypeEnum
    _$reposOwnerRepoGitTreesTreeTypeEnum_tree =
    const ReposOwnerRepoGitTreesTreeTypeEnum._('tree');
const ReposOwnerRepoGitTreesTreeTypeEnum
    _$reposOwnerRepoGitTreesTreeTypeEnum_commit =
    const ReposOwnerRepoGitTreesTreeTypeEnum._('commit');

ReposOwnerRepoGitTreesTreeTypeEnum _$reposOwnerRepoGitTreesTreeTypeEnumValueOf(
    String name) {
  switch (name) {
    case 'blob':
      return _$reposOwnerRepoGitTreesTreeTypeEnum_blob;
    case 'tree':
      return _$reposOwnerRepoGitTreesTreeTypeEnum_tree;
    case 'commit':
      return _$reposOwnerRepoGitTreesTreeTypeEnum_commit;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ReposOwnerRepoGitTreesTreeTypeEnum>
    _$reposOwnerRepoGitTreesTreeTypeEnumValues =
    new BuiltSet<ReposOwnerRepoGitTreesTreeTypeEnum>(const <
        ReposOwnerRepoGitTreesTreeTypeEnum>[
  _$reposOwnerRepoGitTreesTreeTypeEnum_blob,
  _$reposOwnerRepoGitTreesTreeTypeEnum_tree,
  _$reposOwnerRepoGitTreesTreeTypeEnum_commit,
]);

Serializer<ReposOwnerRepoGitTreesTree> _$reposOwnerRepoGitTreesTreeSerializer =
    new _$ReposOwnerRepoGitTreesTreeSerializer();
Serializer<ReposOwnerRepoGitTreesTreeModeEnum>
    _$reposOwnerRepoGitTreesTreeModeEnumSerializer =
    new _$ReposOwnerRepoGitTreesTreeModeEnumSerializer();
Serializer<ReposOwnerRepoGitTreesTreeTypeEnum>
    _$reposOwnerRepoGitTreesTreeTypeEnumSerializer =
    new _$ReposOwnerRepoGitTreesTreeTypeEnumSerializer();

class _$ReposOwnerRepoGitTreesTreeSerializer
    implements StructuredSerializer<ReposOwnerRepoGitTreesTree> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoGitTreesTree,
    _$ReposOwnerRepoGitTreesTree
  ];
  @override
  final String wireName = 'ReposOwnerRepoGitTreesTree';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReposOwnerRepoGitTreesTree object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.mode != null) {
      result
        ..add('mode')
        ..add(serializers.serialize(object.mode,
            specifiedType: const FullType(ReposOwnerRepoGitTreesTreeModeEnum)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(ReposOwnerRepoGitTreesTreeTypeEnum)));
    }
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.content != null) {
      result
        ..add('content')
        ..add(serializers.serialize(object.content,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReposOwnerRepoGitTreesTree deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReposOwnerRepoGitTreesTreeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'mode':
          result.mode = serializers.deserialize(value,
                  specifiedType:
                      const FullType(ReposOwnerRepoGitTreesTreeModeEnum))
              as ReposOwnerRepoGitTreesTreeModeEnum;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType:
                      const FullType(ReposOwnerRepoGitTreesTreeTypeEnum))
              as ReposOwnerRepoGitTreesTreeTypeEnum;
          break;
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReposOwnerRepoGitTreesTreeModeEnumSerializer
    implements PrimitiveSerializer<ReposOwnerRepoGitTreesTreeModeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'n100644': '100644',
    'n100755': '100755',
    'n040000': '040000',
    'n160000': '160000',
    'n120000': '120000',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '100644': 'n100644',
    '100755': 'n100755',
    '040000': 'n040000',
    '160000': 'n160000',
    '120000': 'n120000',
  };

  @override
  final Iterable<Type> types = const <Type>[ReposOwnerRepoGitTreesTreeModeEnum];
  @override
  final String wireName = 'ReposOwnerRepoGitTreesTreeModeEnum';

  @override
  Object serialize(
          Serializers serializers, ReposOwnerRepoGitTreesTreeModeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReposOwnerRepoGitTreesTreeModeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReposOwnerRepoGitTreesTreeModeEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$ReposOwnerRepoGitTreesTreeTypeEnumSerializer
    implements PrimitiveSerializer<ReposOwnerRepoGitTreesTreeTypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'blob': 'blob',
    'tree': 'tree',
    'commit': 'commit',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'blob': 'blob',
    'tree': 'tree',
    'commit': 'commit',
  };

  @override
  final Iterable<Type> types = const <Type>[ReposOwnerRepoGitTreesTreeTypeEnum];
  @override
  final String wireName = 'ReposOwnerRepoGitTreesTreeTypeEnum';

  @override
  Object serialize(
          Serializers serializers, ReposOwnerRepoGitTreesTreeTypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReposOwnerRepoGitTreesTreeTypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReposOwnerRepoGitTreesTreeTypeEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$ReposOwnerRepoGitTreesTree extends ReposOwnerRepoGitTreesTree {
  @override
  final String path;
  @override
  final ReposOwnerRepoGitTreesTreeModeEnum mode;
  @override
  final ReposOwnerRepoGitTreesTreeTypeEnum type;
  @override
  final String sha;
  @override
  final String content;

  factory _$ReposOwnerRepoGitTreesTree(
          [void Function(ReposOwnerRepoGitTreesTreeBuilder) updates]) =>
      (new ReposOwnerRepoGitTreesTreeBuilder()..update(updates)).build();

  _$ReposOwnerRepoGitTreesTree._(
      {this.path, this.mode, this.type, this.sha, this.content})
      : super._();

  @override
  ReposOwnerRepoGitTreesTree rebuild(
          void Function(ReposOwnerRepoGitTreesTreeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoGitTreesTreeBuilder toBuilder() =>
      new ReposOwnerRepoGitTreesTreeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReposOwnerRepoGitTreesTree &&
        path == other.path &&
        mode == other.mode &&
        type == other.type &&
        sha == other.sha &&
        content == other.content;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, path.hashCode), mode.hashCode), type.hashCode),
            sha.hashCode),
        content.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReposOwnerRepoGitTreesTree')
          ..add('path', path)
          ..add('mode', mode)
          ..add('type', type)
          ..add('sha', sha)
          ..add('content', content))
        .toString();
  }
}

class ReposOwnerRepoGitTreesTreeBuilder
    implements
        Builder<ReposOwnerRepoGitTreesTree, ReposOwnerRepoGitTreesTreeBuilder> {
  _$ReposOwnerRepoGitTreesTree _$v;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  ReposOwnerRepoGitTreesTreeModeEnum _mode;
  ReposOwnerRepoGitTreesTreeModeEnum get mode => _$this._mode;
  set mode(ReposOwnerRepoGitTreesTreeModeEnum mode) => _$this._mode = mode;

  ReposOwnerRepoGitTreesTreeTypeEnum _type;
  ReposOwnerRepoGitTreesTreeTypeEnum get type => _$this._type;
  set type(ReposOwnerRepoGitTreesTreeTypeEnum type) => _$this._type = type;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _content;
  String get content => _$this._content;
  set content(String content) => _$this._content = content;

  ReposOwnerRepoGitTreesTreeBuilder() {
    ReposOwnerRepoGitTreesTree._initializeBuilder(this);
  }

  ReposOwnerRepoGitTreesTreeBuilder get _$this {
    if (_$v != null) {
      _path = _$v.path;
      _mode = _$v.mode;
      _type = _$v.type;
      _sha = _$v.sha;
      _content = _$v.content;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReposOwnerRepoGitTreesTree other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReposOwnerRepoGitTreesTree;
  }

  @override
  void update(void Function(ReposOwnerRepoGitTreesTreeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoGitTreesTree build() {
    final _$result = _$v ??
        new _$ReposOwnerRepoGitTreesTree._(
            path: path, mode: mode, type: type, sha: sha, content: content);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
