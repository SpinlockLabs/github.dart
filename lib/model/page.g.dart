// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'page.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const PageStatusEnum _$pageStatusEnum_built = const PageStatusEnum._('built');
const PageStatusEnum _$pageStatusEnum_building =
    const PageStatusEnum._('building');
const PageStatusEnum _$pageStatusEnum_errored =
    const PageStatusEnum._('errored');

PageStatusEnum _$pageStatusEnumValueOf(String name) {
  switch (name) {
    case 'built':
      return _$pageStatusEnum_built;
    case 'building':
      return _$pageStatusEnum_building;
    case 'errored':
      return _$pageStatusEnum_errored;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<PageStatusEnum> _$pageStatusEnumValues =
    new BuiltSet<PageStatusEnum>(const <PageStatusEnum>[
  _$pageStatusEnum_built,
  _$pageStatusEnum_building,
  _$pageStatusEnum_errored,
]);

Serializer<Page> _$pageSerializer = new _$PageSerializer();
Serializer<PageStatusEnum> _$pageStatusEnumSerializer =
    new _$PageStatusEnumSerializer();

class _$PageSerializer implements StructuredSerializer<Page> {
  @override
  final Iterable<Type> types = const [Page, _$Page];
  @override
  final String wireName = 'Page';

  @override
  Iterable<Object> serialize(Serializers serializers, Page object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(PageStatusEnum)));
    }
    if (object.cname != null) {
      result
        ..add('cname')
        ..add(serializers.serialize(object.cname,
            specifiedType: const FullType(String)));
    }
    if (object.custom404 != null) {
      result
        ..add('custom_404')
        ..add(serializers.serialize(object.custom404,
            specifiedType: const FullType(bool)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.source_ != null) {
      result
        ..add('source')
        ..add(serializers.serialize(object.source_,
            specifiedType: const FullType(PagesSourceHash)));
    }
    if (object.public != null) {
      result
        ..add('public')
        ..add(serializers.serialize(object.public,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Page deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageBuilder();

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
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(PageStatusEnum)) as PageStatusEnum;
          break;
        case 'cname':
          result.cname = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'custom_404':
          result.custom404 = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'source':
          result.source_.replace(serializers.deserialize(value,
                  specifiedType: const FullType(PagesSourceHash))
              as PagesSourceHash);
          break;
        case 'public':
          result.public = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$PageStatusEnumSerializer
    implements PrimitiveSerializer<PageStatusEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'built': 'built',
    'building': 'building',
    'errored': 'errored',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'built': 'built',
    'building': 'building',
    'errored': 'errored',
  };

  @override
  final Iterable<Type> types = const <Type>[PageStatusEnum];
  @override
  final String wireName = 'PageStatusEnum';

  @override
  Object serialize(Serializers serializers, PageStatusEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  PageStatusEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      PageStatusEnum.valueOf(_fromWire[serialized] ?? serialized as String);
}

class _$Page extends Page {
  @override
  final String url;
  @override
  final PageStatusEnum status;
  @override
  final String cname;
  @override
  final bool custom404;
  @override
  final String htmlUrl;
  @override
  final PagesSourceHash source_;
  @override
  final bool public;

  factory _$Page([void Function(PageBuilder) updates]) =>
      (new PageBuilder()..update(updates)).build();

  _$Page._(
      {this.url,
      this.status,
      this.cname,
      this.custom404,
      this.htmlUrl,
      this.source_,
      this.public})
      : super._();

  @override
  Page rebuild(void Function(PageBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageBuilder toBuilder() => new PageBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Page &&
        url == other.url &&
        status == other.status &&
        cname == other.cname &&
        custom404 == other.custom404 &&
        htmlUrl == other.htmlUrl &&
        source_ == other.source_ &&
        public == other.public;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, url.hashCode), status.hashCode),
                        cname.hashCode),
                    custom404.hashCode),
                htmlUrl.hashCode),
            source_.hashCode),
        public.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Page')
          ..add('url', url)
          ..add('status', status)
          ..add('cname', cname)
          ..add('custom404', custom404)
          ..add('htmlUrl', htmlUrl)
          ..add('source_', source_)
          ..add('public', public))
        .toString();
  }
}

class PageBuilder implements Builder<Page, PageBuilder> {
  _$Page _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  PageStatusEnum _status;
  PageStatusEnum get status => _$this._status;
  set status(PageStatusEnum status) => _$this._status = status;

  String _cname;
  String get cname => _$this._cname;
  set cname(String cname) => _$this._cname = cname;

  bool _custom404;
  bool get custom404 => _$this._custom404;
  set custom404(bool custom404) => _$this._custom404 = custom404;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  PagesSourceHashBuilder _source_;
  PagesSourceHashBuilder get source_ =>
      _$this._source_ ??= new PagesSourceHashBuilder();
  set source_(PagesSourceHashBuilder source_) => _$this._source_ = source_;

  bool _public;
  bool get public => _$this._public;
  set public(bool public) => _$this._public = public;

  PageBuilder() {
    Page._initializeBuilder(this);
  }

  PageBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _status = _$v.status;
      _cname = _$v.cname;
      _custom404 = _$v.custom404;
      _htmlUrl = _$v.htmlUrl;
      _source_ = _$v.source_?.toBuilder();
      _public = _$v.public;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Page other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Page;
  }

  @override
  void update(void Function(PageBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Page build() {
    _$Page _$result;
    try {
      _$result = _$v ??
          new _$Page._(
              url: url,
              status: status,
              cname: cname,
              custom404: custom404,
              htmlUrl: htmlUrl,
              source_: _source_?.build(),
              public: public);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'source_';
        _source_?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Page', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
