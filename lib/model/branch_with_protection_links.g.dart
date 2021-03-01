// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'branch_with_protection_links.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<BranchWithProtectionLinks> _$branchWithProtectionLinksSerializer =
    new _$BranchWithProtectionLinksSerializer();

class _$BranchWithProtectionLinksSerializer
    implements StructuredSerializer<BranchWithProtectionLinks> {
  @override
  final Iterable<Type> types = const [
    BranchWithProtectionLinks,
    _$BranchWithProtectionLinks
  ];
  @override
  final String wireName = 'BranchWithProtectionLinks';

  @override
  Iterable<Object> serialize(
      Serializers serializers, BranchWithProtectionLinks object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
  BranchWithProtectionLinks deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new BranchWithProtectionLinksBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
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

class _$BranchWithProtectionLinks extends BranchWithProtectionLinks {
  @override
  final String html;
  @override
  final String self;

  factory _$BranchWithProtectionLinks(
          [void Function(BranchWithProtectionLinksBuilder) updates]) =>
      (new BranchWithProtectionLinksBuilder()..update(updates)).build();

  _$BranchWithProtectionLinks._({this.html, this.self}) : super._();

  @override
  BranchWithProtectionLinks rebuild(
          void Function(BranchWithProtectionLinksBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  BranchWithProtectionLinksBuilder toBuilder() =>
      new BranchWithProtectionLinksBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is BranchWithProtectionLinks &&
        html == other.html &&
        self == other.self;
  }

  @override
  int get hashCode {
    return $jf($jc($jc(0, html.hashCode), self.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('BranchWithProtectionLinks')
          ..add('html', html)
          ..add('self', self))
        .toString();
  }
}

class BranchWithProtectionLinksBuilder
    implements
        Builder<BranchWithProtectionLinks, BranchWithProtectionLinksBuilder> {
  _$BranchWithProtectionLinks _$v;

  String _html;
  String get html => _$this._html;
  set html(String html) => _$this._html = html;

  String _self;
  String get self => _$this._self;
  set self(String self) => _$this._self = self;

  BranchWithProtectionLinksBuilder() {
    BranchWithProtectionLinks._initializeBuilder(this);
  }

  BranchWithProtectionLinksBuilder get _$this {
    if (_$v != null) {
      _html = _$v.html;
      _self = _$v.self;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(BranchWithProtectionLinks other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$BranchWithProtectionLinks;
  }

  @override
  void update(void Function(BranchWithProtectionLinksBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$BranchWithProtectionLinks build() {
    final _$result =
        _$v ?? new _$BranchWithProtectionLinks._(html: html, self: self);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
