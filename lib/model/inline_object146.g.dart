// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object146.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject146> _$inlineObject146Serializer =
    new _$InlineObject146Serializer();

class _$InlineObject146Serializer
    implements StructuredSerializer<InlineObject146> {
  @override
  final Iterable<Type> types = const [InlineObject146, _$InlineObject146];
  @override
  final String wireName = 'InlineObject146';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject146 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.tagName != null) {
      result
        ..add('tag_name')
        ..add(serializers.serialize(object.tagName,
            specifiedType: const FullType(String)));
    }
    if (object.targetCommitish != null) {
      result
        ..add('target_commitish')
        ..add(serializers.serialize(object.targetCommitish,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.draft != null) {
      result
        ..add('draft')
        ..add(serializers.serialize(object.draft,
            specifiedType: const FullType(bool)));
    }
    if (object.prerelease != null) {
      result
        ..add('prerelease')
        ..add(serializers.serialize(object.prerelease,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  InlineObject146 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject146Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'tag_name':
          result.tagName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'target_commitish':
          result.targetCommitish = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'draft':
          result.draft = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'prerelease':
          result.prerelease = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject146 extends InlineObject146 {
  @override
  final String tagName;
  @override
  final String targetCommitish;
  @override
  final String name;
  @override
  final String body;
  @override
  final bool draft;
  @override
  final bool prerelease;

  factory _$InlineObject146([void Function(InlineObject146Builder) updates]) =>
      (new InlineObject146Builder()..update(updates)).build();

  _$InlineObject146._(
      {this.tagName,
      this.targetCommitish,
      this.name,
      this.body,
      this.draft,
      this.prerelease})
      : super._();

  @override
  InlineObject146 rebuild(void Function(InlineObject146Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject146Builder toBuilder() =>
      new InlineObject146Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject146 &&
        tagName == other.tagName &&
        targetCommitish == other.targetCommitish &&
        name == other.name &&
        body == other.body &&
        draft == other.draft &&
        prerelease == other.prerelease;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, tagName.hashCode), targetCommitish.hashCode),
                    name.hashCode),
                body.hashCode),
            draft.hashCode),
        prerelease.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject146')
          ..add('tagName', tagName)
          ..add('targetCommitish', targetCommitish)
          ..add('name', name)
          ..add('body', body)
          ..add('draft', draft)
          ..add('prerelease', prerelease))
        .toString();
  }
}

class InlineObject146Builder
    implements Builder<InlineObject146, InlineObject146Builder> {
  _$InlineObject146 _$v;

  String _tagName;
  String get tagName => _$this._tagName;
  set tagName(String tagName) => _$this._tagName = tagName;

  String _targetCommitish;
  String get targetCommitish => _$this._targetCommitish;
  set targetCommitish(String targetCommitish) =>
      _$this._targetCommitish = targetCommitish;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  bool _draft;
  bool get draft => _$this._draft;
  set draft(bool draft) => _$this._draft = draft;

  bool _prerelease;
  bool get prerelease => _$this._prerelease;
  set prerelease(bool prerelease) => _$this._prerelease = prerelease;

  InlineObject146Builder() {
    InlineObject146._initializeBuilder(this);
  }

  InlineObject146Builder get _$this {
    if (_$v != null) {
      _tagName = _$v.tagName;
      _targetCommitish = _$v.targetCommitish;
      _name = _$v.name;
      _body = _$v.body;
      _draft = _$v.draft;
      _prerelease = _$v.prerelease;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject146 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject146;
  }

  @override
  void update(void Function(InlineObject146Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject146 build() {
    final _$result = _$v ??
        new _$InlineObject146._(
            tagName: tagName,
            targetCommitish: targetCommitish,
            name: name,
            body: body,
            draft: draft,
            prerelease: prerelease);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
