// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object8.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject8> _$inlineObject8Serializer =
    new _$InlineObject8Serializer();

class _$InlineObject8Serializer implements StructuredSerializer<InlineObject8> {
  @override
  final Iterable<Type> types = const [InlineObject8, _$InlineObject8];
  @override
  final String wireName = 'InlineObject8';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject8 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.clientSecret != null) {
      result
        ..add('client_secret')
        ..add(serializers.serialize(object.clientSecret,
            specifiedType: const FullType(String)));
    }
    if (object.scopes != null) {
      result
        ..add('scopes')
        ..add(serializers.serialize(object.scopes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.note != null) {
      result
        ..add('note')
        ..add(serializers.serialize(object.note,
            specifiedType: const FullType(String)));
    }
    if (object.noteUrl != null) {
      result
        ..add('note_url')
        ..add(serializers.serialize(object.noteUrl,
            specifiedType: const FullType(String)));
    }
    if (object.fingerprint != null) {
      result
        ..add('fingerprint')
        ..add(serializers.serialize(object.fingerprint,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  InlineObject8 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject8Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'client_secret':
          result.clientSecret = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'scopes':
          result.scopes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'note':
          result.note = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'note_url':
          result.noteUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'fingerprint':
          result.fingerprint = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject8 extends InlineObject8 {
  @override
  final String clientSecret;
  @override
  final BuiltList<String> scopes;
  @override
  final String note;
  @override
  final String noteUrl;
  @override
  final String fingerprint;

  factory _$InlineObject8([void Function(InlineObject8Builder) updates]) =>
      (new InlineObject8Builder()..update(updates)).build();

  _$InlineObject8._(
      {this.clientSecret,
      this.scopes,
      this.note,
      this.noteUrl,
      this.fingerprint})
      : super._();

  @override
  InlineObject8 rebuild(void Function(InlineObject8Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject8Builder toBuilder() => new InlineObject8Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject8 &&
        clientSecret == other.clientSecret &&
        scopes == other.scopes &&
        note == other.note &&
        noteUrl == other.noteUrl &&
        fingerprint == other.fingerprint;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc(0, clientSecret.hashCode), scopes.hashCode),
                note.hashCode),
            noteUrl.hashCode),
        fingerprint.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject8')
          ..add('clientSecret', clientSecret)
          ..add('scopes', scopes)
          ..add('note', note)
          ..add('noteUrl', noteUrl)
          ..add('fingerprint', fingerprint))
        .toString();
  }
}

class InlineObject8Builder
    implements Builder<InlineObject8, InlineObject8Builder> {
  _$InlineObject8 _$v;

  String _clientSecret;
  String get clientSecret => _$this._clientSecret;
  set clientSecret(String clientSecret) => _$this._clientSecret = clientSecret;

  ListBuilder<String> _scopes;
  ListBuilder<String> get scopes =>
      _$this._scopes ??= new ListBuilder<String>();
  set scopes(ListBuilder<String> scopes) => _$this._scopes = scopes;

  String _note;
  String get note => _$this._note;
  set note(String note) => _$this._note = note;

  String _noteUrl;
  String get noteUrl => _$this._noteUrl;
  set noteUrl(String noteUrl) => _$this._noteUrl = noteUrl;

  String _fingerprint;
  String get fingerprint => _$this._fingerprint;
  set fingerprint(String fingerprint) => _$this._fingerprint = fingerprint;

  InlineObject8Builder() {
    InlineObject8._initializeBuilder(this);
  }

  InlineObject8Builder get _$this {
    if (_$v != null) {
      _clientSecret = _$v.clientSecret;
      _scopes = _$v.scopes?.toBuilder();
      _note = _$v.note;
      _noteUrl = _$v.noteUrl;
      _fingerprint = _$v.fingerprint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject8 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject8;
  }

  @override
  void update(void Function(InlineObject8Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject8 build() {
    _$InlineObject8 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject8._(
              clientSecret: clientSecret,
              scopes: _scopes?.build(),
              note: note,
              noteUrl: noteUrl,
              fingerprint: fingerprint);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'scopes';
        _scopes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject8', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
