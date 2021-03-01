// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'auto_merge.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const AutoMergeMergeMethodEnum _$autoMergeMergeMethodEnum_merge =
    const AutoMergeMergeMethodEnum._('merge');
const AutoMergeMergeMethodEnum _$autoMergeMergeMethodEnum_squash =
    const AutoMergeMergeMethodEnum._('squash');
const AutoMergeMergeMethodEnum _$autoMergeMergeMethodEnum_rebase =
    const AutoMergeMergeMethodEnum._('rebase');

AutoMergeMergeMethodEnum _$autoMergeMergeMethodEnumValueOf(String name) {
  switch (name) {
    case 'merge':
      return _$autoMergeMergeMethodEnum_merge;
    case 'squash':
      return _$autoMergeMergeMethodEnum_squash;
    case 'rebase':
      return _$autoMergeMergeMethodEnum_rebase;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<AutoMergeMergeMethodEnum> _$autoMergeMergeMethodEnumValues =
    new BuiltSet<AutoMergeMergeMethodEnum>(const <AutoMergeMergeMethodEnum>[
  _$autoMergeMergeMethodEnum_merge,
  _$autoMergeMergeMethodEnum_squash,
  _$autoMergeMergeMethodEnum_rebase,
]);

Serializer<AutoMerge> _$autoMergeSerializer = new _$AutoMergeSerializer();
Serializer<AutoMergeMergeMethodEnum> _$autoMergeMergeMethodEnumSerializer =
    new _$AutoMergeMergeMethodEnumSerializer();

class _$AutoMergeSerializer implements StructuredSerializer<AutoMerge> {
  @override
  final Iterable<Type> types = const [AutoMerge, _$AutoMerge];
  @override
  final String wireName = 'AutoMerge';

  @override
  Iterable<Object> serialize(Serializers serializers, AutoMerge object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.enabledBy != null) {
      result
        ..add('enabled_by')
        ..add(serializers.serialize(object.enabledBy,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.mergeMethod != null) {
      result
        ..add('merge_method')
        ..add(serializers.serialize(object.mergeMethod,
            specifiedType: const FullType(AutoMergeMergeMethodEnum)));
    }
    if (object.commitTitle != null) {
      result
        ..add('commit_title')
        ..add(serializers.serialize(object.commitTitle,
            specifiedType: const FullType(String)));
    }
    if (object.commitMessage != null) {
      result
        ..add('commit_message')
        ..add(serializers.serialize(object.commitMessage,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  AutoMerge deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new AutoMergeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'enabled_by':
          result.enabledBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'merge_method':
          result.mergeMethod = serializers.deserialize(value,
                  specifiedType: const FullType(AutoMergeMergeMethodEnum))
              as AutoMergeMergeMethodEnum;
          break;
        case 'commit_title':
          result.commitTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit_message':
          result.commitMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$AutoMergeMergeMethodEnumSerializer
    implements PrimitiveSerializer<AutoMergeMergeMethodEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'merge': 'merge',
    'squash': 'squash',
    'rebase': 'rebase',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'merge': 'merge',
    'squash': 'squash',
    'rebase': 'rebase',
  };

  @override
  final Iterable<Type> types = const <Type>[AutoMergeMergeMethodEnum];
  @override
  final String wireName = 'AutoMergeMergeMethodEnum';

  @override
  Object serialize(Serializers serializers, AutoMergeMergeMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  AutoMergeMergeMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      AutoMergeMergeMethodEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$AutoMerge extends AutoMerge {
  @override
  final SimpleUser enabledBy;
  @override
  final AutoMergeMergeMethodEnum mergeMethod;
  @override
  final String commitTitle;
  @override
  final String commitMessage;

  factory _$AutoMerge([void Function(AutoMergeBuilder) updates]) =>
      (new AutoMergeBuilder()..update(updates)).build();

  _$AutoMerge._(
      {this.enabledBy, this.mergeMethod, this.commitTitle, this.commitMessage})
      : super._();

  @override
  AutoMerge rebuild(void Function(AutoMergeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  AutoMergeBuilder toBuilder() => new AutoMergeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is AutoMerge &&
        enabledBy == other.enabledBy &&
        mergeMethod == other.mergeMethod &&
        commitTitle == other.commitTitle &&
        commitMessage == other.commitMessage;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, enabledBy.hashCode), mergeMethod.hashCode),
            commitTitle.hashCode),
        commitMessage.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('AutoMerge')
          ..add('enabledBy', enabledBy)
          ..add('mergeMethod', mergeMethod)
          ..add('commitTitle', commitTitle)
          ..add('commitMessage', commitMessage))
        .toString();
  }
}

class AutoMergeBuilder implements Builder<AutoMerge, AutoMergeBuilder> {
  _$AutoMerge _$v;

  SimpleUserBuilder _enabledBy;
  SimpleUserBuilder get enabledBy =>
      _$this._enabledBy ??= new SimpleUserBuilder();
  set enabledBy(SimpleUserBuilder enabledBy) => _$this._enabledBy = enabledBy;

  AutoMergeMergeMethodEnum _mergeMethod;
  AutoMergeMergeMethodEnum get mergeMethod => _$this._mergeMethod;
  set mergeMethod(AutoMergeMergeMethodEnum mergeMethod) =>
      _$this._mergeMethod = mergeMethod;

  String _commitTitle;
  String get commitTitle => _$this._commitTitle;
  set commitTitle(String commitTitle) => _$this._commitTitle = commitTitle;

  String _commitMessage;
  String get commitMessage => _$this._commitMessage;
  set commitMessage(String commitMessage) =>
      _$this._commitMessage = commitMessage;

  AutoMergeBuilder() {
    AutoMerge._initializeBuilder(this);
  }

  AutoMergeBuilder get _$this {
    if (_$v != null) {
      _enabledBy = _$v.enabledBy?.toBuilder();
      _mergeMethod = _$v.mergeMethod;
      _commitTitle = _$v.commitTitle;
      _commitMessage = _$v.commitMessage;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(AutoMerge other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$AutoMerge;
  }

  @override
  void update(void Function(AutoMergeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$AutoMerge build() {
    _$AutoMerge _$result;
    try {
      _$result = _$v ??
          new _$AutoMerge._(
              enabledBy: _enabledBy?.build(),
              mergeMethod: mergeMethod,
              commitTitle: commitTitle,
              commitMessage: commitMessage);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'enabledBy';
        _enabledBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'AutoMerge', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
