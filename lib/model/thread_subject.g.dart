// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'thread_subject.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ThreadSubject> _$threadSubjectSerializer =
    new _$ThreadSubjectSerializer();

class _$ThreadSubjectSerializer implements StructuredSerializer<ThreadSubject> {
  @override
  final Iterable<Type> types = const [ThreadSubject, _$ThreadSubject];
  @override
  final String wireName = 'ThreadSubject';

  @override
  Iterable<Object> serialize(Serializers serializers, ThreadSubject object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.latestCommentUrl != null) {
      result
        ..add('latest_comment_url')
        ..add(serializers.serialize(object.latestCommentUrl,
            specifiedType: const FullType(String)));
    }
    if (object.type != null) {
      result
        ..add('type')
        ..add(serializers.serialize(object.type,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ThreadSubject deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ThreadSubjectBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'latest_comment_url':
          result.latestCommentUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'type':
          result.type = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ThreadSubject extends ThreadSubject {
  @override
  final String title;
  @override
  final String url;
  @override
  final String latestCommentUrl;
  @override
  final String type;

  factory _$ThreadSubject([void Function(ThreadSubjectBuilder) updates]) =>
      (new ThreadSubjectBuilder()..update(updates)).build();

  _$ThreadSubject._({this.title, this.url, this.latestCommentUrl, this.type})
      : super._();

  @override
  ThreadSubject rebuild(void Function(ThreadSubjectBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ThreadSubjectBuilder toBuilder() => new ThreadSubjectBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ThreadSubject &&
        title == other.title &&
        url == other.url &&
        latestCommentUrl == other.latestCommentUrl &&
        type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, title.hashCode), url.hashCode),
            latestCommentUrl.hashCode),
        type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ThreadSubject')
          ..add('title', title)
          ..add('url', url)
          ..add('latestCommentUrl', latestCommentUrl)
          ..add('type', type))
        .toString();
  }
}

class ThreadSubjectBuilder
    implements Builder<ThreadSubject, ThreadSubjectBuilder> {
  _$ThreadSubject _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _latestCommentUrl;
  String get latestCommentUrl => _$this._latestCommentUrl;
  set latestCommentUrl(String latestCommentUrl) =>
      _$this._latestCommentUrl = latestCommentUrl;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  ThreadSubjectBuilder() {
    ThreadSubject._initializeBuilder(this);
  }

  ThreadSubjectBuilder get _$this {
    if (_$v != null) {
      _title = _$v.title;
      _url = _$v.url;
      _latestCommentUrl = _$v.latestCommentUrl;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ThreadSubject other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ThreadSubject;
  }

  @override
  void update(void Function(ThreadSubjectBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ThreadSubject build() {
    final _$result = _$v ??
        new _$ThreadSubject._(
            title: title,
            url: url,
            latestCommentUrl: latestCommentUrl,
            type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
