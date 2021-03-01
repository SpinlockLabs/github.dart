// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'package_version.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PackageVersion> _$packageVersionSerializer =
    new _$PackageVersionSerializer();

class _$PackageVersionSerializer
    implements StructuredSerializer<PackageVersion> {
  @override
  final Iterable<Type> types = const [PackageVersion, _$PackageVersion];
  @override
  final String wireName = 'PackageVersion';

  @override
  Iterable<Object> serialize(Serializers serializers, PackageVersion object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.packageHtmlUrl != null) {
      result
        ..add('package_html_url')
        ..add(serializers.serialize(object.packageHtmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.license != null) {
      result
        ..add('license')
        ..add(serializers.serialize(object.license,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.deletedAt != null) {
      result
        ..add('deleted_at')
        ..add(serializers.serialize(object.deletedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.metadata != null) {
      result
        ..add('metadata')
        ..add(serializers.serialize(object.metadata,
            specifiedType: const FullType(PackageVersionMetadata)));
    }
    return result;
  }

  @override
  PackageVersion deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PackageVersionBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'package_html_url':
          result.packageHtmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'license':
          result.license = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'deleted_at':
          result.deletedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'metadata':
          result.metadata.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PackageVersionMetadata))
              as PackageVersionMetadata);
          break;
      }
    }

    return result.build();
  }
}

class _$PackageVersion extends PackageVersion {
  @override
  final int id;
  @override
  final String name;
  @override
  final String url;
  @override
  final String packageHtmlUrl;
  @override
  final String htmlUrl;
  @override
  final String license;
  @override
  final String description;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime deletedAt;
  @override
  final PackageVersionMetadata metadata;

  factory _$PackageVersion([void Function(PackageVersionBuilder) updates]) =>
      (new PackageVersionBuilder()..update(updates)).build();

  _$PackageVersion._(
      {this.id,
      this.name,
      this.url,
      this.packageHtmlUrl,
      this.htmlUrl,
      this.license,
      this.description,
      this.createdAt,
      this.updatedAt,
      this.deletedAt,
      this.metadata})
      : super._();

  @override
  PackageVersion rebuild(void Function(PackageVersionBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PackageVersionBuilder toBuilder() =>
      new PackageVersionBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PackageVersion &&
        id == other.id &&
        name == other.name &&
        url == other.url &&
        packageHtmlUrl == other.packageHtmlUrl &&
        htmlUrl == other.htmlUrl &&
        license == other.license &&
        description == other.description &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        deletedAt == other.deletedAt &&
        metadata == other.metadata;
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
                                    $jc($jc($jc(0, id.hashCode), name.hashCode),
                                        url.hashCode),
                                    packageHtmlUrl.hashCode),
                                htmlUrl.hashCode),
                            license.hashCode),
                        description.hashCode),
                    createdAt.hashCode),
                updatedAt.hashCode),
            deletedAt.hashCode),
        metadata.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PackageVersion')
          ..add('id', id)
          ..add('name', name)
          ..add('url', url)
          ..add('packageHtmlUrl', packageHtmlUrl)
          ..add('htmlUrl', htmlUrl)
          ..add('license', license)
          ..add('description', description)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('deletedAt', deletedAt)
          ..add('metadata', metadata))
        .toString();
  }
}

class PackageVersionBuilder
    implements Builder<PackageVersion, PackageVersionBuilder> {
  _$PackageVersion _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _packageHtmlUrl;
  String get packageHtmlUrl => _$this._packageHtmlUrl;
  set packageHtmlUrl(String packageHtmlUrl) =>
      _$this._packageHtmlUrl = packageHtmlUrl;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _license;
  String get license => _$this._license;
  set license(String license) => _$this._license = license;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  DateTime _deletedAt;
  DateTime get deletedAt => _$this._deletedAt;
  set deletedAt(DateTime deletedAt) => _$this._deletedAt = deletedAt;

  PackageVersionMetadataBuilder _metadata;
  PackageVersionMetadataBuilder get metadata =>
      _$this._metadata ??= new PackageVersionMetadataBuilder();
  set metadata(PackageVersionMetadataBuilder metadata) =>
      _$this._metadata = metadata;

  PackageVersionBuilder() {
    PackageVersion._initializeBuilder(this);
  }

  PackageVersionBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _url = _$v.url;
      _packageHtmlUrl = _$v.packageHtmlUrl;
      _htmlUrl = _$v.htmlUrl;
      _license = _$v.license;
      _description = _$v.description;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _deletedAt = _$v.deletedAt;
      _metadata = _$v.metadata?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PackageVersion other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PackageVersion;
  }

  @override
  void update(void Function(PackageVersionBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PackageVersion build() {
    _$PackageVersion _$result;
    try {
      _$result = _$v ??
          new _$PackageVersion._(
              id: id,
              name: name,
              url: url,
              packageHtmlUrl: packageHtmlUrl,
              htmlUrl: htmlUrl,
              license: license,
              description: description,
              createdAt: createdAt,
              updatedAt: updatedAt,
              deletedAt: deletedAt,
              metadata: _metadata?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'metadata';
        _metadata?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'PackageVersion', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
