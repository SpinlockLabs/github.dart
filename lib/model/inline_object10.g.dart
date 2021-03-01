// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object10.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<InlineObject10> _$inlineObject10Serializer =
    new _$InlineObject10Serializer();

class _$InlineObject10Serializer
    implements StructuredSerializer<InlineObject10> {
  @override
  final Iterable<Type> types = const [InlineObject10, _$InlineObject10];
  @override
  final String wireName = 'InlineObject10';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject10 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.scopes != null) {
      result
        ..add('scopes')
        ..add(serializers.serialize(object.scopes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.addScopes != null) {
      result
        ..add('add_scopes')
        ..add(serializers.serialize(object.addScopes,
            specifiedType:
                const FullType(BuiltList, const [const FullType(String)])));
    }
    if (object.removeScopes != null) {
      result
        ..add('remove_scopes')
        ..add(serializers.serialize(object.removeScopes,
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
  InlineObject10 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject10Builder();

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
        case 'add_scopes':
          result.addScopes.replace(serializers.deserialize(value,
                  specifiedType:
                      const FullType(BuiltList, const [const FullType(String)]))
              as BuiltList<Object>);
          break;
        case 'remove_scopes':
          result.removeScopes.replace(serializers.deserialize(value,
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

class _$InlineObject10 extends InlineObject10 {
  @override
  final BuiltList<String> scopes;
  @override
  final BuiltList<String> addScopes;
  @override
  final BuiltList<String> removeScopes;
  @override
  final String note;
  @override
  final String noteUrl;
  @override
  final String fingerprint;

  factory _$InlineObject10([void Function(InlineObject10Builder) updates]) =>
      (new InlineObject10Builder()..update(updates)).build();

  _$InlineObject10._(
      {this.scopes,
      this.addScopes,
      this.removeScopes,
      this.note,
      this.noteUrl,
      this.fingerprint})
      : super._();

  @override
  InlineObject10 rebuild(void Function(InlineObject10Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject10Builder toBuilder() =>
      new InlineObject10Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject10 &&
        scopes == other.scopes &&
        addScopes == other.addScopes &&
        removeScopes == other.removeScopes &&
        note == other.note &&
        noteUrl == other.noteUrl &&
        fingerprint == other.fingerprint;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, scopes.hashCode), addScopes.hashCode),
                    removeScopes.hashCode),
                note.hashCode),
            noteUrl.hashCode),
        fingerprint.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject10')
          ..add('scopes', scopes)
          ..add('addScopes', addScopes)
          ..add('removeScopes', removeScopes)
          ..add('note', note)
          ..add('noteUrl', noteUrl)
          ..add('fingerprint', fingerprint))
        .toString();
  }
}

class InlineObject10Builder
    implements Builder<InlineObject10, InlineObject10Builder> {
  _$InlineObject10 _$v;

  ListBuilder<String> _scopes;
  ListBuilder<String> get scopes =>
      _$this._scopes ??= new ListBuilder<String>();
  set scopes(ListBuilder<String> scopes) => _$this._scopes = scopes;

  ListBuilder<String> _addScopes;
  ListBuilder<String> get addScopes =>
      _$this._addScopes ??= new ListBuilder<String>();
  set addScopes(ListBuilder<String> addScopes) => _$this._addScopes = addScopes;

  ListBuilder<String> _removeScopes;
  ListBuilder<String> get removeScopes =>
      _$this._removeScopes ??= new ListBuilder<String>();
  set removeScopes(ListBuilder<String> removeScopes) =>
      _$this._removeScopes = removeScopes;

  String _note;
  String get note => _$this._note;
  set note(String note) => _$this._note = note;

  String _noteUrl;
  String get noteUrl => _$this._noteUrl;
  set noteUrl(String noteUrl) => _$this._noteUrl = noteUrl;

  String _fingerprint;
  String get fingerprint => _$this._fingerprint;
  set fingerprint(String fingerprint) => _$this._fingerprint = fingerprint;

  InlineObject10Builder() {
    InlineObject10._initializeBuilder(this);
  }

  InlineObject10Builder get _$this {
    if (_$v != null) {
      _scopes = _$v.scopes?.toBuilder();
      _addScopes = _$v.addScopes?.toBuilder();
      _removeScopes = _$v.removeScopes?.toBuilder();
      _note = _$v.note;
      _noteUrl = _$v.noteUrl;
      _fingerprint = _$v.fingerprint;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject10 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject10;
  }

  @override
  void update(void Function(InlineObject10Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject10 build() {
    _$InlineObject10 _$result;
    try {
      _$result = _$v ??
          new _$InlineObject10._(
              scopes: _scopes?.build(),
              addScopes: _addScopes?.build(),
              removeScopes: _removeScopes?.build(),
              note: note,
              noteUrl: noteUrl,
              fingerprint: fingerprint);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'scopes';
        _scopes?.build();
        _$failedField = 'addScopes';
        _addScopes?.build();
        _$failedField = 'removeScopes';
        _removeScopes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'InlineObject10', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
