// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'starred_repository.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<StarredRepository> _$starredRepositorySerializer =
    new _$StarredRepositorySerializer();

class _$StarredRepositorySerializer
    implements StructuredSerializer<StarredRepository> {
  @override
  final Iterable<Type> types = const [StarredRepository, _$StarredRepository];
  @override
  final String wireName = 'StarredRepository';

  @override
  Iterable<Object> serialize(Serializers serializers, StarredRepository object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.starredAt != null) {
      result
        ..add('starred_at')
        ..add(serializers.serialize(object.starredAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.repo != null) {
      result
        ..add('repo')
        ..add(serializers.serialize(object.repo,
            specifiedType: const FullType(Repository)));
    }
    return result;
  }

  @override
  StarredRepository deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new StarredRepositoryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'starred_at':
          result.starredAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'repo':
          result.repo.replace(serializers.deserialize(value,
              specifiedType: const FullType(Repository)) as Repository);
          break;
      }
    }

    return result.build();
  }
}

class _$StarredRepository extends StarredRepository {
  @override
  final DateTime starredAt;
  @override
  final Repository repo;

  factory _$StarredRepository(
          [void Function(StarredRepositoryBuilder) updates]) =>
      (new StarredRepositoryBuilder()..update(updates)).build();

  _$StarredRepository._({this.starredAt, this.repo}) : super._();

  @override
  StarredRepository rebuild(void Function(StarredRepositoryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  StarredRepositoryBuilder toBuilder() =>
      new StarredRepositoryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is StarredRepository &&
        starredAt == other.starredAt &&
        repo == other.repo;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, starredAt.hashCode), repo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('StarredRepository')
          ..add('starredAt', starredAt)
          ..add('repo', repo))
        .toString();
  }
}

class StarredRepositoryBuilder
    implements Builder<StarredRepository, StarredRepositoryBuilder> {
  _$StarredRepository _$v;

  DateTime _starredAt;
  DateTime get starredAt => _$this._starredAt;
  set starredAt(DateTime starredAt) => _$this._starredAt = starredAt;

  RepositoryBuilder _repo;
  RepositoryBuilder get repo => _$this._repo ??= new RepositoryBuilder();
  set repo(RepositoryBuilder repo) => _$this._repo = repo;

  StarredRepositoryBuilder() {
    StarredRepository._initializeBuilder(this);
  }

  StarredRepositoryBuilder get _$this {
    if (_$v != null) {
      _starredAt = _$v.starredAt;
      _repo = _$v.repo?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(StarredRepository other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$StarredRepository;
  }

  @override
  void update(void Function(StarredRepositoryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$StarredRepository build() {
    _$StarredRepository _$result;
    try {
      _$result = _$v ??
          new _$StarredRepository._(starredAt: starredAt, repo: _repo?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repo';
        _repo?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'StarredRepository', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
