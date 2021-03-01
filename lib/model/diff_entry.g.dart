// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'diff_entry.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<DiffEntry> _$diffEntrySerializer = new _$DiffEntrySerializer();

class _$DiffEntrySerializer implements StructuredSerializer<DiffEntry> {
  @override
  final Iterable<Type> types = const [DiffEntry, _$DiffEntry];
  @override
  final String wireName = 'DiffEntry';

  @override
  Iterable<Object> serialize(Serializers serializers, DiffEntry object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.filename != null) {
      result
        ..add('filename')
        ..add(serializers.serialize(object.filename,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
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
    if (object.blobUrl != null) {
      result
        ..add('blob_url')
        ..add(serializers.serialize(object.blobUrl,
            specifiedType: const FullType(String)));
    }
    if (object.rawUrl != null) {
      result
        ..add('raw_url')
        ..add(serializers.serialize(object.rawUrl,
            specifiedType: const FullType(String)));
    }
    if (object.contentsUrl != null) {
      result
        ..add('contents_url')
        ..add(serializers.serialize(object.contentsUrl,
            specifiedType: const FullType(String)));
    }
    if (object.patch_ != null) {
      result
        ..add('patch')
        ..add(serializers.serialize(object.patch_,
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
  DiffEntry deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new DiffEntryBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'filename':
          result.filename = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
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
        case 'blob_url':
          result.blobUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'raw_url':
          result.rawUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'contents_url':
          result.contentsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'patch':
          result.patch_ = serializers.deserialize(value,
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

class _$DiffEntry extends DiffEntry {
  @override
  final String sha;
  @override
  final String filename;
  @override
  final String status;
  @override
  final int additions;
  @override
  final int deletions;
  @override
  final int changes;
  @override
  final String blobUrl;
  @override
  final String rawUrl;
  @override
  final String contentsUrl;
  @override
  final String patch_;
  @override
  final String previousFilename;

  factory _$DiffEntry([void Function(DiffEntryBuilder) updates]) =>
      (new DiffEntryBuilder()..update(updates)).build();

  _$DiffEntry._(
      {this.sha,
      this.filename,
      this.status,
      this.additions,
      this.deletions,
      this.changes,
      this.blobUrl,
      this.rawUrl,
      this.contentsUrl,
      this.patch_,
      this.previousFilename})
      : super._();

  @override
  DiffEntry rebuild(void Function(DiffEntryBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  DiffEntryBuilder toBuilder() => new DiffEntryBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is DiffEntry &&
        sha == other.sha &&
        filename == other.filename &&
        status == other.status &&
        additions == other.additions &&
        deletions == other.deletions &&
        changes == other.changes &&
        blobUrl == other.blobUrl &&
        rawUrl == other.rawUrl &&
        contentsUrl == other.contentsUrl &&
        patch_ == other.patch_ &&
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
                                        $jc($jc(0, sha.hashCode),
                                            filename.hashCode),
                                        status.hashCode),
                                    additions.hashCode),
                                deletions.hashCode),
                            changes.hashCode),
                        blobUrl.hashCode),
                    rawUrl.hashCode),
                contentsUrl.hashCode),
            patch_.hashCode),
        previousFilename.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('DiffEntry')
          ..add('sha', sha)
          ..add('filename', filename)
          ..add('status', status)
          ..add('additions', additions)
          ..add('deletions', deletions)
          ..add('changes', changes)
          ..add('blobUrl', blobUrl)
          ..add('rawUrl', rawUrl)
          ..add('contentsUrl', contentsUrl)
          ..add('patch_', patch_)
          ..add('previousFilename', previousFilename))
        .toString();
  }
}

class DiffEntryBuilder implements Builder<DiffEntry, DiffEntryBuilder> {
  _$DiffEntry _$v;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _filename;
  String get filename => _$this._filename;
  set filename(String filename) => _$this._filename = filename;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  int _additions;
  int get additions => _$this._additions;
  set additions(int additions) => _$this._additions = additions;

  int _deletions;
  int get deletions => _$this._deletions;
  set deletions(int deletions) => _$this._deletions = deletions;

  int _changes;
  int get changes => _$this._changes;
  set changes(int changes) => _$this._changes = changes;

  String _blobUrl;
  String get blobUrl => _$this._blobUrl;
  set blobUrl(String blobUrl) => _$this._blobUrl = blobUrl;

  String _rawUrl;
  String get rawUrl => _$this._rawUrl;
  set rawUrl(String rawUrl) => _$this._rawUrl = rawUrl;

  String _contentsUrl;
  String get contentsUrl => _$this._contentsUrl;
  set contentsUrl(String contentsUrl) => _$this._contentsUrl = contentsUrl;

  String _patch_;
  String get patch_ => _$this._patch_;
  set patch_(String patch_) => _$this._patch_ = patch_;

  String _previousFilename;
  String get previousFilename => _$this._previousFilename;
  set previousFilename(String previousFilename) =>
      _$this._previousFilename = previousFilename;

  DiffEntryBuilder() {
    DiffEntry._initializeBuilder(this);
  }

  DiffEntryBuilder get _$this {
    if (_$v != null) {
      _sha = _$v.sha;
      _filename = _$v.filename;
      _status = _$v.status;
      _additions = _$v.additions;
      _deletions = _$v.deletions;
      _changes = _$v.changes;
      _blobUrl = _$v.blobUrl;
      _rawUrl = _$v.rawUrl;
      _contentsUrl = _$v.contentsUrl;
      _patch_ = _$v.patch_;
      _previousFilename = _$v.previousFilename;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(DiffEntry other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$DiffEntry;
  }

  @override
  void update(void Function(DiffEntryBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$DiffEntry build() {
    final _$result = _$v ??
        new _$DiffEntry._(
            sha: sha,
            filename: filename,
            status: status,
            additions: additions,
            deletions: deletions,
            changes: changes,
            blobUrl: blobUrl,
            rawUrl: rawUrl,
            contentsUrl: contentsUrl,
            patch_: patch_,
            previousFilename: previousFilename);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
