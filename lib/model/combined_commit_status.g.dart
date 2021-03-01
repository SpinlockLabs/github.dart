// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'combined_commit_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CombinedCommitStatus> _$combinedCommitStatusSerializer =
    new _$CombinedCommitStatusSerializer();

class _$CombinedCommitStatusSerializer
    implements StructuredSerializer<CombinedCommitStatus> {
  @override
  final Iterable<Type> types = const [
    CombinedCommitStatus,
    _$CombinedCommitStatus
  ];
  @override
  final String wireName = 'CombinedCommitStatus';

  @override
  Iterable<Object> serialize(
      Serializers serializers, CombinedCommitStatus object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(String)));
    }
    if (object.statuses != null) {
      result
        ..add('statuses')
        ..add(serializers.serialize(object.statuses,
            specifiedType: const FullType(
                BuiltList, const [const FullType(SimpleCommitStatus)])));
    }
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.totalCount != null) {
      result
        ..add('total_count')
        ..add(serializers.serialize(object.totalCount,
            specifiedType: const FullType(int)));
    }
    if (object.repository != null) {
      result
        ..add('repository')
        ..add(serializers.serialize(object.repository,
            specifiedType: const FullType(MinimalRepository)));
    }
    if (object.commitUrl != null) {
      result
        ..add('commit_url')
        ..add(serializers.serialize(object.commitUrl,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CombinedCommitStatus deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CombinedCommitStatusBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'state':
          result.state = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'statuses':
          result.statuses.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(SimpleCommitStatus)]))
              as BuiltList<Object>);
          break;
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'total_count':
          result.totalCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'repository':
          result.repository.replace(serializers.deserialize(value,
                  specifiedType: const FullType(MinimalRepository))
              as MinimalRepository);
          break;
        case 'commit_url':
          result.commitUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CombinedCommitStatus extends CombinedCommitStatus {
  @override
  final String state;
  @override
  final BuiltList<SimpleCommitStatus> statuses;
  @override
  final String sha;
  @override
  final int totalCount;
  @override
  final MinimalRepository repository;
  @override
  final String commitUrl;
  @override
  final String url;

  factory _$CombinedCommitStatus(
          [void Function(CombinedCommitStatusBuilder) updates]) =>
      (new CombinedCommitStatusBuilder()..update(updates)).build();

  _$CombinedCommitStatus._(
      {this.state,
      this.statuses,
      this.sha,
      this.totalCount,
      this.repository,
      this.commitUrl,
      this.url})
      : super._();

  @override
  CombinedCommitStatus rebuild(
          void Function(CombinedCommitStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CombinedCommitStatusBuilder toBuilder() =>
      new CombinedCommitStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CombinedCommitStatus &&
        state == other.state &&
        statuses == other.statuses &&
        sha == other.sha &&
        totalCount == other.totalCount &&
        repository == other.repository &&
        commitUrl == other.commitUrl &&
        url == other.url;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, state.hashCode), statuses.hashCode),
                        sha.hashCode),
                    totalCount.hashCode),
                repository.hashCode),
            commitUrl.hashCode),
        url.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CombinedCommitStatus')
          ..add('state', state)
          ..add('statuses', statuses)
          ..add('sha', sha)
          ..add('totalCount', totalCount)
          ..add('repository', repository)
          ..add('commitUrl', commitUrl)
          ..add('url', url))
        .toString();
  }
}

class CombinedCommitStatusBuilder
    implements Builder<CombinedCommitStatus, CombinedCommitStatusBuilder> {
  _$CombinedCommitStatus _$v;

  String _state;
  String get state => _$this._state;
  set state(String state) => _$this._state = state;

  ListBuilder<SimpleCommitStatus> _statuses;
  ListBuilder<SimpleCommitStatus> get statuses =>
      _$this._statuses ??= new ListBuilder<SimpleCommitStatus>();
  set statuses(ListBuilder<SimpleCommitStatus> statuses) =>
      _$this._statuses = statuses;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  int _totalCount;
  int get totalCount => _$this._totalCount;
  set totalCount(int totalCount) => _$this._totalCount = totalCount;

  MinimalRepositoryBuilder _repository;
  MinimalRepositoryBuilder get repository =>
      _$this._repository ??= new MinimalRepositoryBuilder();
  set repository(MinimalRepositoryBuilder repository) =>
      _$this._repository = repository;

  String _commitUrl;
  String get commitUrl => _$this._commitUrl;
  set commitUrl(String commitUrl) => _$this._commitUrl = commitUrl;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  CombinedCommitStatusBuilder() {
    CombinedCommitStatus._initializeBuilder(this);
  }

  CombinedCommitStatusBuilder get _$this {
    if (_$v != null) {
      _state = _$v.state;
      _statuses = _$v.statuses?.toBuilder();
      _sha = _$v.sha;
      _totalCount = _$v.totalCount;
      _repository = _$v.repository?.toBuilder();
      _commitUrl = _$v.commitUrl;
      _url = _$v.url;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CombinedCommitStatus other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CombinedCommitStatus;
  }

  @override
  void update(void Function(CombinedCommitStatusBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CombinedCommitStatus build() {
    _$CombinedCommitStatus _$result;
    try {
      _$result = _$v ??
          new _$CombinedCommitStatus._(
              state: state,
              statuses: _statuses?.build(),
              sha: sha,
              totalCount: totalCount,
              repository: _repository?.build(),
              commitUrl: commitUrl,
              url: url);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'statuses';
        _statuses?.build();

        _$failedField = 'repository';
        _repository?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CombinedCommitStatus', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
