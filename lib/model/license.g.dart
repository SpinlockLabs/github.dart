// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'license.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<License> _$licenseSerializer = new _$LicenseSerializer();

class _$LicenseSerializer implements StructuredSerializer<License> {
  @override
  final Iterable<Type> types = const [License, _$License];
  @override
  final String wireName = 'License';

  @override
  Iterable<Object> serialize(Serializers serializers, License object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.key != null) {
      result
        ..add('key')
        ..add(serializers.serialize(object.key,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.spdxId != null) {
      result
        ..add('spdx_id')
        ..add(serializers.serialize(object.spdxId,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.implementation != null) {
      result
        ..add('implementation')
        ..add(serializers.serialize(object.implementation,
            specifiedType: const FullType(String)));
    }
    if (object.permissions != null) {
      result
        ..add('permissions')
        ..add(serializers.serialize(object.permissions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.conditions != null) {
      result
        ..add('conditions')
        ..add(serializers.serialize(object.conditions,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.limitations != null) {
      result
        ..add('limitations')
        ..add(serializers.serialize(object.limitations,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.featured != null) {
      result
        ..add('featured')
        ..add(serializers.serialize(object.featured,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  License deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LicenseBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'key':
          result.key = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'spdx_id':
          result.spdxId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'implementation':
          result.implementation = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'permissions':
          result.permissions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'conditions':
          result.conditions.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'limitations':
          result.limitations.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'featured':
          result.featured = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$License extends License {
  @override
  final String key;
  @override
  final String name;
  @override
  final String spdxId;
  @override
  final String url;
  @override
  final String nodeId;
  @override
  final String htmlUrl;
  @override
  final String description;
  @override
  final String implementation;
  @override
  final BuiltList<String> permissions;
  @override
  final BuiltList<String> conditions;
  @override
  final BuiltList<String> limitations;
  @override
  final String body;
  @override
  final bool featured;

  factory _$License([void Function(LicenseBuilder) updates]) =>
      (new LicenseBuilder()..update(updates)).build();

  _$License._(
      {this.key,
      this.name,
      this.spdxId,
      this.url,
      this.nodeId,
      this.htmlUrl,
      this.description,
      this.implementation,
      this.permissions,
      this.conditions,
      this.limitations,
      this.body,
      this.featured})
      : super._();

  @override
  License rebuild(void Function(LicenseBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LicenseBuilder toBuilder() => new LicenseBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is License &&
        key == other.key &&
        name == other.name &&
        spdxId == other.spdxId &&
        url == other.url &&
        nodeId == other.nodeId &&
        htmlUrl == other.htmlUrl &&
        description == other.description &&
        implementation == other.implementation &&
        permissions == other.permissions &&
        conditions == other.conditions &&
        limitations == other.limitations &&
        body == other.body &&
        featured == other.featured;
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
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc($jc(0, key.hashCode),
                                                    name.hashCode),
                                                spdxId.hashCode),
                                            url.hashCode),
                                        nodeId.hashCode),
                                    htmlUrl.hashCode),
                                description.hashCode),
                            implementation.hashCode),
                        permissions.hashCode),
                    conditions.hashCode),
                limitations.hashCode),
            body.hashCode),
        featured.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('License')
          ..add('key', key)
          ..add('name', name)
          ..add('spdxId', spdxId)
          ..add('url', url)
          ..add('nodeId', nodeId)
          ..add('htmlUrl', htmlUrl)
          ..add('description', description)
          ..add('implementation', implementation)
          ..add('permissions', permissions)
          ..add('conditions', conditions)
          ..add('limitations', limitations)
          ..add('body', body)
          ..add('featured', featured))
        .toString();
  }
}

class LicenseBuilder implements Builder<License, LicenseBuilder> {
  _$License _$v;

  String _key;
  String get key => _$this._key;
  set key(String key) => _$this._key = key;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _spdxId;
  String get spdxId => _$this._spdxId;
  set spdxId(String spdxId) => _$this._spdxId = spdxId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _implementation;
  String get implementation => _$this._implementation;
  set implementation(String implementation) =>
      _$this._implementation = implementation;

  ListBuilder<String> _permissions;
  ListBuilder<String> get permissions =>
      _$this._permissions ??= new ListBuilder<String>();
  set permissions(ListBuilder<String> permissions) =>
      _$this._permissions = permissions;

  ListBuilder<String> _conditions;
  ListBuilder<String> get conditions =>
      _$this._conditions ??= new ListBuilder<String>();
  set conditions(ListBuilder<String> conditions) =>
      _$this._conditions = conditions;

  ListBuilder<String> _limitations;
  ListBuilder<String> get limitations =>
      _$this._limitations ??= new ListBuilder<String>();
  set limitations(ListBuilder<String> limitations) =>
      _$this._limitations = limitations;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  bool _featured;
  bool get featured => _$this._featured;
  set featured(bool featured) => _$this._featured = featured;

  LicenseBuilder() {
    License._initializeBuilder(this);
  }

  LicenseBuilder get _$this {
    if (_$v != null) {
      _key = _$v.key;
      _name = _$v.name;
      _spdxId = _$v.spdxId;
      _url = _$v.url;
      _nodeId = _$v.nodeId;
      _htmlUrl = _$v.htmlUrl;
      _description = _$v.description;
      _implementation = _$v.implementation;
      _permissions = _$v.permissions?.toBuilder();
      _conditions = _$v.conditions?.toBuilder();
      _limitations = _$v.limitations?.toBuilder();
      _body = _$v.body;
      _featured = _$v.featured;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(License other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$License;
  }

  @override
  void update(void Function(LicenseBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$License build() {
    _$License _$result;
    try {
      _$result = _$v ??
          new _$License._(
              key: key,
              name: name,
              spdxId: spdxId,
              url: url,
              nodeId: nodeId,
              htmlUrl: htmlUrl,
              description: description,
              implementation: implementation,
              permissions: _permissions?.build(),
              conditions: _conditions?.build(),
              limitations: _limitations?.build(),
              body: body,
              featured: featured);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'permissions';
        _permissions?.build();
        _$failedField = 'conditions';
        _conditions?.build();
        _$failedField = 'limitations';
        _limitations?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'License', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
