// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'content_tree_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ContentTreeLinks> _$contentTreeLinksSerializer =
    new _$ContentTreeLinksSerializer();

class _$ContentTreeLinksSerializer
    implements StructuredSerializer<ContentTreeLinks> {
  @override
  final Iterable<Type> types = const [ContentTreeLinks, _$ContentTreeLinks];
  @override
  final String wireName = 'ContentTreeLinks';

  @override
  Iterable<Object> serialize(Serializers serializers, ContentTreeLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.git != null) {
      result
        ..add('git')
        ..add(serializers.serialize(object.git,
            specifiedType: const FullType(String)));
    }
    if (object.html != null) {
      result
        ..add('html')
        ..add(serializers.serialize(object.html,
            specifiedType: const FullType(String)));
    }
    if (object.self != null) {
      result
        ..add('self')
        ..add(serializers.serialize(object.self,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ContentTreeLinks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ContentTreeLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'git':
          result.git = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html':
          result.html = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'self':
          result.self = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ContentTreeLinks extends ContentTreeLinks {
  @override
  final String git;
  @override
  final String html;
  @override
  final String self;

  factory _$ContentTreeLinks(
          [void Function(ContentTreeLinksBuilder) updates]) =>
      (new ContentTreeLinksBuilder()..update(updates)).build();

  _$ContentTreeLinks._({this.git, this.html, this.self}) : super._();

  @override
  ContentTreeLinks rebuild(void Function(ContentTreeLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ContentTreeLinksBuilder toBuilder() =>
      new ContentTreeLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ContentTreeLinks &&
        git == other.git &&
        html == other.html &&
        self == other.self;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, git.hashCode), html.hashCode), self.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('ContentTreeLinks')
          ..add('git', git)
          ..add('html', html)
          ..add('self', self))
        .toString();
  }
}

class ContentTreeLinksBuilder
    implements Builder<ContentTreeLinks, ContentTreeLinksBuilder> {
  _$ContentTreeLinks _$v;

  String _git;
  String get git => _$this._git;
  set git(String git) => _$this._git = git;

  String _html;
  String get html => _$this._html;
  set html(String html) => _$this._html = html;

  String _self;
  String get self => _$this._self;
  set self(String self) => _$this._self = self;

  ContentTreeLinksBuilder() {
    ContentTreeLinks._initializeBuilder(this);
  }

  ContentTreeLinksBuilder get _$this {
    if (_$v != null) {
      _git = _$v.git;
      _html = _$v.html;
      _self = _$v.self;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ContentTreeLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ContentTreeLinks;
  }

  @override
  void update(void Function(ContentTreeLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ContentTreeLinks build() {
    final _$result =
        _$v ?? new _$ContentTreeLinks._(git: git, html: html, self: self);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
