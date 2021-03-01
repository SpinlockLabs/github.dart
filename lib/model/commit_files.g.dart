// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'commit_files.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<CommitFiles> _$commitFilesSerializer = new _$CommitFilesSerializer();

class _$CommitFilesSerializer implements StructuredSerializer<CommitFiles> {
  @override
  final Iterable<Type> types = const [CommitFiles, _$CommitFiles];
  @override
  final String wireName = 'CommitFiles';

  @override
  Iterable<Object> serialize(Serializers serializers, CommitFiles object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.filename != null) {
      result
        ..add('filename')
        ..add(serializers.serialize(object.filename,
            specifiedType: const FullType(String)));
    }
    if (object.additions != null) {
      result
        ..add('additions')
        ..add(serializers.serialize(object.additions,
            specifiedType: const FullType(int)));
    }
    if (object.deletions != null) {
      result
        ..add('deletions')
        ..add(serializers.serialize(object.deletions,
            specifiedType: const FullType(int)));
    }
    if (object.changes != null) {
      result
        ..add('changes')
        ..add(serializers.serialize(object.changes,
            specifiedType: const FullType(int)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.rawUrl != null) {
      result
        ..add('raw_url')
        ..add(serializers.serialize(object.rawUrl,
            specifiedType: const FullType(String)));
    }
    if (object.blobUrl != null) {
      result
        ..add('blob_url')
        ..add(serializers.serialize(object.blobUrl,
            specifiedType: const FullType(String)));
    }
    if (object.patch_ != null) {
      result
        ..add('patch')
        ..add(serializers.serialize(object.patch_,
            specifiedType: const FullType(String)));
    }
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.contentsUrl != null) {
      result
        ..add('contents_url')
        ..add(serializers.serialize(object.contentsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.previousFilename != null) {
      result
        ..add('previous_filename')
        ..add(serializers.serialize(object.previousFilename,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  CommitFiles deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new CommitFilesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'filename':
          result.filename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'additions':
          result.additions = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'deletions':
          result.deletions = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'changes':
          result.changes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'raw_url':
          result.rawUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'blob_url':
          result.blobUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'patch':
          result.patch_ = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contents_url':
          result.contentsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'previous_filename':
          result.previousFilename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$CommitFiles extends CommitFiles {
  @override
  final String filename;
  @override
  final int additions;
  @override
  final int deletions;
  @override
  final int changes;
  @override
  final String status;
  @override
  final String rawUrl;
  @override
  final String blobUrl;
  @override
  final String patch_;
  @override
  final String sha;
  @override
  final String contentsUrl;
  @override
  final String previousFilename;

  factory _$CommitFiles([void Function(CommitFilesBuilder) updates]) =>
      (new CommitFilesBuilder()..update(updates)).build();

  _$CommitFiles._(
      {this.filename,
      this.additions,
      this.deletions,
      this.changes,
      this.status,
      this.rawUrl,
      this.blobUrl,
      this.patch_,
      this.sha,
      this.contentsUrl,
      this.previousFilename})
      : super._();

  @override
  CommitFiles rebuild(void Function(CommitFilesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  CommitFilesBuilder toBuilder() => new CommitFilesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is CommitFiles &&
        filename == other.filename &&
        additions == other.additions &&
        deletions == other.deletions &&
        changes == other.changes &&
        status == other.status &&
        rawUrl == other.rawUrl &&
        blobUrl == other.blobUrl &&
        patch_ == other.patch_ &&
        sha == other.sha &&
        contentsUrl == other.contentsUrl &&
        previousFilename == other.previousFilename;
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
                                        $jc($jc(0, filename.hashCode),
                                            additions.hashCode),
                                        deletions.hashCode),
                                    changes.hashCode),
                                status.hashCode),
                            rawUrl.hashCode),
                        blobUrl.hashCode),
                    patch_.hashCode),
                sha.hashCode),
            contentsUrl.hashCode),
        previousFilename.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('CommitFiles')
          ..add('filename', filename)
          ..add('additions', additions)
          ..add('deletions', deletions)
          ..add('changes', changes)
          ..add('status', status)
          ..add('rawUrl', rawUrl)
          ..add('blobUrl', blobUrl)
          ..add('patch_', patch_)
          ..add('sha', sha)
          ..add('contentsUrl', contentsUrl)
          ..add('previousFilename', previousFilename))
        .toString();
  }
}

class CommitFilesBuilder implements Builder<CommitFiles, CommitFilesBuilder> {
  _$CommitFiles _$v;

  String _filename;
  String get filename => _$this._filename;
  set filename(String filename) => _$this._filename = filename;

  int _additions;
  int get additions => _$this._additions;
  set additions(int additions) => _$this._additions = additions;

  int _deletions;
  int get deletions => _$this._deletions;
  set deletions(int deletions) => _$this._deletions = deletions;

  int _changes;
  int get changes => _$this._changes;
  set changes(int changes) => _$this._changes = changes;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  String _rawUrl;
  String get rawUrl => _$this._rawUrl;
  set rawUrl(String rawUrl) => _$this._rawUrl = rawUrl;

  String _blobUrl;
  String get blobUrl => _$this._blobUrl;
  set blobUrl(String blobUrl) => _$this._blobUrl = blobUrl;

  String _patch_;
  String get patch_ => _$this._patch_;
  set patch_(String patch_) => _$this._patch_ = patch_;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _contentsUrl;
  String get contentsUrl => _$this._contentsUrl;
  set contentsUrl(String contentsUrl) => _$this._contentsUrl = contentsUrl;

  String _previousFilename;
  String get previousFilename => _$this._previousFilename;
  set previousFilename(String previousFilename) =>
      _$this._previousFilename = previousFilename;

  CommitFilesBuilder() {
    CommitFiles._initializeBuilder(this);
  }

  CommitFilesBuilder get _$this {
    if (_$v != null) {
      _filename = _$v.filename;
      _additions = _$v.additions;
      _deletions = _$v.deletions;
      _changes = _$v.changes;
      _status = _$v.status;
      _rawUrl = _$v.rawUrl;
      _blobUrl = _$v.blobUrl;
      _patch_ = _$v.patch_;
      _sha = _$v.sha;
      _contentsUrl = _$v.contentsUrl;
      _previousFilename = _$v.previousFilename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(CommitFiles other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$CommitFiles;
  }

  @override
  void update(void Function(CommitFilesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$CommitFiles build() {
    final _$result = _$v ??
        new _$CommitFiles._(
            filename: filename,
            additions: additions,
            deletions: deletions,
            changes: changes,
            status: status,
            rawUrl: rawUrl,
            blobUrl: blobUrl,
            patch_: patch_,
            sha: sha,
            contentsUrl: contentsUrl,
            previousFilename: previousFilename);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
