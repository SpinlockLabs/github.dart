// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object7.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject7> _$inlineObject7Serializer =
    new _$InlineObject7Serializer();

class _$InlineObject7Serializer implements StructuredSerializer<InlineObject7> {
  @override
  final Iterable<Type> types = const [InlineObject7, _$InlineObject7];
  @override
  final String wireName = 'InlineObject7';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject7 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.clientId != null) {
      result
        ..add('client_id')
        ..add(serializers.serialize(object.clientId,
            specifiedType: const FullType(String)));
    }
    if (object.clientSecret != null) {
      result
        ..add('client_secret')
        ..add(serializers.serialize(object.clientSecret,
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
  InlineObject7 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject7Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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
        case 'client_id':
          result.clientId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'client_secret':
          result.clientSecret = serializers.deserialize(value,
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

class _$InlineObject7 extends InlineObject7 {
  @override
  final BuiltList<String> scopes;
  @override
  final String note;
  @override
  final String noteUrl;
  @override
  final String clientId;
  @override
  final String clientSecret;
  @override
  final String fingerprint;

  factory _$InlineObject7([void Function(InlineObject7Builder) updates]) =>
      (new InlineObject7Builder()..update(updates)).build();

  _$InlineObject7._(
      {this.scopes,
      this.note,
      this.noteUrl,
      this.clientId,
      this.clientSecret,
      this.fingerprint})
      : super._();

  @override
  InlineObject7 rebuild(void Function(InlineObject7Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject7Builder toBuilder() => new InlineObject7Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject7 &&
        scopes == other.scopes &&
        note == other.note &&
        noteUrl == other.noteUrl &&
        clientId == other.clientId &&
        clientSecret == other.clientSecret &&
        fingerprint == other.fingerprint;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, scopes.hashCode), note.hashCode),
                    noteUrl.hashCode),
                clientId.hashCode),
            clientSecret.hashCode),
        fingerprint.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject7')
          ..add('scopes', scopes)
          ..add('note', note)
          ..add('noteUrl', noteUrl)
          ..add('clientId', clientId)
          ..add('clientSecret', clientSecret)
          ..add('fingerprint', fingerprint))
        .toString();
  }
}

class InlineObject7Builder
    implements Builder<InlineObject7, InlineObject7Builder> {
  _$InlineObject7 _$v;

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

  String _clientId;
  String get clientId => _$this._clientId;
  set clientId(String clientId) => _$this._clientId = clientId;

  String _clientSecret;
  String get clientSecret => _$this._clientSecret;
  set clientSecret(String clientSecret) => _$this._clientSecret = clientSecret;

  String _fingerprint;
  String get fingerprint => _$this._fingerprint;
  set fingerprint(String fingerprint) => _$this._fingerprint = fingerprint;

  InlineObject7Builder() {
    InlineObject7._initializeBuilder(this);
  }

  InlineObject7Builder get _$this {
    if (_$v != null) {
      _scopes = _$v.scopes?.toBuilder();
      _note = _$v.note;
      _noteUrl = _$v.noteUrl;
      _clientId = _$v.clientId;
      _clientSecret = _$v.clientSecret;
      _fingerprint = _$v.fingerprint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject7 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject7;
  }

  @override
  void update(void Function(InlineObject7Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject7 build() {
    _$InlineObject7 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject7._(
              scopes: _scopes?.build(),
              note: note,
              noteUrl: noteUrl,
              clientId: clientId,
              clientSecret: clientSecret,
              fingerprint: fingerprint);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'scopes';
        _scopes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject7', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
