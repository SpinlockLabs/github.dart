// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'link_with_type.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<LinkWithType> _$linkWithTypeSerializer =
    new _$LinkWithTypeSerializer();

class _$LinkWithTypeSerializer implements StructuredSerializer<LinkWithType> {
  @override
  final Iterable<Type> types = const [LinkWithType, _$LinkWithType];
  @override
  final String wireName = 'LinkWithType';

  @override
  Iterable<Object> serialize(Serializers serializers, LinkWithType object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.href != null) {
      result
        ..add('href')
        ..add(serializers.serialize(object.href,
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
  LinkWithType deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LinkWithTypeBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'href':
          result.href = serializers.deserialize(value,
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

class _$LinkWithType extends LinkWithType {
  @override
  final String href;
  @override
  final String type;

  factory _$LinkWithType([void Function(LinkWithTypeBuilder) updates]) =>
      (new LinkWithTypeBuilder()..update(updates)).build();

  _$LinkWithType._({this.href, this.type}) : super._();

  @override
  LinkWithType rebuild(void Function(LinkWithTypeBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LinkWithTypeBuilder toBuilder() => new LinkWithTypeBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is LinkWithType && href == other.href && type == other.type;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, href.hashCode), type.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('LinkWithType')
          ..add('href', href)
          ..add('type', type))
        .toString();
  }
}

class LinkWithTypeBuilder
    implements Builder<LinkWithType, LinkWithTypeBuilder> {
  _$LinkWithType _$v;

  String _href;
  String get href => _$this._href;
  set href(String href) => _$this._href = href;

  String _type;
  String get type => _$this._type;
  set type(String type) => _$this._type = type;

  LinkWithTypeBuilder() {
    LinkWithType._initializeBuilder(this);
  }

  LinkWithTypeBuilder get _$this {
    if (_$v != null) {
      _href = _$v.href;
      _type = _$v.type;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(LinkWithType other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$LinkWithType;
  }

  @override
  void update(void Function(LinkWithTypeBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$LinkWithType build() {
    final _$result = _$v ?? new _$LinkWithType._(href: href, type: type);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
