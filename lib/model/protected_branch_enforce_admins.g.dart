// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'protected_branch_enforce_admins.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ProtectedBranchEnforceAdmins>
    _$protectedBranchEnforceAdminsSerializer =
    new _$ProtectedBranchEnforceAdminsSerializer();

class _$ProtectedBranchEnforceAdminsSerializer
    implements StructuredSerializer<ProtectedBranchEnforceAdmins> {
  @override
  final Iterable<Type> types = const [
    ProtectedBranchEnforceAdmins,
    _$ProtectedBranchEnforceAdmins
  ];
  @override
  final String wireName = 'ProtectedBranchEnforceAdmins';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ProtectedBranchEnforceAdmins object,
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
  ProtectedBranchEnforceAdmins deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ProtectedBranchEnforceAdminsBuilder();

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

class _$ProtectedBranchEnforceAdmins extends ProtectedBranchEnforceAdmins {
  @override
  final String url;
  @override
  final bool enabled;

  factory _$ProtectedBranchEnforceAdmins(
          [void Function(ProtectedBranchEnforceAdminsBuilder) updates]) =>
      (new ProtectedBranchEnforceAdminsBuilder()..update(updates)).build();

  _$ProtectedBranchEnforceAdmins._({this.url, this.enabled}) : super._();

  @override
  ProtectedBranchEnforceAdmins rebuild(
          void Function(ProtectedBranchEnforceAdminsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ProtectedBranchEnforceAdminsBuilder toBuilder() =>
      new ProtectedBranchEnforceAdminsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ProtectedBranchEnforceAdmins &&
        url == other.url &&
        enabled == other.enabled;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), enabled.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ProtectedBranchEnforceAdmins')
          ..add('url', url)
          ..add('enabled', enabled))
        .toString();
  }
}

class ProtectedBranchEnforceAdminsBuilder
    implements
        Builder<ProtectedBranchEnforceAdmins,
            ProtectedBranchEnforceAdminsBuilder> {
  _$ProtectedBranchEnforceAdmins _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  bool _enabled;
  bool get enabled => _$this._enabled;
  set enabled(bool enabled) => _$this._enabled = enabled;

  ProtectedBranchEnforceAdminsBuilder() {
    ProtectedBranchEnforceAdmins._initializeBuilder(this);
  }

  ProtectedBranchEnforceAdminsBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _enabled = _$v.enabled;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ProtectedBranchEnforceAdmins other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ProtectedBranchEnforceAdmins;
  }

  @override
  void update(void Function(ProtectedBranchEnforceAdminsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ProtectedBranchEnforceAdmins build() {
    final _$result =
        _$v ?? new _$ProtectedBranchEnforceAdmins._(url: url, enabled: enabled);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
