// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'secret_scanning_alert.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<SecretScanningAlert> _$secretScanningAlertSerializer =
    new _$SecretScanningAlertSerializer();

class _$SecretScanningAlertSerializer
    implements StructuredSerializer<SecretScanningAlert> {
  @override
  final Iterable<Type> types = const [
    SecretScanningAlert,
    _$SecretScanningAlert
  ];
  @override
  final String wireName = 'SecretScanningAlert';

  @override
  Iterable<Object> serialize(
      Serializers serializers, SecretScanningAlert object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(SecretScanningAlertState)));
    }
    if (object.resolution != null) {
      result
        ..add('resolution')
        ..add(serializers.serialize(object.resolution,
            specifiedType: const FullType(SecretScanningAlertResolution)));
    }
    if (object.resolvedAt != null) {
      result
        ..add('resolved_at')
        ..add(serializers.serialize(object.resolvedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.resolvedBy != null) {
      result
        ..add('resolved_by')
        ..add(serializers.serialize(object.resolvedBy,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.secretType != null) {
      result
        ..add('secret_type')
        ..add(serializers.serialize(object.secretType,
            specifiedType: const FullType(String)));
    }
    if (object.secret != null) {
      result
        ..add('secret')
        ..add(serializers.serialize(object.secret,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  SecretScanningAlert deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new SecretScanningAlertBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(SecretScanningAlertState))
              as SecretScanningAlertState;
          break;
        case 'resolution':
          result.resolution.replace(serializers.deserialize(value,
                  specifiedType: const FullType(SecretScanningAlertResolution))
              as SecretScanningAlertResolution);
          break;
        case 'resolved_at':
          result.resolvedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'resolved_by':
          result.resolvedBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'secret_type':
          result.secretType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'secret':
          result.secret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$SecretScanningAlert extends SecretScanningAlert {
  @override
  final int number;
  @override
  final DateTime createdAt;
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final SecretScanningAlertState state;
  @override
  final SecretScanningAlertResolution resolution;
  @override
  final DateTime resolvedAt;
  @override
  final SimpleUser resolvedBy;
  @override
  final String secretType;
  @override
  final String secret;

  factory _$SecretScanningAlert(
          [void Function(SecretScanningAlertBuilder) updates]) =>
      (new SecretScanningAlertBuilder()..update(updates)).build();

  _$SecretScanningAlert._(
      {this.number,
      this.createdAt,
      this.url,
      this.htmlUrl,
      this.state,
      this.resolution,
      this.resolvedAt,
      this.resolvedBy,
      this.secretType,
      this.secret})
      : super._();

  @override
  SecretScanningAlert rebuild(
          void Function(SecretScanningAlertBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  SecretScanningAlertBuilder toBuilder() =>
      new SecretScanningAlertBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is SecretScanningAlert &&
        number == other.number &&
        createdAt == other.createdAt &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        state == other.state &&
        resolution == other.resolution &&
        resolvedAt == other.resolvedAt &&
        resolvedBy == other.resolvedBy &&
        secretType == other.secretType &&
        secret == other.secret;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc($jc(0, number.hashCode),
                                        createdAt.hashCode),
                                    url.hashCode),
                                htmlUrl.hashCode),
                            state.hashCode),
                        resolution.hashCode),
                    resolvedAt.hashCode),
                resolvedBy.hashCode),
            secretType.hashCode),
        secret.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('SecretScanningAlert')
          ..add('number', number)
          ..add('createdAt', createdAt)
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('state', state)
          ..add('resolution', resolution)
          ..add('resolvedAt', resolvedAt)
          ..add('resolvedBy', resolvedBy)
          ..add('secretType', secretType)
          ..add('secret', secret))
        .toString();
  }
}

class SecretScanningAlertBuilder
    implements Builder<SecretScanningAlert, SecretScanningAlertBuilder> {
  _$SecretScanningAlert _$v;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  SecretScanningAlertState _state;
  SecretScanningAlertState get state => _$this._state;
  set state(SecretScanningAlertState state) => _$this._state = state;

  SecretScanningAlertResolutionBuilder _resolution;
  SecretScanningAlertResolutionBuilder get resolution =>
      _$this._resolution ??= new SecretScanningAlertResolutionBuilder();
  set resolution(SecretScanningAlertResolutionBuilder resolution) =>
      _$this._resolution = resolution;

  DateTime _resolvedAt;
  DateTime get resolvedAt => _$this._resolvedAt;
  set resolvedAt(DateTime resolvedAt) => _$this._resolvedAt = resolvedAt;

  SimpleUserBuilder _resolvedBy;
  SimpleUserBuilder get resolvedBy =>
      _$this._resolvedBy ??= new SimpleUserBuilder();
  set resolvedBy(SimpleUserBuilder resolvedBy) =>
      _$this._resolvedBy = resolvedBy;

  String _secretType;
  String get secretType => _$this._secretType;
  set secretType(String secretType) => _$this._secretType = secretType;

  String _secret;
  String get secret => _$this._secret;
  set secret(String secret) => _$this._secret = secret;

  SecretScanningAlertBuilder() {
    SecretScanningAlert._initializeBuilder(this);
  }

  SecretScanningAlertBuilder get _$this {
    if (_$v != null) {
      _number = _$v.number;
      _createdAt = _$v.createdAt;
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _state = _$v.state;
      _resolution = _$v.resolution?.toBuilder();
      _resolvedAt = _$v.resolvedAt;
      _resolvedBy = _$v.resolvedBy?.toBuilder();
      _secretType = _$v.secretType;
      _secret = _$v.secret;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(SecretScanningAlert other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$SecretScanningAlert;
  }

  @override
  void update(void Function(SecretScanningAlertBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$SecretScanningAlert build() {
    _$SecretScanningAlert _$result;
    try {
      _$result = _$v ??
          new _$SecretScanningAlert._(
              number: number,
              createdAt: createdAt,
              url: url,
              htmlUrl: htmlUrl,
              state: state,
              resolution: _resolution?.build(),
              resolvedAt: resolvedAt,
              resolvedBy: _resolvedBy?.build(),
              secretType: secretType,
              secret: secret);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'resolution';
        _resolution?.build();

        _$failedField = 'resolvedBy';
        _resolvedBy?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'SecretScanningAlert', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
