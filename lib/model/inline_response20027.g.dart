// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response20027.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse20027> _$inlineResponse20027Serializer =
    new _$InlineResponse20027Serializer();

class _$InlineResponse20027Serializer
    implements StructuredSerializer<InlineResponse20027> {
  @override
  final Iterable<Type> types = const [
    InlineResponse20027,
    _$InlineResponse20027
  ];
  @override
  final String wireName = 'InlineResponse20027';

  @override
  Iterable<Object> serialize(
      Serializers serializers, InlineResponse20027 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(int)));
    }
    if (object.repositorySelection != null) {
      result
        ..add('repository_selection')
        ..add(serializers.serialize(object.repositorySelection,
            specifiedType: const FullType(String)));
    }
    if (object.repositories != null) {
      result
        ..add('repositories')
        ..add(serializers.serialize(object.repositories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Repository)])));
    }
    return result;
  }

  @override
  InlineResponse20027 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse20027Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'total_count':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'repository_selection':
          result.repositorySelection = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'repositories':
          result.repositories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Repository)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse20027 extends InlineResponse20027 {
  @override
  final int totalCount;
  @override
  final String repositorySelection;
  @override
  final BuiltList<Repository> repositories;

  factory _$InlineResponse20027(
          [void Function(InlineResponse20027Builder) updates]) =>
      (new InlineResponse20027Builder()..update(updates)).build();

  _$InlineResponse20027._(
      {this.totalCount, this.repositorySelection, this.repositories})
      : super._();

  @override
  InlineResponse20027 rebuild(
          void Function(InlineResponse20027Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse20027Builder toBuilder() =>
      new InlineResponse20027Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse20027 &&
        totalCount == other.totalCount &&
        repositorySelection == other.repositorySelection &&
        repositories == other.repositories;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc(0, totalCount.hashCode), repositorySelection.hashCode),
        repositories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse20027')
          ..add('totalCount', totalCount)
          ..add('repositorySelection', repositorySelection)
          ..add('repositories', repositories))
        .toString();
  }
}

class InlineResponse20027Builder
    implements Builder<InlineResponse20027, InlineResponse20027Builder> {
  _$InlineResponse20027 _$v;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  String _repositorySelection;
  String get repositorySelection => _$this._repositorySelection;
  set repositorySelection(String repositorySelection) =>
      _$this._repositorySelection = repositorySelection;

  ListBuilder<Repository> _repositories;
  ListBuilder<Repository> get repositories =>
      _$this._repositories ??= new ListBuilder<Repository>();
  set repositories(ListBuilder<Repository> repositories) =>
      _$this._repositories = repositories;

  InlineResponse20027Builder() {
    InlineResponse20027._initializeBuilder(this);
  }

  InlineResponse20027Builder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _repositorySelection = _$v.repositorySelection;
      _repositories = _$v.repositories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse20027 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse20027;
  }

  @override
  void update(void Function(InlineResponse20027Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse20027 build() {
    _$InlineResponse20027 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse20027._(
              totalCount: totalCount,
              repositorySelection: repositorySelection,
              repositories: _repositories?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repositories';
        _repositories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse20027', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
