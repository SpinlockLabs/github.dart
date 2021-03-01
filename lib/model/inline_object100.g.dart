// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object100.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject100TypeEnum _$inlineObject100TypeEnum_commit =
    const InlineObject100TypeEnum._('commit');
const InlineObject100TypeEnum _$inlineObject100TypeEnum_tree =
    const InlineObject100TypeEnum._('tree');
const InlineObject100TypeEnum _$inlineObject100TypeEnum_blob =
    const InlineObject100TypeEnum._('blob');

InlineObject100TypeEnum _$inlineObject100TypeEnumValueOf(String name) {
  switch (name) {
    case 'commit':
      return _$inlineObject100TypeEnum_commit;
    case 'tree':
      return _$inlineObject100TypeEnum_tree;
    case 'blob':
      return _$inlineObject100TypeEnum_blob;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject100TypeEnum> _$inlineObject100TypeEnumValues =
    new BuiltSet<InlineObject100TypeEnum>(const <InlineObject100TypeEnum>[
  _$inlineObject100TypeEnum_commit,
  _$inlineObject100TypeEnum_tree,
  _$inlineObject100TypeEnum_blob,
]);

Serializer<InlineObject100> _$inlineObject100Serializer =
    new _$InlineObject100Serializer();
Serializer<InlineObject100TypeEnum> _$inlineObject100TypeEnumSerializer =
    new _$InlineObject100TypeEnumSerializer();

class _$InlineObject100Serializer
    implements StructuredSerializer<InlineObject100> {
  @override
  final Iterable<Type> types = const [InlineObject100, _$InlineObject100];
  @override
  final String wireName = 'InlineObject100';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject100 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.tag != null) {
      result
        ..add('tag')
        ..add(serializers.serialize(object.tag,
            specifiedType: const FullType(String)));
    }
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    if (object.object != null) {
      result
        ..add('object')
        ..add(serializers.serialize(object.object,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(InlineObject100TypeEnum)));
    }
    if (object.tagger != null) {
      result
        ..add('tagger')
        ..add(serializers.serialize(object.tagger,
            specifiedType: const FullType(ReposOwnerRepoGitTagsTagger)));
    }
    return result;
  }

  @override
  InlineObject100 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject100Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'tag':
          result.tag = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'object':
          result.object = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject100TypeEnum))
              as InlineObject100TypeEnum;
          break;
        case 'tagger':
          result.tagger.replace(serializers.deserialize(value,
                  specifiedType: const FullType(ReposOwnerRepoGitTagsTagger))
              as ReposOwnerRepoGitTagsTagger);
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject100TypeEnumSerializer
    implements PrimitiveSerializer<InlineObject100TypeEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'commit': 'commit',
    'tree': 'tree',
    'blob': 'blob',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'commit': 'commit',
    'tree': 'tree',
    'blob': 'blob',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject100TypeEnum];
  @override
  final String wireName = 'InlineObject100TypeEnum';

  @override
  Object serialize(Serializers serializers, InlineObject100TypeEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject100TypeEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject100TypeEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject100 extends InlineObject100 {
  @override
  final String tag;
  @override
  final String message;
  @override
  final String object;
  @override
  final InlineObject100TypeEnum type;
  @override
  final ReposOwnerRepoGitTagsTagger tagger;

  factory _$InlineObject100([void Function(InlineObject100Builder) updates]) =>
      (new InlineObject100Builder()..update(updates)).build();

  _$InlineObject100._(
      {this.tag, this.message, this.object, this.type, this.tagger})
      : super._();

  @override
  InlineObject100 rebuild(void Function(InlineObject100Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject100Builder toBuilder() =>
      new InlineObject100Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject100 &&
        tag == other.tag &&
        message == other.message &&
        object == other.object &&
        type == other.type &&
        tagger == other.tagger;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc($jc(0, tag.hashCode), message.hashCode), object.hashCode),
            type.hashCode),
        tagger.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject100')
          ..add('tag', tag)
          ..add('message', message)
          ..add('object', object)
          ..add('type', type)
          ..add('tagger', tagger))
        .toString();
  }
}

class InlineObject100Builder
    implements Builder<InlineObject100, InlineObject100Builder> {
  _$InlineObject100 _$v;

  String _tag;
  String get tag => _$this._tag;
  set tag(String tag) => _$this._tag = tag;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  String _object;
  String get object => _$this._object;
  set object(String object) => _$this._object = object;

  InlineObject100TypeEnum _type;
  InlineObject100TypeEnum get type => _$this._type;
  set type(InlineObject100TypeEnum type) => _$this._type = type;

  ReposOwnerRepoGitTagsTaggerBuilder _tagger;
  ReposOwnerRepoGitTagsTaggerBuilder get tagger =>
      _$this._tagger ??= new ReposOwnerRepoGitTagsTaggerBuilder();
  set tagger(ReposOwnerRepoGitTagsTaggerBuilder tagger) =>
      _$this._tagger = tagger;

  InlineObject100Builder() {
    InlineObject100._initializeBuilder(this);
  }

  InlineObject100Builder get _$this {
    if (_$v != null) {
      _tag = _$v.tag;
      _message = _$v.message;
      _object = _$v.object;
      _type = _$v.type;
      _tagger = _$v.tagger?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject100 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject100;
  }

  @override
  void update(void Function(InlineObject100Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject100 build() {
    _$InlineObject100 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject100._(
              tag: tag,
              message: message,
              object: object,
              type: type,
              tagger: _tagger?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'tagger';
        _tagger?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject100', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
