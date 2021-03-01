// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pull_request_minimal_head_repo.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PullRequestMinimalHeadRepo> _$pullRequestMinimalHeadRepoSerializer =
    new _$PullRequestMinimalHeadRepoSerializer();

class _$PullRequestMinimalHeadRepoSerializer
    implements StructuredSerializer<PullRequestMinimalHeadRepo> {
  @override
  final Iterable<Type> types = const [
    PullRequestMinimalHeadRepo,
    _$PullRequestMinimalHeadRepo
  ];
  @override
  final String wireName = 'PullRequestMinimalHeadRepo';

  @override
  Iterable<Object> serialize(
      Serializers serializers, PullRequestMinimalHeadRepo object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PullRequestMinimalHeadRepo deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PullRequestMinimalHeadRepoBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PullRequestMinimalHeadRepo extends PullRequestMinimalHeadRepo {
  @override
  final int id;
  @override
  final String url;
  @override
  final String name;

  factory _$PullRequestMinimalHeadRepo(
          [void Function(PullRequestMinimalHeadRepoBuilder) updates]) =>
      (new PullRequestMinimalHeadRepoBuilder()..update(updates)).build();

  _$PullRequestMinimalHeadRepo._({this.id, this.url, this.name}) : super._();

  @override
  PullRequestMinimalHeadRepo rebuild(
          void Function(PullRequestMinimalHeadRepoBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PullRequestMinimalHeadRepoBuilder toBuilder() =>
      new PullRequestMinimalHeadRepoBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PullRequestMinimalHeadRepo &&
        id == other.id &&
        url == other.url &&
        name == other.name;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, id.hashCode), url.hashCode), name.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PullRequestMinimalHeadRepo')
          ..add('id', id)
          ..add('url', url)
          ..add('name', name))
        .toString();
  }
}

class PullRequestMinimalHeadRepoBuilder
    implements
        Builder<PullRequestMinimalHeadRepo, PullRequestMinimalHeadRepoBuilder> {
  _$PullRequestMinimalHeadRepo _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  PullRequestMinimalHeadRepoBuilder() {
    PullRequestMinimalHeadRepo._initializeBuilder(this);
  }

  PullRequestMinimalHeadRepoBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _url = _$v.url;
      _name = _$v.name;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PullRequestMinimalHeadRepo other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PullRequestMinimalHeadRepo;
  }

  @override
  void update(void Function(PullRequestMinimalHeadRepoBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PullRequestMinimalHeadRepo build() {
    final _$result =
        _$v ?? new _$PullRequestMinimalHeadRepo._(id: id, url: url, name: name);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
