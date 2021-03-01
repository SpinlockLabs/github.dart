// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'protected_branch_required_signatures.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProtectedBranchRequiredSignatures>
    _$protectedBranchRequiredSignaturesSerializer =
    new _$ProtectedBranchRequiredSignaturesSerializer();

class _$ProtectedBranchRequiredSignaturesSerializer
    implements StructuredSerializer<ProtectedBranchRequiredSignatures> {
  @override
  final Iterable<Type> types = const [
    ProtectedBranchRequiredSignatures,
    _$ProtectedBranchRequiredSignatures
  ];
  @override
  final String wireName = 'ProtectedBranchRequiredSignatures';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProtectedBranchRequiredSignatures object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.enabled != null) {
      result
        ..add('enabled')
        ..add(serializers.serialize(object.enabled,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  ProtectedBranchRequiredSignatures deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProtectedBranchRequiredSignaturesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'enabled':
          result.enabled = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$ProtectedBranchRequiredSignatures
    extends ProtectedBranchRequiredSignatures {
  @override
  final String url;
  @override
  final bool enabled;

  factory _$ProtectedBranchRequiredSignatures(
          [void Function(ProtectedBranchRequiredSignaturesBuilder) updates]) =>
      (new ProtectedBranchRequiredSignaturesBuilder()..update(updates)).build();

  _$ProtectedBranchRequiredSignatures._({this.url, this.enabled}) : super._();

  @override
  ProtectedBranchRequiredSignatures rebuild(
          void Function(ProtectedBranchRequiredSignaturesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProtectedBranchRequiredSignaturesBuilder toBuilder() =>
      new ProtectedBranchRequiredSignaturesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProtectedBranchRequiredSignatures &&
        url == other.url &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), enabled.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProtectedBranchRequiredSignatures')
          ..add('url', url)
          ..add('enabled', enabled))
        .toString();
  }
}

class ProtectedBranchRequiredSignaturesBuilder
    implements
        Builder<ProtectedBranchRequiredSignatures,
            ProtectedBranchRequiredSignaturesBuilder> {
  _$ProtectedBranchRequiredSignatures _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  bool _enabled;
  bool get enabled => _$this._enabled;
  set enabled(bool enabled) => _$this._enabled = enabled;

  ProtectedBranchRequiredSignaturesBuilder() {
    ProtectedBranchRequiredSignatures._initializeBuilder(this);
  }

  ProtectedBranchRequiredSignaturesBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _enabled = _$v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProtectedBranchRequiredSignatures other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProtectedBranchRequiredSignatures;
  }

  @override
  void update(void Function(ProtectedBranchRequiredSignaturesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProtectedBranchRequiredSignatures build() {
    final _$result = _$v ??
        new _$ProtectedBranchRequiredSignatures._(url: url, enabled: enabled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
