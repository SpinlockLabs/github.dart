// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'release_asset.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const ReleaseAssetStateEnum _$releaseAssetStateEnum_uploaded =
    const ReleaseAssetStateEnum._('uploaded');
const ReleaseAssetStateEnum _$releaseAssetStateEnum_open =
    const ReleaseAssetStateEnum._('open');

ReleaseAssetStateEnum _$releaseAssetStateEnumValueOf(String name) {
  switch (name) {
    case 'uploaded':
      return _$releaseAssetStateEnum_uploaded;
    case 'open':
      return _$releaseAssetStateEnum_open;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<ReleaseAssetStateEnum> _$releaseAssetStateEnumValues =
    new BuiltSet<ReleaseAssetStateEnum>(const <ReleaseAssetStateEnum>[
  _$releaseAssetStateEnum_uploaded,
  _$releaseAssetStateEnum_open,
]);

Serializer<ReleaseAsset> _$releaseAssetSerializer =
    new _$ReleaseAssetSerializer();
Serializer<ReleaseAssetStateEnum> _$releaseAssetStateEnumSerializer =
    new _$ReleaseAssetStateEnumSerializer();

class _$ReleaseAssetSerializer implements StructuredSerializer<ReleaseAsset> {
  @override
  final Iterable<Type> types = const [ReleaseAsset, _$ReleaseAsset];
  @override
  final String wireName = 'ReleaseAsset';

  @override
  Iterable<Object> serialize(Serializers serializers, ReleaseAsset object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.browserDownloadUrl != null) {
      result
        ..add('browser_download_url')
        ..add(serializers.serialize(object.browserDownloadUrl,
            specifiedType: const FullType(String)));
    }
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.label != null) {
      result
        ..add('label')
        ..add(serializers.serialize(object.label,
            specifiedType: const FullType(String)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(ReleaseAssetStateEnum)));
    }
    if (object.contentType != null) {
      result
        ..add('content_type')
        ..add(serializers.serialize(object.contentType,
            specifiedType: const FullType(String)));
    }
    if (object.size != null) {
      result
        ..add('size')
        ..add(serializers.serialize(object.size,
            specifiedType: const FullType(int)));
    }
    if (object.downloadCount != null) {
      result
        ..add('download_count')
        ..add(serializers.serialize(object.downloadCount,
            specifiedType: const FullType(int)));
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
    if (object.uploader != null) {
      result
        ..add('uploader')
        ..add(serializers.serialize(object.uploader,
            specifiedType: const FullType(SimpleUser)));
    }
    return result;
  }

  @override
  ReleaseAsset deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReleaseAssetBuilder();

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
        case 'browser_download_url':
          result.browserDownloadUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'label':
          result.label = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(ReleaseAssetStateEnum))
              as ReleaseAssetStateEnum;
          break;
        case 'content_type':
          result.contentType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'size':
          result.size = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'download_count':
          result.downloadCount = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'uploader':
          result.uploader.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
      }
    }

    return result.build();
  }
}

class _$ReleaseAssetStateEnumSerializer
    implements PrimitiveSerializer<ReleaseAssetStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'uploaded': 'uploaded',
    'open': 'open',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'uploaded': 'uploaded',
    'open': 'open',
  };

  @override
  final Iterable<Type> types = const <Type>[ReleaseAssetStateEnum];
  @override
  final String wireName = 'ReleaseAssetStateEnum';

  @override
  Object serialize(Serializers serializers, ReleaseAssetStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  ReleaseAssetStateEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      ReleaseAssetStateEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$ReleaseAsset extends ReleaseAsset {
  @override
  final String url;
  @override
  final String browserDownloadUrl;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String name;
  @override
  final String label;
  @override
  final ReleaseAssetStateEnum state;
  @override
  final String contentType;
  @override
  final int size;
  @override
  final int downloadCount;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final SimpleUser uploader;

  factory _$ReleaseAsset([void Function(ReleaseAssetBuilder) updates]) =>
      (new ReleaseAssetBuilder()..update(updates)).build();

  _$ReleaseAsset._(
      {this.url,
      this.browserDownloadUrl,
      this.id,
      this.nodeId,
      this.name,
      this.label,
      this.state,
      this.contentType,
      this.size,
      this.downloadCount,
      this.createdAt,
      this.updatedAt,
      this.uploader})
      : super._();

  @override
  ReleaseAsset rebuild(void Function(ReleaseAssetBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReleaseAssetBuilder toBuilder() => new ReleaseAssetBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReleaseAsset &&
        url == other.url &&
        browserDownloadUrl == other.browserDownloadUrl &&
        id == other.id &&
        nodeId == other.nodeId &&
        name == other.name &&
        label == other.label &&
        state == other.state &&
        contentType == other.contentType &&
        size == other.size &&
        downloadCount == other.downloadCount &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        uploader == other.uploader;
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
                                                $jc(
                                                    $jc(0, url.hashCode),
                                                    browserDownloadUrl
                                                        .hashCode),
                                                id.hashCode),
                                            nodeId.hashCode),
                                        name.hashCode),
                                    label.hashCode),
                                state.hashCode),
                            contentType.hashCode),
                        size.hashCode),
                    downloadCount.hashCode),
                createdAt.hashCode),
            updatedAt.hashCode),
        uploader.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ReleaseAsset')
          ..add('url', url)
          ..add('browserDownloadUrl', browserDownloadUrl)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('name', name)
          ..add('label', label)
          ..add('state', state)
          ..add('contentType', contentType)
          ..add('size', size)
          ..add('downloadCount', downloadCount)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('uploader', uploader))
        .toString();
  }
}

class ReleaseAssetBuilder
    implements Builder<ReleaseAsset, ReleaseAssetBuilder> {
  _$ReleaseAsset _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _browserDownloadUrl;
  String get browserDownloadUrl => _$this._browserDownloadUrl;
  set browserDownloadUrl(String browserDownloadUrl) =>
      _$this._browserDownloadUrl = browserDownloadUrl;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _label;
  String get label => _$this._label;
  set label(String label) => _$this._label = label;

  ReleaseAssetStateEnum _state;
  ReleaseAssetStateEnum get state => _$this._state;
  set state(ReleaseAssetStateEnum state) => _$this._state = state;

  String _contentType;
  String get contentType => _$this._contentType;
  set contentType(String contentType) => _$this._contentType = contentType;

  int _size;
  int get size => _$this._size;
  set size(int size) => _$this._size = size;

  int _downloadCount;
  int get downloadCount => _$this._downloadCount;
  set downloadCount(int downloadCount) => _$this._downloadCount = downloadCount;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  SimpleUserBuilder _uploader;
  SimpleUserBuilder get uploader =>
      _$this._uploader ??= new SimpleUserBuilder();
  set uploader(SimpleUserBuilder uploader) => _$this._uploader = uploader;

  ReleaseAssetBuilder() {
    ReleaseAsset._initializeBuilder(this);
  }

  ReleaseAssetBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _browserDownloadUrl = _$v.browserDownloadUrl;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _name = _$v.name;
      _label = _$v.label;
      _state = _$v.state;
      _contentType = _$v.contentType;
      _size = _$v.size;
      _downloadCount = _$v.downloadCount;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _uploader = _$v.uploader?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReleaseAsset other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReleaseAsset;
  }

  @override
  void update(void Function(ReleaseAssetBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReleaseAsset build() {
    _$ReleaseAsset _$result;
    try {
      _$result = _$v ??
          new _$ReleaseAsset._(
              url: url,
              browserDownloadUrl: browserDownloadUrl,
              id: id,
              nodeId: nodeId,
              name: name,
              label: label,
              state: state,
              contentType: contentType,
              size: size,
              downloadCount: downloadCount,
              createdAt: createdAt,
              updatedAt: updatedAt,
              uploader: _uploader?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'uploader';
        _uploader?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'ReleaseAsset', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
