// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'gitignore_template.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<GitignoreTemplate> _$gitignoreTemplateSerializer =
    new _$GitignoreTemplateSerializer();

class _$GitignoreTemplateSerializer
    implements StructuredSerializer<GitignoreTemplate> {
  @override
  final Iterable<Type> types = const [GitignoreTemplate, _$GitignoreTemplate];
  @override
  final String wireName = 'GitignoreTemplate';

  @override
  Iterable<Object> serialize(Serializers serializers, GitignoreTemplate object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.source_ != null) {
      result
        ..add('source')
        ..add(serializers.serialize(object.source_,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  GitignoreTemplate deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new GitignoreTemplateBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'source':
          result.source_ = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$GitignoreTemplate extends GitignoreTemplate {
  @override
  final String name;
  @override
  final String source_;

  factory _$GitignoreTemplate(
          [void Function(GitignoreTemplateBuilder) updates]) =>
      (new GitignoreTemplateBuilder()..update(updates)).build();

  _$GitignoreTemplate._({this.name, this.source_}) : super._();

  @override
  GitignoreTemplate rebuild(void Function(GitignoreTemplateBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  GitignoreTemplateBuilder toBuilder() =>
      new GitignoreTemplateBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is GitignoreTemplate &&
        name == other.name &&
        source_ == other.source_;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, name.hashCode), source_.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('GitignoreTemplate')
          ..add('name', name)
          ..add('source_', source_))
        .toString();
  }
}

class GitignoreTemplateBuilder
    implements Builder<GitignoreTemplate, GitignoreTemplateBuilder> {
  _$GitignoreTemplate _$v;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _source_;
  String get source_ => _$this._source_;
  set source_(String source_) => _$this._source_ = source_;

  GitignoreTemplateBuilder() {
    GitignoreTemplate._initializeBuilder(this);
  }

  GitignoreTemplateBuilder get _$this {
    if (_$v != null) {
      _name = _$v.name;
      _source_ = _$v.source_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(GitignoreTemplate other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$GitignoreTemplate;
  }

  @override
  void update(void Function(GitignoreTemplateBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$GitignoreTemplate build() {
    final _$result =
        _$v ?? new _$GitignoreTemplate._(name: name, source_: source_);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
