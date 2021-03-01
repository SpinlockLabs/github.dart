// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'page_build_error.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PageBuildError> _$pageBuildErrorSerializer =
    new _$PageBuildErrorSerializer();

class _$PageBuildErrorSerializer
    implements StructuredSerializer<PageBuildError> {
  @override
  final Iterable<Type> types = const [PageBuildError, _$PageBuildError];
  @override
  final String wireName = 'PageBuildError';

  @override
  Iterable<Object> serialize(Serializers serializers, PageBuildError object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.message != null) {
      result
        ..add('message')
        ..add(serializers.serialize(object.message,
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  PageBuildError deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PageBuildErrorBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$PageBuildError extends PageBuildError {
  @override
  final String message;

  factory _$PageBuildError([void Function(PageBuildErrorBuilder) updates]) =>
      (new PageBuildErrorBuilder()..update(updates)).build();

  _$PageBuildError._({this.message}) : super._();

  @override
  PageBuildError rebuild(void Function(PageBuildErrorBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PageBuildErrorBuilder toBuilder() =>
      new PageBuildErrorBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PageBuildError && message == other.message;
  }

  @override
  int get hashCode {
    return $jf($jc(0, message.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PageBuildError')
          ..add('message', message))
        .toString();
  }
}

class PageBuildErrorBuilder
    implements Builder<PageBuildError, PageBuildErrorBuilder> {
  _$PageBuildError _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  PageBuildErrorBuilder() {
    PageBuildError._initializeBuilder(this);
  }

  PageBuildErrorBuilder get _$this {
    if (_$v != null) {
      _message = _$v.message;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PageBuildError other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$PageBuildError;
  }

  @override
  void update(void Function(PageBuildErrorBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PageBuildError build() {
    final _$result = _$v ?? new _$PageBuildError._(message: message);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
