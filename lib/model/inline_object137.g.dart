// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object137.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject137MergeMethodEnum _$inlineObject137MergeMethodEnum_merge =
    const InlineObject137MergeMethodEnum._('merge');
const InlineObject137MergeMethodEnum _$inlineObject137MergeMethodEnum_squash =
    const InlineObject137MergeMethodEnum._('squash');
const InlineObject137MergeMethodEnum _$inlineObject137MergeMethodEnum_rebase =
    const InlineObject137MergeMethodEnum._('rebase');

InlineObject137MergeMethodEnum _$inlineObject137MergeMethodEnumValueOf(
    String name) {
  switch (name) {
    case 'merge':
      return _$inlineObject137MergeMethodEnum_merge;
    case 'squash':
      return _$inlineObject137MergeMethodEnum_squash;
    case 'rebase':
      return _$inlineObject137MergeMethodEnum_rebase;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject137MergeMethodEnum>
    _$inlineObject137MergeMethodEnumValues = new BuiltSet<
        InlineObject137MergeMethodEnum>(const <InlineObject137MergeMethodEnum>[
  _$inlineObject137MergeMethodEnum_merge,
  _$inlineObject137MergeMethodEnum_squash,
  _$inlineObject137MergeMethodEnum_rebase,
]);

Serializer<InlineObject137> _$inlineObject137Serializer =
    new _$InlineObject137Serializer();
Serializer<InlineObject137MergeMethodEnum>
    _$inlineObject137MergeMethodEnumSerializer =
    new _$InlineObject137MergeMethodEnumSerializer();

class _$InlineObject137Serializer
    implements StructuredSerializer<InlineObject137> {
  @override
  final Iterable<Type> types = const [InlineObject137, _$InlineObject137];
  @override
  final String wireName = 'InlineObject137';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject137 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.mergeMethod != null) {
      result
        ..add('merge_method')
        ..add(serializers.serialize(object.mergeMethod,
            specifiedType: const FullType(InlineObject137MergeMethodEnum)));
    }
    return result;
  }

  @override
  InlineObject137 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject137Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'commit_title':
          result.commitTitle = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit_message':
          result.commitMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'merge_method':
          result.mergeMethod = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject137MergeMethodEnum))
              as InlineObject137MergeMethodEnum;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject137MergeMethodEnumSerializer
    implements PrimitiveSerializer<InlineObject137MergeMethodEnum> {
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
  final Iterable<Type> types = const <Type>[InlineObject137MergeMethodEnum];
  @override
  final String wireName = 'InlineObject137MergeMethodEnum';

  @override
  Object serialize(
          Serializers serializers, InlineObject137MergeMethodEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject137MergeMethodEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject137MergeMethodEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject137 extends InlineObject137 {
  @override
  final String commitTitle;
  @override
  final String commitMessage;
  @override
  final String sha;
  @override
  final InlineObject137MergeMethodEnum mergeMethod;

  factory _$InlineObject137([void Function(InlineObject137Builder) updates]) =>
      (new InlineObject137Builder()..update(updates)).build();

  _$InlineObject137._(
      {this.commitTitle, this.commitMessage, this.sha, this.mergeMethod})
      : super._();

  @override
  InlineObject137 rebuild(void Function(InlineObject137Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject137Builder toBuilder() =>
      new InlineObject137Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject137 &&
        commitTitle == other.commitTitle &&
        commitMessage == other.commitMessage &&
        sha == other.sha &&
        mergeMethod == other.mergeMethod;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, commitTitle.hashCode), commitMessage.hashCode),
            sha.hashCode),
        mergeMethod.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject137')
          ..add('commitTitle', commitTitle)
          ..add('commitMessage', commitMessage)
          ..add('sha', sha)
          ..add('mergeMethod', mergeMethod))
        .toString();
  }
}

class InlineObject137Builder
    implements Builder<InlineObject137, InlineObject137Builder> {
  _$InlineObject137 _$v;

  String _commitTitle;
  String get commitTitle => _$this._commitTitle;
  set commitTitle(String commitTitle) => _$this._commitTitle = commitTitle;

  String _commitMessage;
  String get commitMessage => _$this._commitMessage;
  set commitMessage(String commitMessage) =>
      _$this._commitMessage = commitMessage;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  InlineObject137MergeMethodEnum _mergeMethod;
  InlineObject137MergeMethodEnum get mergeMethod => _$this._mergeMethod;
  set mergeMethod(InlineObject137MergeMethodEnum mergeMethod) =>
      _$this._mergeMethod = mergeMethod;

  InlineObject137Builder() {
    InlineObject137._initializeBuilder(this);
  }

  InlineObject137Builder get _$this {
    if (_$v != null) {
      _commitTitle = _$v.commitTitle;
      _commitMessage = _$v.commitMessage;
      _sha = _$v.sha;
      _mergeMethod = _$v.mergeMethod;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject137 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject137;
  }

  @override
  void update(void Function(InlineObject137Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject137 build() {
    final _$result = _$v ??
        new _$InlineObject137._(
            commitTitle: commitTitle,
            commitMessage: commitMessage,
            sha: sha,
            mergeMethod: mergeMethod);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
