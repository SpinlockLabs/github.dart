// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'label.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Label> _$labelSerializer = new _$LabelSerializer();

class _$LabelSerializer implements StructuredSerializer<Label> {
  @override
  final Iterable<Type> types = const [Label, _$Label];
  @override
  final String wireName = 'Label';

  @override
  Iterable<Object> serialize(Serializers serializers, Label object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.nodeId != null) {
      result
        ..add('node_id')
        ..add(serializers.serialize(object.nodeId,
            specifiedType: const FullType(String)));
    }
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.color != null) {
      result
        ..add('color')
        ..add(serializers.serialize(object.color,
            specifiedType: const FullType(String)));
    }
    if (object.default_ != null) {
      result
        ..add('default')
        ..add(serializers.serialize(object.default_,
            specifiedType: const FullType(bool)));
    }
    return result;
  }

  @override
  Label deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new LabelBuilder();

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
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'color':
          result.color = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'default':
          result.default_ = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
      }
    }

    return result.build();
  }
}

class _$Label extends Label {
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final String url;
  @override
  final String name;
  @override
  final String description;
  @override
  final String color;
  @override
  final bool default_;

  factory _$Label([void Function(LabelBuilder) updates]) =>
      (new LabelBuilder()..update(updates)).build();

  _$Label._(
      {this.id,
      this.nodeId,
      this.url,
      this.name,
      this.description,
      this.color,
      this.default_})
      : super._();

  @override
  Label rebuild(void Function(LabelBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  LabelBuilder toBuilder() => new LabelBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Label &&
        id == other.id &&
        nodeId == other.nodeId &&
        url == other.url &&
        name == other.name &&
        description == other.description &&
        color == other.color &&
        default_ == other.default_;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, id.hashCode), nodeId.hashCode),
                        url.hashCode),
                    name.hashCode),
                description.hashCode),
            color.hashCode),
        default_.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Label')
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('url', url)
          ..add('name', name)
          ..add('description', description)
          ..add('color', color)
          ..add('default_', default_))
        .toString();
  }
}

class LabelBuilder implements Builder<Label, LabelBuilder> {
  _$Label _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _color;
  String get color => _$this._color;
  set color(String color) => _$this._color = color;

  bool _default_;
  bool get default_ => _$this._default_;
  set default_(bool default_) => _$this._default_ = default_;

  LabelBuilder() {
    Label._initializeBuilder(this);
  }

  LabelBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _url = _$v.url;
      _name = _$v.name;
      _description = _$v.description;
      _color = _$v.color;
      _default_ = _$v.default_;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Label other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Label;
  }

  @override
  void update(void Function(LabelBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Label build() {
    final _$result = _$v ??
        new _$Label._(
            id: id,
            nodeId: nodeId,
            url: url,
            name: name,
            description: description,
            color: color,
            default_: default_);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
