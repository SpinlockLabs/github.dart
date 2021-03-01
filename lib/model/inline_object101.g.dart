// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object101.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject101> _$inlineObject101Serializer =
    new _$InlineObject101Serializer();

class _$InlineObject101Serializer
    implements StructuredSerializer<InlineObject101> {
  @override
  final Iterable<Type> types = const [InlineObject101, _$InlineObject101];
  @override
  final String wireName = 'InlineObject101';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject101 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.tree != null) {
      result
        ..add('tree')
        ..add(serializers.serialize(object.tree,
            specifiedType: const FullType(BuiltList,
                const [const FullType(ReposOwnerRepoGitTreesTree)])));
    }
    if (object.baseTree != null) {
      result
        ..add('base_tree')
        ..add(serializers.serialize(object.baseTree,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject101 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject101Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'tree':
          result.tree.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(ReposOwnerRepoGitTreesTree)
              ])) as BuiltList<Object>);
          break;
        case 'base_tree':
          result.baseTree = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject101 extends InlineObject101 {
  @override
  final BuiltList<ReposOwnerRepoGitTreesTree> tree;
  @override
  final String baseTree;

  factory _$InlineObject101([void Function(InlineObject101Builder) updates]) =>
      (new InlineObject101Builder()..update(updates)).build();

  _$InlineObject101._({this.tree, this.baseTree}) : super._();

  @override
  InlineObject101 rebuild(void Function(InlineObject101Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject101Builder toBuilder() =>
      new InlineObject101Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject101 &&
        tree == other.tree &&
        baseTree == other.baseTree;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, tree.hashCode), baseTree.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject101')
          ..add('tree', tree)
          ..add('baseTree', baseTree))
        .toString();
  }
}

class InlineObject101Builder
    implements Builder<InlineObject101, InlineObject101Builder> {
  _$InlineObject101 _$v;

  ListBuilder<ReposOwnerRepoGitTreesTree> _tree;
  ListBuilder<ReposOwnerRepoGitTreesTree> get tree =>
      _$this._tree ??= new ListBuilder<ReposOwnerRepoGitTreesTree>();
  set tree(ListBuilder<ReposOwnerRepoGitTreesTree> tree) => _$this._tree = tree;

  String _baseTree;
  String get baseTree => _$this._baseTree;
  set baseTree(String baseTree) => _$this._baseTree = baseTree;

  InlineObject101Builder() {
    InlineObject101._initializeBuilder(this);
  }

  InlineObject101Builder get _$this {
    if (_$v != null) {
      _tree = _$v.tree?.toBuilder();
      _baseTree = _$v.baseTree;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject101 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject101;
  }

  @override
  void update(void Function(InlineObject101Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject101 build() {
    _$InlineObject101 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject101._(tree: _tree?.build(), baseTree: baseTree);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tree';
        _tree?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject101', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
