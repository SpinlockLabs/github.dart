// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'page_build_status.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PageBuildStatus> _$pageBuildStatusSerializer =
    new _$PageBuildStatusSerializer();

class _$PageBuildStatusSerializer
    implements StructuredSerializer<PageBuildStatus> {
  @override
  final Iterable<Type> types = const [PageBuildStatus, _$PageBuildStatus];
  @override
  final String wireName = 'PageBuildStatus';

  @override
  Iterable<Object> serialize(Serializers serializers, PageBuildStatus object,
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
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PageBuildStatus deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageBuildStatusBuilder();

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
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PageBuildStatus extends PageBuildStatus {
  @override
  final String url;
  @override
  final String status;

  factory _$PageBuildStatus([void Function(PageBuildStatusBuilder) updates]) =>
      (new PageBuildStatusBuilder()..update(updates)).build();

  _$PageBuildStatus._({this.url, this.status}) : super._();

  @override
  PageBuildStatus rebuild(void Function(PageBuildStatusBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageBuildStatusBuilder toBuilder() =>
      new PageBuildStatusBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageBuildStatus &&
        url == other.url &&
        status == other.status;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, url.hashCode), status.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PageBuildStatus')
          ..add('url', url)
          ..add('status', status))
        .toString();
  }
}

class PageBuildStatusBuilder
    implements Builder<PageBuildStatus, PageBuildStatusBuilder> {
  _$PageBuildStatus _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  PageBuildStatusBuilder() {
    PageBuildStatus._initializeBuilder(this);
  }

  PageBuildStatusBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _status = _$v.status;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageBuildStatus other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PageBuildStatus;
  }

  @override
  void update(void Function(PageBuildStatusBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PageBuildStatus build() {
    final _$result = _$v ?? new _$PageBuildStatus._(url: url, status: status);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
