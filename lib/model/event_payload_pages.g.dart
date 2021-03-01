// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'event_payload_pages.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventPayloadPages> _$eventPayloadPagesSerializer =
    new _$EventPayloadPagesSerializer();

class _$EventPayloadPagesSerializer
    implements StructuredSerializer<EventPayloadPages> {
  @override
  final Iterable<Type> types = const [EventPayloadPages, _$EventPayloadPages];
  @override
  final String wireName = 'EventPayloadPages';

  @override
  Iterable<Object> serialize(Serializers serializers, EventPayloadPages object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.pageName != null) {
      result
        ..add('page_name')
        ..add(serializers.serialize(object.pageName,
            specifiedType: const FullType(String)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.summary != null) {
      result
        ..add('summary')
        ..add(serializers.serialize(object.summary,
            specifiedType: const FullType(String)));
    }
    if (object.action != null) {
      result
        ..add('action')
        ..add(serializers.serialize(object.action,
            specifiedType: const FullType(String)));
    }
    if (object.sha != null) {
      result
        ..add('sha')
        ..add(serializers.serialize(object.sha,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  EventPayloadPages deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventPayloadPagesBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'page_name':
          result.pageName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'summary':
          result.summary = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'action':
          result.action = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'sha':
          result.sha = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$EventPayloadPages extends EventPayloadPages {
  @override
  final String pageName;
  @override
  final String title;
  @override
  final String summary;
  @override
  final String action;
  @override
  final String sha;
  @override
  final String htmlUrl;

  factory _$EventPayloadPages(
          [void Function(EventPayloadPagesBuilder) updates]) =>
      (new EventPayloadPagesBuilder()..update(updates)).build();

  _$EventPayloadPages._(
      {this.pageName,
      this.title,
      this.summary,
      this.action,
      this.sha,
      this.htmlUrl})
      : super._();

  @override
  EventPayloadPages rebuild(void Function(EventPayloadPagesBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventPayloadPagesBuilder toBuilder() =>
      new EventPayloadPagesBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventPayloadPages &&
        pageName == other.pageName &&
        title == other.title &&
        summary == other.summary &&
        action == other.action &&
        sha == other.sha &&
        htmlUrl == other.htmlUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, pageName.hashCode), title.hashCode),
                    summary.hashCode),
                action.hashCode),
            sha.hashCode),
        htmlUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventPayloadPages')
          ..add('pageName', pageName)
          ..add('title', title)
          ..add('summary', summary)
          ..add('action', action)
          ..add('sha', sha)
          ..add('htmlUrl', htmlUrl))
        .toString();
  }
}

class EventPayloadPagesBuilder
    implements Builder<EventPayloadPages, EventPayloadPagesBuilder> {
  _$EventPayloadPages _$v;

  String _pageName;
  String get pageName => _$this._pageName;
  set pageName(String pageName) => _$this._pageName = pageName;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _summary;
  String get summary => _$this._summary;
  set summary(String summary) => _$this._summary = summary;

  String _action;
  String get action => _$this._action;
  set action(String action) => _$this._action = action;

  String _sha;
  String get sha => _$this._sha;
  set sha(String sha) => _$this._sha = sha;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  EventPayloadPagesBuilder() {
    EventPayloadPages._initializeBuilder(this);
  }

  EventPayloadPagesBuilder get _$this {
    if (_$v != null) {
      _pageName = _$v.pageName;
      _title = _$v.title;
      _summary = _$v.summary;
      _action = _$v.action;
      _sha = _$v.sha;
      _htmlUrl = _$v.htmlUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventPayloadPages other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$EventPayloadPages;
  }

  @override
  void update(void Function(EventPayloadPagesBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventPayloadPages build() {
    final _$result = _$v ??
        new _$EventPayloadPages._(
            pageName: pageName,
            title: title,
            summary: summary,
            action: action,
            sha: sha,
            htmlUrl: htmlUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
