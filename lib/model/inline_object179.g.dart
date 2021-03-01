// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object179.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject179ExcludeEnum _$inlineObject179ExcludeEnum_repositories =
    const InlineObject179ExcludeEnum._('repositories');

InlineObject179ExcludeEnum _$inlineObject179ExcludeEnumValueOf(String name) {
  switch (name) {
    case 'repositories':
      return _$inlineObject179ExcludeEnum_repositories;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject179ExcludeEnum> _$inlineObject179ExcludeEnumValues =
    new BuiltSet<InlineObject179ExcludeEnum>(const <InlineObject179ExcludeEnum>[
  _$inlineObject179ExcludeEnum_repositories,
]);

Serializer<InlineObject179> _$inlineObject179Serializer =
    new _$InlineObject179Serializer();
Serializer<InlineObject179ExcludeEnum> _$inlineObject179ExcludeEnumSerializer =
    new _$InlineObject179ExcludeEnumSerializer();

class _$InlineObject179Serializer
    implements StructuredSerializer<InlineObject179> {
  @override
  final Iterable<Type> types = const [InlineObject179, _$InlineObject179];
  @override
  final String wireName = 'InlineObject179';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject179 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.lockRepositories != null) {
      result
        ..add('lock_repositories')
        ..add(serializers.serialize(object.lockRepositories,
            specifiedType: const FullType(bool)));
    }
    if (object.excludeAttachments != null) {
      result
        ..add('exclude_attachments')
        ..add(serializers.serialize(object.excludeAttachments,
            specifiedType: const FullType(bool)));
    }
    if (object.exclude != null) {
      result
        ..add('exclude')
        ..add(serializers.serialize(object.exclude,
            specifiedType: const FullType(BuiltList,
                const [const FullType(InlineObject179ExcludeEnum)])));
    }
    if (object.repositories != null) {
      result
        ..add('repositories')
        ..add(serializers.serialize(object.repositories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  InlineObject179 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject179Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'lock_repositories':
          result.lockRepositories = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'exclude_attachments':
          result.excludeAttachments = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'exclude':
          result.exclude.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(InlineObject179ExcludeEnum)
              ])) as BuiltList<Object>);
          break;
        case 'repositories':
          result.repositories.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject179ExcludeEnumSerializer
    implements PrimitiveSerializer<InlineObject179ExcludeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'repositories': 'repositories',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'repositories': 'repositories',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject179ExcludeEnum];
  @override
  final String wireName = 'InlineObject179ExcludeEnum';

  @override
  Object serialize(Serializers serializers, InlineObject179ExcludeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject179ExcludeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject179ExcludeEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject179 extends InlineObject179 {
  @override
  final bool lockRepositories;
  @override
  final bool excludeAttachments;
  @override
  final BuiltList<InlineObject179ExcludeEnum> exclude;
  @override
  final BuiltList<String> repositories;

  factory _$InlineObject179([void Function(InlineObject179Builder) updates]) =>
      (new InlineObject179Builder()..update(updates)).build();

  _$InlineObject179._(
      {this.lockRepositories,
      this.excludeAttachments,
      this.exclude,
      this.repositories})
      : super._();

  @override
  InlineObject179 rebuild(void Function(InlineObject179Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject179Builder toBuilder() =>
      new InlineObject179Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject179 &&
        lockRepositories == other.lockRepositories &&
        excludeAttachments == other.excludeAttachments &&
        exclude == other.exclude &&
        repositories == other.repositories;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, lockRepositories.hashCode), excludeAttachments.hashCode),
            exclude.hashCode),
        repositories.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject179')
          ..add('lockRepositories', lockRepositories)
          ..add('excludeAttachments', excludeAttachments)
          ..add('exclude', exclude)
          ..add('repositories', repositories))
        .toString();
  }
}

class InlineObject179Builder
    implements Builder<InlineObject179, InlineObject179Builder> {
  _$InlineObject179 _$v;

  bool _lockRepositories;
  bool get lockRepositories => _$this._lockRepositories;
  set lockRepositories(bool lockRepositories) =>
      _$this._lockRepositories = lockRepositories;

  bool _excludeAttachments;
  bool get excludeAttachments => _$this._excludeAttachments;
  set excludeAttachments(bool excludeAttachments) =>
      _$this._excludeAttachments = excludeAttachments;

  ListBuilder<InlineObject179ExcludeEnum> _exclude;
  ListBuilder<InlineObject179ExcludeEnum> get exclude =>
      _$this._exclude ??= new ListBuilder<InlineObject179ExcludeEnum>();
  set exclude(ListBuilder<InlineObject179ExcludeEnum> exclude) =>
      _$this._exclude = exclude;

  ListBuilder<String> _repositories;
  ListBuilder<String> get repositories =>
      _$this._repositories ??= new ListBuilder<String>();
  set repositories(ListBuilder<String> repositories) =>
      _$this._repositories = repositories;

  InlineObject179Builder() {
    InlineObject179._initializeBuilder(this);
  }

  InlineObject179Builder get _$this {
    if (_$v != null) {
      _lockRepositories = _$v.lockRepositories;
      _excludeAttachments = _$v.excludeAttachments;
      _exclude = _$v.exclude?.toBuilder();
      _repositories = _$v.repositories?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject179 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject179;
  }

  @override
  void update(void Function(InlineObject179Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject179 build() {
    _$InlineObject179 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject179._(
              lockRepositories: lockRepositories,
              excludeAttachments: excludeAttachments,
              exclude: _exclude?.build(),
              repositories: _repositories?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'exclude';
        _exclude?.build();
        _$failedField = 'repositories';
        _repositories?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject179', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
