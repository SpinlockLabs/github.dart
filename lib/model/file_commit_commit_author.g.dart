// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'file_commit_commit_author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FileCommitCommitAuthor> _$fileCommitCommitAuthorSerializer =
    new _$FileCommitCommitAuthorSerializer();

class _$FileCommitCommitAuthorSerializer
    implements StructuredSerializer<FileCommitCommitAuthor> {
  @override
  final Iterable<Type> types = const [
    FileCommitCommitAuthor,
    _$FileCommitCommitAuthor
  ];
  @override
  final String wireName = 'FileCommitCommitAuthor';

  @override
  Iterable<Object> serialize(
      Serializers serializers, FileCommitCommitAuthor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.date != null) {
      result
        ..add('date')
        ..add(serializers.serialize(object.date,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  FileCommitCommitAuthor deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FileCommitCommitAuthorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$FileCommitCommitAuthor extends FileCommitCommitAuthor {
  @override
  final String date;
  @override
  final String name;
  @override
  final String email;

  factory _$FileCommitCommitAuthor(
          [void Function(FileCommitCommitAuthorBuilder) updates]) =>
      (new FileCommitCommitAuthorBuilder()..update(updates)).build();

  _$FileCommitCommitAuthor._({this.date, this.name, this.email}) : super._();

  @override
  FileCommitCommitAuthor rebuild(
          void Function(FileCommitCommitAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FileCommitCommitAuthorBuilder toBuilder() =>
      new FileCommitCommitAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FileCommitCommitAuthor &&
        date == other.date &&
        name == other.name &&
        email == other.email;
  }

  @override
  int get hashCode {
    return $jf($jc($jc($jc(0, date.hashCode), name.hashCode), email.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FileCommitCommitAuthor')
          ..add('date', date)
          ..add('name', name)
          ..add('email', email))
        .toString();
  }
}

class FileCommitCommitAuthorBuilder
    implements Builder<FileCommitCommitAuthor, FileCommitCommitAuthorBuilder> {
  _$FileCommitCommitAuthor _$v;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  FileCommitCommitAuthorBuilder() {
    FileCommitCommitAuthor._initializeBuilder(this);
  }

  FileCommitCommitAuthorBuilder get _$this {
    if (_$v != null) {
      _date = _$v.date;
      _name = _$v.name;
      _email = _$v.email;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FileCommitCommitAuthor other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$FileCommitCommitAuthor;
  }

  @override
  void update(void Function(FileCommitCommitAuthorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FileCommitCommitAuthor build() {
    final _$result = _$v ??
        new _$FileCommitCommitAuthor._(date: date, name: name, email: email);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
