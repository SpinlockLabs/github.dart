// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'file_commit_content_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FileCommitContentLinks> _$fileCommitContentLinksSerializer =
    new _$FileCommitContentLinksSerializer();

class _$FileCommitContentLinksSerializer
    implements StructuredSerializer<FileCommitContentLinks> {
  @override
  final Iterable<Type> types = const [
    FileCommitContentLinks,
    _$FileCommitContentLinks
  ];
  @override
  final String wireName = 'FileCommitContentLinks';

  @override
  Iterable<Object> serialize(
      Serializers serializers, FileCommitContentLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.self != null) {
      result
        ..add('self')
        ..add(serializers.serialize(object.self,
            specifiedType: const FullType(String)));
    }
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
    return result;
  }

  @override
  FileCommitContentLinks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FileCommitContentLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'self':
          result.self = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'git':
          result.git = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html':
          result.html = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FileCommitContentLinks extends FileCommitContentLinks {
  @override
  final String self;
  @override
  final String git;
  @override
  final String html;

  factory _$FileCommitContentLinks(
          [void Function(FileCommitContentLinksBuilder) updates]) =>
      (new FileCommitContentLinksBuilder()..update(updates)).build();

  _$FileCommitContentLinks._({this.self, this.git, this.html}) : super._();

  @override
  FileCommitContentLinks rebuild(
          void Function(FileCommitContentLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileCommitContentLinksBuilder toBuilder() =>
      new FileCommitContentLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileCommitContentLinks &&
        self == other.self &&
        git == other.git &&
        html == other.html;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, self.hashCode), git.hashCode), html.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FileCommitContentLinks')
          ..add('self', self)
          ..add('git', git)
          ..add('html', html))
        .toString();
  }
}

class FileCommitContentLinksBuilder
    implements Builder<FileCommitContentLinks, FileCommitContentLinksBuilder> {
  _$FileCommitContentLinks _$v;

  String _self;
  String get self => _$this._self;
  set self(String self) => _$this._self = self;

  String _git;
  String get git => _$this._git;
  set git(String git) => _$this._git = git;

  String _html;
  String get html => _$this._html;
  set html(String html) => _$this._html = html;

  FileCommitContentLinksBuilder() {
    FileCommitContentLinks._initializeBuilder(this);
  }

  FileCommitContentLinksBuilder get _$this {
    if (_$v != null) {
      _self = _$v.self;
      _git = _$v.git;
      _html = _$v.html;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileCommitContentLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FileCommitContentLinks;
  }

  @override
  void update(void Function(FileCommitContentLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FileCommitContentLinks build() {
    final _$result =
        _$v ?? new _$FileCommitContentLinks._(self: self, git: git, html: html);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
