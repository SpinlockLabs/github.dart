// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object84.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject84> _$inlineObject84Serializer =
    new _$InlineObject84Serializer();

class _$InlineObject84Serializer
    implements StructuredSerializer<InlineObject84> {
  @override
  final Iterable<Type> types = const [InlineObject84, _$InlineObject84];
  @override
  final String wireName = 'InlineObject84';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject84 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.commitSha != null) {
      result
        ..add('commit_sha')
        ..add(serializers.serialize(object.commitSha,
            specifiedType: const FullType(String)));
    }
    if (object.ref != null) {
      result
        ..add('ref')
        ..add(serializers.serialize(object.ref,
            specifiedType: const FullType(String)));
    }
    if (object.sarif != null) {
      result
        ..add('sarif')
        ..add(serializers.serialize(object.sarif,
            specifiedType: const FullType(String)));
    }
    if (object.checkoutUri != null) {
      result
        ..add('checkout_uri')
        ..add(serializers.serialize(object.checkoutUri,
            specifiedType: const FullType(String)));
    }
    if (object.startedAt != null) {
      result
        ..add('started_at')
        ..add(serializers.serialize(object.startedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.toolName != null) {
      result
        ..add('tool_name')
        ..add(serializers.serialize(object.toolName,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject84 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject84Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'commit_sha':
          result.commitSha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'ref':
          result.ref = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sarif':
          result.sarif = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'checkout_uri':
          result.checkoutUri = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'started_at':
          result.startedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'tool_name':
          result.toolName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject84 extends InlineObject84 {
  @override
  final String commitSha;
  @override
  final String ref;
  @override
  final String sarif;
  @override
  final String checkoutUri;
  @override
  final DateTime startedAt;
  @override
  final String toolName;

  factory _$InlineObject84([void Function(InlineObject84Builder) updates]) =>
      (new InlineObject84Builder()..update(updates)).build();

  _$InlineObject84._(
      {this.commitSha,
      this.ref,
      this.sarif,
      this.checkoutUri,
      this.startedAt,
      this.toolName})
      : super._();

  @override
  InlineObject84 rebuild(void Function(InlineObject84Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject84Builder toBuilder() =>
      new InlineObject84Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject84 &&
        commitSha == other.commitSha &&
        ref == other.ref &&
        sarif == other.sarif &&
        checkoutUri == other.checkoutUri &&
        startedAt == other.startedAt &&
        toolName == other.toolName;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, commitSha.hashCode), ref.hashCode),
                    sarif.hashCode),
                checkoutUri.hashCode),
            startedAt.hashCode),
        toolName.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject84')
          ..add('commitSha', commitSha)
          ..add('ref', ref)
          ..add('sarif', sarif)
          ..add('checkoutUri', checkoutUri)
          ..add('startedAt', startedAt)
          ..add('toolName', toolName))
        .toString();
  }
}

class InlineObject84Builder
    implements Builder<InlineObject84, InlineObject84Builder> {
  _$InlineObject84 _$v;

  String _commitSha;
  String get commitSha => _$this._commitSha;
  set commitSha(String commitSha) => _$this._commitSha = commitSha;

  String _ref;
  String get ref => _$this._ref;
  set ref(String ref) => _$this._ref = ref;

  String _sarif;
  String get sarif => _$this._sarif;
  set sarif(String sarif) => _$this._sarif = sarif;

  String _checkoutUri;
  String get checkoutUri => _$this._checkoutUri;
  set checkoutUri(String checkoutUri) => _$this._checkoutUri = checkoutUri;

  DateTime _startedAt;
  DateTime get startedAt => _$this._startedAt;
  set startedAt(DateTime startedAt) => _$this._startedAt = startedAt;

  String _toolName;
  String get toolName => _$this._toolName;
  set toolName(String toolName) => _$this._toolName = toolName;

  InlineObject84Builder() {
    InlineObject84._initializeBuilder(this);
  }

  InlineObject84Builder get _$this {
    if (_$v != null) {
      _commitSha = _$v.commitSha;
      _ref = _$v.ref;
      _sarif = _$v.sarif;
      _checkoutUri = _$v.checkoutUri;
      _startedAt = _$v.startedAt;
      _toolName = _$v.toolName;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject84 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject84;
  }

  @override
  void update(void Function(InlineObject84Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject84 build() {
    final _$result = _$v ??
        new _$InlineObject84._(
            commitSha: commitSha,
            ref: ref,
            sarif: sarif,
            checkoutUri: checkoutUri,
            startedAt: startedAt,
            toolName: toolName);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
