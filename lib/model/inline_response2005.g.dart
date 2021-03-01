// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_response2005.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineResponse2005> _$inlineResponse2005Serializer =
    new _$InlineResponse2005Serializer();

class _$InlineResponse2005Serializer
    implements StructuredSerializer<InlineResponse2005> {
  @override
  final Iterable<Type> types = const [InlineResponse2005, _$InlineResponse2005];
  @override
  final String wireName = 'InlineResponse2005';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineResponse2005 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(int)));
    }
    if (object.repositories != null) {
      result
        ..add('repositories')
        ..add(serializers.serialize(object.repositories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Repository)])));
    }
    if (object.repositorySelection != null) {
      result
        ..add('repository_selection')
        ..add(serializers.serialize(object.repositorySelection,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineResponse2005 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineResponse2005Builder();

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
        case 'repositories':
          result.repositories.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(Repository)]))
              as BuiltList<Object>);
          break;
        case 'repository_selection':
          result.repositorySelection = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineResponse2005 extends InlineResponse2005 {
  @override
  final int totalCount;
  @override
  final BuiltList<Repository> repositories;
  @override
  final String repositorySelection;

  factory _$InlineResponse2005(
          [void Function(InlineResponse2005Builder) updates]) =>
      (new InlineResponse2005Builder()..update(updates)).build();

  _$InlineResponse2005._(
      {this.totalCount, this.repositories, this.repositorySelection})
      : super._();

  @override
  InlineResponse2005 rebuild(
          void Function(InlineResponse2005Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineResponse2005Builder toBuilder() =>
      new InlineResponse2005Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineResponse2005 &&
        totalCount == other.totalCount &&
        repositories == other.repositories &&
        repositorySelection == other.repositorySelection;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, totalCount.hashCode), repositories.hashCode),
        repositorySelection.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineResponse2005')
          ..add('totalCount', totalCount)
          ..add('repositories', repositories)
          ..add('repositorySelection', repositorySelection))
        .toString();
  }
}

class InlineResponse2005Builder
    implements Builder<InlineResponse2005, InlineResponse2005Builder> {
  _$InlineResponse2005 _$v;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  ListBuilder<Repository> _repositories;
  ListBuilder<Repository> get repositories =>
      _$this._repositories ??= new ListBuilder<Repository>();
  set repositories(ListBuilder<Repository> repositories) =>
      _$this._repositories = repositories;

  String _repositorySelection;
  String get repositorySelection => _$this._repositorySelection;
  set repositorySelection(String repositorySelection) =>
      _$this._repositorySelection = repositorySelection;

  InlineResponse2005Builder() {
    InlineResponse2005._initializeBuilder(this);
  }

  InlineResponse2005Builder get _$this {
    if (_$v != null) {
      _totalCount = _$v.totalCount;
      _repositories = _$v.repositories?.toBuilder();
      _repositorySelection = _$v.repositorySelection;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineResponse2005 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineResponse2005;
  }

  @override
  void update(void Function(InlineResponse2005Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineResponse2005 build() {
    _$InlineResponse2005 _$result;
    try {
      _$result = _$v ??
          new _$InlineResponse2005._(
              totalCount: totalCount,
              repositories: _repositories?.build(),
              repositorySelection: repositorySelection);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repositories';
        _repositories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineResponse2005', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
