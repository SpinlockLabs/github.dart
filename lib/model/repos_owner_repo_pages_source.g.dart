// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_pages_source.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReposOwnerRepoPagesSourcePathEnum
    _$reposOwnerRepoPagesSourcePathEnum_slash =
    const ReposOwnerRepoPagesSourcePathEnum._('slash');
const ReposOwnerRepoPagesSourcePathEnum
    _$reposOwnerRepoPagesSourcePathEnum_docs =
    const ReposOwnerRepoPagesSourcePathEnum._('docs');

ReposOwnerRepoPagesSourcePathEnum _$reposOwnerRepoPagesSourcePathEnumValueOf(
    String name) {
  switch (name) {
    case 'slash':
      return _$reposOwnerRepoPagesSourcePathEnum_slash;
    case 'docs':
      return _$reposOwnerRepoPagesSourcePathEnum_docs;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ReposOwnerRepoPagesSourcePathEnum>
    _$reposOwnerRepoPagesSourcePathEnumValues =
    new BuiltSet<ReposOwnerRepoPagesSourcePathEnum>(const <
        ReposOwnerRepoPagesSourcePathEnum>[
  _$reposOwnerRepoPagesSourcePathEnum_slash,
  _$reposOwnerRepoPagesSourcePathEnum_docs,
]);

Serializer<ReposOwnerRepoPagesSource> _$reposOwnerRepoPagesSourceSerializer =
    new _$ReposOwnerRepoPagesSourceSerializer();
Serializer<ReposOwnerRepoPagesSourcePathEnum>
    _$reposOwnerRepoPagesSourcePathEnumSerializer =
    new _$ReposOwnerRepoPagesSourcePathEnumSerializer();

class _$ReposOwnerRepoPagesSourceSerializer
    implements StructuredSerializer<ReposOwnerRepoPagesSource> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoPagesSource,
    _$ReposOwnerRepoPagesSource
  ];
  @override
  final String wireName = 'ReposOwnerRepoPagesSource';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ReposOwnerRepoPagesSource object,
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
            specifiedType: const FullType(ReposOwnerRepoPagesSourcePathEnum)));
    }
    return result;
  }

  @override
  ReposOwnerRepoPagesSource deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReposOwnerRepoPagesSourceBuilder();

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
                  specifiedType:
                      const FullType(ReposOwnerRepoPagesSourcePathEnum))
              as ReposOwnerRepoPagesSourcePathEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$ReposOwnerRepoPagesSourcePathEnumSerializer
    implements PrimitiveSerializer<ReposOwnerRepoPagesSourcePathEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'slash': '/',
    'docs': '/docs',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    '/': 'slash',
    '/docs': 'docs',
  };

  @override
  final Iterable<Type> types = const <Type>[ReposOwnerRepoPagesSourcePathEnum];
  @override
  final String wireName = 'ReposOwnerRepoPagesSourcePathEnum';

  @override
  Object serialize(
          Serializers serializers, ReposOwnerRepoPagesSourcePathEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReposOwnerRepoPagesSourcePathEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReposOwnerRepoPagesSourcePathEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$ReposOwnerRepoPagesSource extends ReposOwnerRepoPagesSource {
  @override
  final String branch;
  @override
  final ReposOwnerRepoPagesSourcePathEnum path;

  factory _$ReposOwnerRepoPagesSource(
          [void Function(ReposOwnerRepoPagesSourceBuilder) updates]) =>
      (new ReposOwnerRepoPagesSourceBuilder()..update(updates)).build();

  _$ReposOwnerRepoPagesSource._({this.branch, this.path}) : super._();

  @override
  ReposOwnerRepoPagesSource rebuild(
          void Function(ReposOwnerRepoPagesSourceBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoPagesSourceBuilder toBuilder() =>
      new ReposOwnerRepoPagesSourceBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReposOwnerRepoPagesSource &&
        branch == other.branch &&
        path == other.path;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, branch.hashCode), path.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReposOwnerRepoPagesSource')
          ..add('branch', branch)
          ..add('path', path))
        .toString();
  }
}

class ReposOwnerRepoPagesSourceBuilder
    implements
        Builder<ReposOwnerRepoPagesSource, ReposOwnerRepoPagesSourceBuilder> {
  _$ReposOwnerRepoPagesSource _$v;

  String _branch;
  String get branch => _$this._branch;
  set branch(String branch) => _$this._branch = branch;

  ReposOwnerRepoPagesSourcePathEnum _path;
  ReposOwnerRepoPagesSourcePathEnum get path => _$this._path;
  set path(ReposOwnerRepoPagesSourcePathEnum path) => _$this._path = path;

  ReposOwnerRepoPagesSourceBuilder() {
    ReposOwnerRepoPagesSource._initializeBuilder(this);
  }

  ReposOwnerRepoPagesSourceBuilder get _$this {
    if (_$v != null) {
      _branch = _$v.branch;
      _path = _$v.path;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReposOwnerRepoPagesSource other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReposOwnerRepoPagesSource;
  }

  @override
  void update(void Function(ReposOwnerRepoPagesSourceBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoPagesSource build() {
    final _$result =
        _$v ?? new _$ReposOwnerRepoPagesSource._(branch: branch, path: path);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
