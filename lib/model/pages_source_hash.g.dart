// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'pages_source_hash.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PagesSourceHash> _$pagesSourceHashSerializer =
    new _$PagesSourceHashSerializer();

class _$PagesSourceHashSerializer
    implements StructuredSerializer<PagesSourceHash> {
  @override
  final Iterable<Type> types = const [PagesSourceHash, _$PagesSourceHash];
  @override
  final String wireName = 'PagesSourceHash';

  @override
  Iterable<Object> serialize(Serializers serializers, PagesSourceHash object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.branch != null) {
      result
        ..add('branch')
        ..add(serializers.serialize(object.branch,
            specifiedType: const FullType(String)));
    }
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PagesSourceHash deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PagesSourceHashBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'branch':
          result.branch = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PagesSourceHash extends PagesSourceHash {
  @override
  final String branch;
  @override
  final String path;

  factory _$PagesSourceHash([void Function(PagesSourceHashBuilder) updates]) =>
      (new PagesSourceHashBuilder()..update(updates)).build();

  _$PagesSourceHash._({this.branch, this.path}) : super._();

  @override
  PagesSourceHash rebuild(void Function(PagesSourceHashBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PagesSourceHashBuilder toBuilder() =>
      new PagesSourceHashBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PagesSourceHash &&
        branch == other.branch &&
        path == other.path;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, branch.hashCode), path.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PagesSourceHash')
          ..add('branch', branch)
          ..add('path', path))
        .toString();
  }
}

class PagesSourceHashBuilder
    implements Builder<PagesSourceHash, PagesSourceHashBuilder> {
  _$PagesSourceHash _$v;

  String _branch;
  String get branch => _$this._branch;
  set branch(String branch) => _$this._branch = branch;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  PagesSourceHashBuilder() {
    PagesSourceHash._initializeBuilder(this);
  }

  PagesSourceHashBuilder get _$this {
    if (_$v != null) {
      _branch = _$v.branch;
      _path = _$v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PagesSourceHash other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PagesSourceHash;
  }

  @override
  void update(void Function(PagesSourceHashBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PagesSourceHash build() {
    final _$result = _$v ?? new _$PagesSourceHash._(branch: branch, path: path);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
