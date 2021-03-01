// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object38.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject38> _$inlineObject38Serializer =
    new _$InlineObject38Serializer();

class _$InlineObject38Serializer
    implements StructuredSerializer<InlineObject38> {
  @override
  final Iterable<Type> types = const [InlineObject38, _$InlineObject38];
  @override
  final String wireName = 'InlineObject38';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject38 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.repositories != null) {
      result
        ..add('repositories')
        ..add(serializers.serialize(object.repositories,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
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
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    return result;
  }

  @override
  InlineObject38 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject38Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'repositories':
          result.repositories.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
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
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject38 extends InlineObject38 {
  @override
  final BuiltList<String> repositories;
  @override
  final bool lockRepositories;
  @override
  final bool excludeAttachments;
  @override
  final BuiltList<String> exclude;

  factory _$InlineObject38([void Function(InlineObject38Builder) updates]) =>
      (new InlineObject38Builder()..update(updates)).build();

  _$InlineObject38._(
      {this.repositories,
      this.lockRepositories,
      this.excludeAttachments,
      this.exclude})
      : super._();

  @override
  InlineObject38 rebuild(void Function(InlineObject38Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject38Builder toBuilder() =>
      new InlineObject38Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject38 &&
        repositories == other.repositories &&
        lockRepositories == other.lockRepositories &&
        excludeAttachments == other.excludeAttachments &&
        exclude == other.exclude;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, repositories.hashCode), lockRepositories.hashCode),
            excludeAttachments.hashCode),
        exclude.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject38')
          ..add('repositories', repositories)
          ..add('lockRepositories', lockRepositories)
          ..add('excludeAttachments', excludeAttachments)
          ..add('exclude', exclude))
        .toString();
  }
}

class InlineObject38Builder
    implements Builder<InlineObject38, InlineObject38Builder> {
  _$InlineObject38 _$v;

  ListBuilder<String> _repositories;
  ListBuilder<String> get repositories =>
      _$this._repositories ??= new ListBuilder<String>();
  set repositories(ListBuilder<String> repositories) =>
      _$this._repositories = repositories;

  bool _lockRepositories;
  bool get lockRepositories => _$this._lockRepositories;
  set lockRepositories(bool lockRepositories) =>
      _$this._lockRepositories = lockRepositories;

  bool _excludeAttachments;
  bool get excludeAttachments => _$this._excludeAttachments;
  set excludeAttachments(bool excludeAttachments) =>
      _$this._excludeAttachments = excludeAttachments;

  ListBuilder<String> _exclude;
  ListBuilder<String> get exclude =>
      _$this._exclude ??= new ListBuilder<String>();
  set exclude(ListBuilder<String> exclude) => _$this._exclude = exclude;

  InlineObject38Builder() {
    InlineObject38._initializeBuilder(this);
  }

  InlineObject38Builder get _$this {
    if (_$v != null) {
      _repositories = _$v.repositories?.toBuilder();
      _lockRepositories = _$v.lockRepositories;
      _excludeAttachments = _$v.excludeAttachments;
      _exclude = _$v.exclude?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject38 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject38;
  }

  @override
  void update(void Function(InlineObject38Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject38 build() {
    _$InlineObject38 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject38._(
              repositories: _repositories?.build(),
              lockRepositories: lockRepositories,
              excludeAttachments: excludeAttachments,
              exclude: _exclude?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'repositories';
        _repositories?.build();

        _$failedField = 'exclude';
        _exclude?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject38', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
