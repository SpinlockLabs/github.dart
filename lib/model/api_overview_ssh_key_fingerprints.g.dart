// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'api_overview_ssh_key_fingerprints.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ApiOverviewSshKeyFingerprints>
    _$apiOverviewSshKeyFingerprintsSerializer =
    new _$ApiOverviewSshKeyFingerprintsSerializer();

class _$ApiOverviewSshKeyFingerprintsSerializer
    implements StructuredSerializer<ApiOverviewSshKeyFingerprints> {
  @override
  final Iterable<Type> types = const [
    ApiOverviewSshKeyFingerprints,
    _$ApiOverviewSshKeyFingerprints
  ];
  @override
  final String wireName = 'ApiOverviewSshKeyFingerprints';

  @override
  Iterable<Object> serialize(
      Serializers serializers, ApiOverviewSshKeyFingerprints object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.sHA256RSA != null) {
      result
        ..add('SHA256_RSA')
        ..add(serializers.serialize(object.sHA256RSA,
            specifiedType: const FullType(String)));
    }
    if (object.sHA256DSA != null) {
      result
        ..add('SHA256_DSA')
        ..add(serializers.serialize(object.sHA256DSA,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ApiOverviewSshKeyFingerprints deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ApiOverviewSshKeyFingerprintsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'SHA256_RSA':
          result.sHA256RSA = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'SHA256_DSA':
          result.sHA256DSA = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ApiOverviewSshKeyFingerprints extends ApiOverviewSshKeyFingerprints {
  @override
  final String sHA256RSA;
  @override
  final String sHA256DSA;

  factory _$ApiOverviewSshKeyFingerprints(
          [void Function(ApiOverviewSshKeyFingerprintsBuilder) updates]) =>
      (new ApiOverviewSshKeyFingerprintsBuilder()..update(updates)).build();

  _$ApiOverviewSshKeyFingerprints._({this.sHA256RSA, this.sHA256DSA})
      : super._();

  @override
  ApiOverviewSshKeyFingerprints rebuild(
          void Function(ApiOverviewSshKeyFingerprintsBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ApiOverviewSshKeyFingerprintsBuilder toBuilder() =>
      new ApiOverviewSshKeyFingerprintsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ApiOverviewSshKeyFingerprints &&
        sHA256RSA == other.sHA256RSA &&
        sHA256DSA == other.sHA256DSA;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, sHA256RSA.hashCode), sHA256DSA.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ApiOverviewSshKeyFingerprints')
          ..add('sHA256RSA', sHA256RSA)
          ..add('sHA256DSA', sHA256DSA))
        .toString();
  }
}

class ApiOverviewSshKeyFingerprintsBuilder
    implements
        Builder<ApiOverviewSshKeyFingerprints,
            ApiOverviewSshKeyFingerprintsBuilder> {
  _$ApiOverviewSshKeyFingerprints _$v;

  String _sHA256RSA;
  String get sHA256RSA => _$this._sHA256RSA;
  set sHA256RSA(String sHA256RSA) => _$this._sHA256RSA = sHA256RSA;

  String _sHA256DSA;
  String get sHA256DSA => _$this._sHA256DSA;
  set sHA256DSA(String sHA256DSA) => _$this._sHA256DSA = sHA256DSA;

  ApiOverviewSshKeyFingerprintsBuilder() {
    ApiOverviewSshKeyFingerprints._initializeBuilder(this);
  }

  ApiOverviewSshKeyFingerprintsBuilder get _$this {
    if (_$v != null) {
      _sHA256RSA = _$v.sHA256RSA;
      _sHA256DSA = _$v.sHA256DSA;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ApiOverviewSshKeyFingerprints other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ApiOverviewSshKeyFingerprints;
  }

  @override
  void update(void Function(ApiOverviewSshKeyFingerprintsBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ApiOverviewSshKeyFingerprints build() {
    final _$result = _$v ??
        new _$ApiOverviewSshKeyFingerprints._(
            sHA256RSA: sHA256RSA, sHA256DSA: sHA256DSA);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
