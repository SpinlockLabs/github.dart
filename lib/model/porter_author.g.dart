// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'porter_author.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PorterAuthor> _$porterAuthorSerializer =
    new _$PorterAuthorSerializer();

class _$PorterAuthorSerializer implements StructuredSerializer<PorterAuthor> {
  @override
  final Iterable<Type> types = const [PorterAuthor, _$PorterAuthor];
  @override
  final String wireName = 'PorterAuthor';

  @override
  Iterable<Object> serialize(Serializers serializers, PorterAuthor object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.remoteId != null) {
      result
        ..add('remote_id')
        ..add(serializers.serialize(object.remoteId,
            specifiedType: const FullType(String)));
    }
    if (object.remoteName != null) {
      result
        ..add('remote_name')
        ..add(serializers.serialize(object.remoteName,
            specifiedType: const FullType(String)));
    }
    if (object.email != null) {
      result
        ..add('email')
        ..add(serializers.serialize(object.email,
            specifiedType: const FullType(String)));
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
    if (object.importUrl != null) {
      result
        ..add('import_url')
        ..add(serializers.serialize(object.importUrl,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PorterAuthor deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PorterAuthorBuilder();

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
        case 'remote_id':
          result.remoteId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'remote_name':
          result.remoteName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'import_url':
          result.importUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PorterAuthor extends PorterAuthor {
  @override
  final int id;
  @override
  final String remoteId;
  @override
  final String remoteName;
  @override
  final String email;
  @override
  final String name;
  @override
  final String url;
  @override
  final String importUrl;

  factory _$PorterAuthor([void Function(PorterAuthorBuilder) updates]) =>
      (new PorterAuthorBuilder()..update(updates)).build();

  _$PorterAuthor._(
      {this.id,
      this.remoteId,
      this.remoteName,
      this.email,
      this.name,
      this.url,
      this.importUrl})
      : super._();

  @override
  PorterAuthor rebuild(void Function(PorterAuthorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PorterAuthorBuilder toBuilder() => new PorterAuthorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PorterAuthor &&
        id == other.id &&
        remoteId == other.remoteId &&
        remoteName == other.remoteName &&
        email == other.email &&
        name == other.name &&
        url == other.url &&
        importUrl == other.importUrl;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), remoteId.hashCode),
                        remoteName.hashCode),
                    email.hashCode),
                name.hashCode),
            url.hashCode),
        importUrl.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PorterAuthor')
          ..add('id', id)
          ..add('remoteId', remoteId)
          ..add('remoteName', remoteName)
          ..add('email', email)
          ..add('name', name)
          ..add('url', url)
          ..add('importUrl', importUrl))
        .toString();
  }
}

class PorterAuthorBuilder
    implements Builder<PorterAuthor, PorterAuthorBuilder> {
  _$PorterAuthor _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _remoteId;
  String get remoteId => _$this._remoteId;
  set remoteId(String remoteId) => _$this._remoteId = remoteId;

  String _remoteName;
  String get remoteName => _$this._remoteName;
  set remoteName(String remoteName) => _$this._remoteName = remoteName;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _importUrl;
  String get importUrl => _$this._importUrl;
  set importUrl(String importUrl) => _$this._importUrl = importUrl;

  PorterAuthorBuilder() {
    PorterAuthor._initializeBuilder(this);
  }

  PorterAuthorBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _remoteId = _$v.remoteId;
      _remoteName = _$v.remoteName;
      _email = _$v.email;
      _name = _$v.name;
      _url = _$v.url;
      _importUrl = _$v.importUrl;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PorterAuthor other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PorterAuthor;
  }

  @override
  void update(void Function(PorterAuthorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PorterAuthor build() {
    final _$result = _$v ??
        new _$PorterAuthor._(
            id: id,
            remoteId: remoteId,
            remoteName: remoteName,
            email: email,
            name: name,
            url: url,
            importUrl: importUrl);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
