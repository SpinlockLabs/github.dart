// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'commit_comparison.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const CommitComparisonStatusEnum _$commitComparisonStatusEnum_diverged =
    const CommitComparisonStatusEnum._('diverged');
const CommitComparisonStatusEnum _$commitComparisonStatusEnum_ahead =
    const CommitComparisonStatusEnum._('ahead');
const CommitComparisonStatusEnum _$commitComparisonStatusEnum_behind =
    const CommitComparisonStatusEnum._('behind');
const CommitComparisonStatusEnum _$commitComparisonStatusEnum_identical =
    const CommitComparisonStatusEnum._('identical');

CommitComparisonStatusEnum _$commitComparisonStatusEnumValueOf(String name) {
  switch (name) {
    case 'diverged':
      return _$commitComparisonStatusEnum_diverged;
    case 'ahead':
      return _$commitComparisonStatusEnum_ahead;
    case 'behind':
      return _$commitComparisonStatusEnum_behind;
    case 'identical':
      return _$commitComparisonStatusEnum_identical;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<CommitComparisonStatusEnum> _$commitComparisonStatusEnumValues =
    new BuiltSet<CommitComparisonStatusEnum>(const <CommitComparisonStatusEnum>[
  _$commitComparisonStatusEnum_diverged,
  _$commitComparisonStatusEnum_ahead,
  _$commitComparisonStatusEnum_behind,
  _$commitComparisonStatusEnum_identical,
]);

Serializer<CommitComparison> _$commitComparisonSerializer =
    new _$CommitComparisonSerializer();
Serializer<CommitComparisonStatusEnum> _$commitComparisonStatusEnumSerializer =
    new _$CommitComparisonStatusEnumSerializer();

class _$CommitComparisonSerializer
    implements StructuredSerializer<CommitComparison> {
  @override
  final Iterable<Type> types = const [CommitComparison, _$CommitComparison];
  @override
  final String wireName = 'CommitComparison';

  @override
  Iterable<Object> serialize(Serializers serializers, CommitComparison object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.permalinkUrl != null) {
      result
        ..add('permalink_url')
        ..add(serializers.serialize(object.permalinkUrl,
            specifiedType: const FullType(String)));
    }
    if (object.diffUrl != null) {
      result
        ..add('diff_url')
        ..add(serializers.serialize(object.diffUrl,
            specifiedType: const FullType(String)));
    }
    if (object.patchUrl != null) {
      result
        ..add('patch_url')
        ..add(serializers.serialize(object.patchUrl,
            specifiedType: const FullType(String)));
    }
    if (object.baseCommit != null) {
      result
        ..add('base_commit')
        ..add(serializers.serialize(object.baseCommit,
            specifiedType: const FullType(Commit)));
    }
    if (object.mergeBaseCommit != null) {
      result
        ..add('merge_base_commit')
        ..add(serializers.serialize(object.mergeBaseCommit,
            specifiedType: const FullType(Commit)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(CommitComparisonStatusEnum)));
    }
    if (object.aheadBy != null) {
      result
        ..add('ahead_by')
        ..add(serializers.serialize(object.aheadBy,
            specifiedType: const FullType(int)));
    }
    if (object.behindBy != null) {
      result
        ..add('behind_by')
        ..add(serializers.serialize(object.behindBy,
            specifiedType: const FullType(int)));
    }
    if (object.totalCommits != null) {
      result
        ..add('total_commits')
        ..add(serializers.serialize(object.totalCommits,
            specifiedType: const FullType(int)));
    }
    if (object.commits != null) {
      result
        ..add('commits')
        ..add(serializers.serialize(object.commits,
            specifiedType:
                const FullType(BuiltList, const [const FullType(Commit)])));
    }
    if (object.files != null) {
      result
        ..add('files')
        ..add(serializers.serialize(object.files,
            specifiedType:
                const FullType(BuiltList, const [const FullType(DiffEntry)])));
    }
    return result;
  }

  @override
  CommitComparison deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommitComparisonBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'permalink_url':
          result.permalinkUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'diff_url':
          result.diffUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'patch_url':
          result.patchUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'base_commit':
          result.baseCommit.replace(serializers.deserialize(value,
              specifiedType: const FullType(Commit)) as Commit);
          break;
        case 'merge_base_commit':
          result.mergeBaseCommit.replace(serializers.deserialize(value,
              specifiedType: const FullType(Commit)) as Commit);
          break;
        case 'status':
          result.status = serializers.deserialize(value,
                  specifiedType: const FullType(CommitComparisonStatusEnum))
              as CommitComparisonStatusEnum;
          break;
        case 'ahead_by':
          result.aheadBy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'behind_by':
          result.behindBy = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'total_commits':
          result.totalCommits = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'commits':
          result.commits.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(Commit)]))
              as BuiltList<Object>);
          break;
        case 'files':
          result.files.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(DiffEntry)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$CommitComparisonStatusEnumSerializer
    implements PrimitiveSerializer<CommitComparisonStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'diverged': 'diverged',
    'ahead': 'ahead',
    'behind': 'behind',
    'identical': 'identical',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'diverged': 'diverged',
    'ahead': 'ahead',
    'behind': 'behind',
    'identical': 'identical',
  };

  @override
  final Iterable<Type> types = const <Type>[CommitComparisonStatusEnum];
  @override
  final String wireName = 'CommitComparisonStatusEnum';

  @override
  Object serialize(Serializers serializers, CommitComparisonStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  CommitComparisonStatusEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      CommitComparisonStatusEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$CommitComparison extends CommitComparison {
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String permalinkUrl;
  @override
  final String diffUrl;
  @override
  final String patchUrl;
  @override
  final Commit baseCommit;
  @override
  final Commit mergeBaseCommit;
  @override
  final CommitComparisonStatusEnum status;
  @override
  final int aheadBy;
  @override
  final int behindBy;
  @override
  final int totalCommits;
  @override
  final BuiltList<Commit> commits;
  @override
  final BuiltList<DiffEntry> files;

  factory _$CommitComparison(
          [void Function(CommitComparisonBuilder) updates]) =>
      (new CommitComparisonBuilder()..update(updates)).build();

  _$CommitComparison._(
      {this.url,
      this.htmlUrl,
      this.permalinkUrl,
      this.diffUrl,
      this.patchUrl,
      this.baseCommit,
      this.mergeBaseCommit,
      this.status,
      this.aheadBy,
      this.behindBy,
      this.totalCommits,
      this.commits,
      this.files})
      : super._();

  @override
  CommitComparison rebuild(void Function(CommitComparisonBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommitComparisonBuilder toBuilder() =>
      new CommitComparisonBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommitComparison &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        permalinkUrl == other.permalinkUrl &&
        diffUrl == other.diffUrl &&
        patchUrl == other.patchUrl &&
        baseCommit == other.baseCommit &&
        mergeBaseCommit == other.mergeBaseCommit &&
        status == other.status &&
        aheadBy == other.aheadBy &&
        behindBy == other.behindBy &&
        totalCommits == other.totalCommits &&
        commits == other.commits &&
        files == other.files;
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
                                                $jc($jc(0, url.hashCode),
                                                    htmlUrl.hashCode),
                                                permalinkUrl.hashCode),
                                            diffUrl.hashCode),
                                        patchUrl.hashCode),
                                    baseCommit.hashCode),
                                mergeBaseCommit.hashCode),
                            status.hashCode),
                        aheadBy.hashCode),
                    behindBy.hashCode),
                totalCommits.hashCode),
            commits.hashCode),
        files.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommitComparison')
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('permalinkUrl', permalinkUrl)
          ..add('diffUrl', diffUrl)
          ..add('patchUrl', patchUrl)
          ..add('baseCommit', baseCommit)
          ..add('mergeBaseCommit', mergeBaseCommit)
          ..add('status', status)
          ..add('aheadBy', aheadBy)
          ..add('behindBy', behindBy)
          ..add('totalCommits', totalCommits)
          ..add('commits', commits)
          ..add('files', files))
        .toString();
  }
}

class CommitComparisonBuilder
    implements Builder<CommitComparison, CommitComparisonBuilder> {
  _$CommitComparison _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _permalinkUrl;
  String get permalinkUrl => _$this._permalinkUrl;
  set permalinkUrl(String permalinkUrl) => _$this._permalinkUrl = permalinkUrl;

  String _diffUrl;
  String get diffUrl => _$this._diffUrl;
  set diffUrl(String diffUrl) => _$this._diffUrl = diffUrl;

  String _patchUrl;
  String get patchUrl => _$this._patchUrl;
  set patchUrl(String patchUrl) => _$this._patchUrl = patchUrl;

  CommitBuilder _baseCommit;
  CommitBuilder get baseCommit => _$this._baseCommit ??= new CommitBuilder();
  set baseCommit(CommitBuilder baseCommit) => _$this._baseCommit = baseCommit;

  CommitBuilder _mergeBaseCommit;
  CommitBuilder get mergeBaseCommit =>
      _$this._mergeBaseCommit ??= new CommitBuilder();
  set mergeBaseCommit(CommitBuilder mergeBaseCommit) =>
      _$this._mergeBaseCommit = mergeBaseCommit;

  CommitComparisonStatusEnum _status;
  CommitComparisonStatusEnum get status => _$this._status;
  set status(CommitComparisonStatusEnum status) => _$this._status = status;

  int _aheadBy;
  int get aheadBy => _$this._aheadBy;
  set aheadBy(int aheadBy) => _$this._aheadBy = aheadBy;

  int _behindBy;
  int get behindBy => _$this._behindBy;
  set behindBy(int behindBy) => _$this._behindBy = behindBy;

  int _totalCommits;
  int get totalCommits => _$this._totalCommits;
  set totalCommits(int totalCommits) => _$this._totalCommits = totalCommits;

  ListBuilder<Commit> _commits;
  ListBuilder<Commit> get commits =>
      _$this._commits ??= new ListBuilder<Commit>();
  set commits(ListBuilder<Commit> commits) => _$this._commits = commits;

  ListBuilder<DiffEntry> _files;
  ListBuilder<DiffEntry> get files =>
      _$this._files ??= new ListBuilder<DiffEntry>();
  set files(ListBuilder<DiffEntry> files) => _$this._files = files;

  CommitComparisonBuilder() {
    CommitComparison._initializeBuilder(this);
  }

  CommitComparisonBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _permalinkUrl = _$v.permalinkUrl;
      _diffUrl = _$v.diffUrl;
      _patchUrl = _$v.patchUrl;
      _baseCommit = _$v.baseCommit?.toBuilder();
      _mergeBaseCommit = _$v.mergeBaseCommit?.toBuilder();
      _status = _$v.status;
      _aheadBy = _$v.aheadBy;
      _behindBy = _$v.behindBy;
      _totalCommits = _$v.totalCommits;
      _commits = _$v.commits?.toBuilder();
      _files = _$v.files?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommitComparison other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommitComparison;
  }

  @override
  void update(void Function(CommitComparisonBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommitComparison build() {
    _$CommitComparison _$result;
    try {
      _$result = _$v ??
          new _$CommitComparison._(
              url: url,
              htmlUrl: htmlUrl,
              permalinkUrl: permalinkUrl,
              diffUrl: diffUrl,
              patchUrl: patchUrl,
              baseCommit: _baseCommit?.build(),
              mergeBaseCommit: _mergeBaseCommit?.build(),
              status: status,
              aheadBy: aheadBy,
              behindBy: behindBy,
              totalCommits: totalCommits,
              commits: _commits?.build(),
              files: _files?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'baseCommit';
        _baseCommit?.build();
        _$failedField = 'mergeBaseCommit';
        _mergeBaseCommit?.build();

        _$failedField = 'commits';
        _commits?.build();
        _$failedField = 'files';
        _files?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'CommitComparison', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
