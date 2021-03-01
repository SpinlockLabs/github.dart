// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'inline_object135.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const InlineObject135SideEnum _$inlineObject135SideEnum_LEFT =
    const InlineObject135SideEnum._('LEFT');
const InlineObject135SideEnum _$inlineObject135SideEnum_RIGHT =
    const InlineObject135SideEnum._('RIGHT');

InlineObject135SideEnum _$inlineObject135SideEnumValueOf(String name) {
  switch (name) {
    case 'LEFT':
      return _$inlineObject135SideEnum_LEFT;
    case 'RIGHT':
      return _$inlineObject135SideEnum_RIGHT;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject135SideEnum> _$inlineObject135SideEnumValues =
    new BuiltSet<InlineObject135SideEnum>(const <InlineObject135SideEnum>[
  _$inlineObject135SideEnum_LEFT,
  _$inlineObject135SideEnum_RIGHT,
]);

const InlineObject135StartSideEnum _$inlineObject135StartSideEnum_LEFT =
    const InlineObject135StartSideEnum._('LEFT');
const InlineObject135StartSideEnum _$inlineObject135StartSideEnum_RIGHT =
    const InlineObject135StartSideEnum._('RIGHT');
const InlineObject135StartSideEnum _$inlineObject135StartSideEnum_side =
    const InlineObject135StartSideEnum._('side');

InlineObject135StartSideEnum _$inlineObject135StartSideEnumValueOf(
    String name) {
  switch (name) {
    case 'LEFT':
      return _$inlineObject135StartSideEnum_LEFT;
    case 'RIGHT':
      return _$inlineObject135StartSideEnum_RIGHT;
    case 'side':
      return _$inlineObject135StartSideEnum_side;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<InlineObject135StartSideEnum>
    _$inlineObject135StartSideEnumValues = new BuiltSet<
        InlineObject135StartSideEnum>(const <InlineObject135StartSideEnum>[
  _$inlineObject135StartSideEnum_LEFT,
  _$inlineObject135StartSideEnum_RIGHT,
  _$inlineObject135StartSideEnum_side,
]);

Serializer<InlineObject135> _$inlineObject135Serializer =
    new _$InlineObject135Serializer();
Serializer<InlineObject135SideEnum> _$inlineObject135SideEnumSerializer =
    new _$InlineObject135SideEnumSerializer();
Serializer<InlineObject135StartSideEnum>
    _$inlineObject135StartSideEnumSerializer =
    new _$InlineObject135StartSideEnumSerializer();

class _$InlineObject135Serializer
    implements StructuredSerializer<InlineObject135> {
  @override
  final Iterable<Type> types = const [InlineObject135, _$InlineObject135];
  @override
  final String wireName = 'InlineObject135';

  @override
  Iterable<Object> serialize(Serializers serializers, InlineObject135 object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.commitId != null) {
      result
        ..add('commit_id')
        ..add(serializers.serialize(object.commitId,
            specifiedType: const FullType(String)));
    }
    if (object.path != null) {
      result
        ..add('path')
        ..add(serializers.serialize(object.path,
            specifiedType: const FullType(String)));
    }
    if (object.position != null) {
      result
        ..add('position')
        ..add(serializers.serialize(object.position,
            specifiedType: const FullType(int)));
    }
    if (object.side != null) {
      result
        ..add('side')
        ..add(serializers.serialize(object.side,
            specifiedType: const FullType(InlineObject135SideEnum)));
    }
    if (object.line != null) {
      result
        ..add('line')
        ..add(serializers.serialize(object.line,
            specifiedType: const FullType(int)));
    }
    if (object.startLine != null) {
      result
        ..add('start_line')
        ..add(serializers.serialize(object.startLine,
            specifiedType: const FullType(int)));
    }
    if (object.startSide != null) {
      result
        ..add('start_side')
        ..add(serializers.serialize(object.startSide,
            specifiedType: const FullType(InlineObject135StartSideEnum)));
    }
    if (object.inReplyTo != null) {
      result
        ..add('in_reply_to')
        ..add(serializers.serialize(object.inReplyTo,
            specifiedType: const FullType(int)));
    }
    return result;
  }

  @override
  InlineObject135 deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new InlineObject135Builder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'commit_id':
          result.commitId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'side':
          result.side = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject135SideEnum))
              as InlineObject135SideEnum;
          break;
        case 'line':
          result.line = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'start_line':
          result.startLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'start_side':
          result.startSide = serializers.deserialize(value,
                  specifiedType: const FullType(InlineObject135StartSideEnum))
              as InlineObject135StartSideEnum;
          break;
        case 'in_reply_to':
          result.inReplyTo = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
      }
    }

    return result.build();
  }
}

class _$InlineObject135SideEnumSerializer
    implements PrimitiveSerializer<InlineObject135SideEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LEFT': 'LEFT',
    'RIGHT': 'RIGHT',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LEFT': 'LEFT',
    'RIGHT': 'RIGHT',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject135SideEnum];
  @override
  final String wireName = 'InlineObject135SideEnum';

  @override
  Object serialize(Serializers serializers, InlineObject135SideEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject135SideEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject135SideEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject135StartSideEnumSerializer
    implements PrimitiveSerializer<InlineObject135StartSideEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'LEFT': 'LEFT',
    'RIGHT': 'RIGHT',
    'side': 'side',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'LEFT': 'LEFT',
    'RIGHT': 'RIGHT',
    'side': 'side',
  };

  @override
  final Iterable<Type> types = const <Type>[InlineObject135StartSideEnum];
  @override
  final String wireName = 'InlineObject135StartSideEnum';

  @override
  Object serialize(Serializers serializers, InlineObject135StartSideEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  InlineObject135StartSideEnum deserialize(
          Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      InlineObject135StartSideEnum.valueOf(
          _fromWire[serialized] ?? serialized as String);
}

class _$InlineObject135 extends InlineObject135 {
  @override
  final String body;
  @override
  final String commitId;
  @override
  final String path;
  @override
  final int position;
  @override
  final InlineObject135SideEnum side;
  @override
  final int line;
  @override
  final int startLine;
  @override
  final InlineObject135StartSideEnum startSide;
  @override
  final int inReplyTo;

  factory _$InlineObject135([void Function(InlineObject135Builder) updates]) =>
      (new InlineObject135Builder()..update(updates)).build();

  _$InlineObject135._(
      {this.body,
      this.commitId,
      this.path,
      this.position,
      this.side,
      this.line,
      this.startLine,
      this.startSide,
      this.inReplyTo})
      : super._();

  @override
  InlineObject135 rebuild(void Function(InlineObject135Builder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  InlineObject135Builder toBuilder() =>
      new InlineObject135Builder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is InlineObject135 &&
        body == other.body &&
        commitId == other.commitId &&
        path == other.path &&
        position == other.position &&
        side == other.side &&
        line == other.line &&
        startLine == other.startLine &&
        startSide == other.startSide &&
        inReplyTo == other.inReplyTo;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc($jc($jc(0, body.hashCode), commitId.hashCode),
                                path.hashCode),
                            position.hashCode),
                        side.hashCode),
                    line.hashCode),
                startLine.hashCode),
            startSide.hashCode),
        inReplyTo.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('InlineObject135')
          ..add('body', body)
          ..add('commitId', commitId)
          ..add('path', path)
          ..add('position', position)
          ..add('side', side)
          ..add('line', line)
          ..add('startLine', startLine)
          ..add('startSide', startSide)
          ..add('inReplyTo', inReplyTo))
        .toString();
  }
}

class InlineObject135Builder
    implements Builder<InlineObject135, InlineObject135Builder> {
  _$InlineObject135 _$v;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  String _commitId;
  String get commitId => _$this._commitId;
  set commitId(String commitId) => _$this._commitId = commitId;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  InlineObject135SideEnum _side;
  InlineObject135SideEnum get side => _$this._side;
  set side(InlineObject135SideEnum side) => _$this._side = side;

  int _line;
  int get line => _$this._line;
  set line(int line) => _$this._line = line;

  int _startLine;
  int get startLine => _$this._startLine;
  set startLine(int startLine) => _$this._startLine = startLine;

  InlineObject135StartSideEnum _startSide;
  InlineObject135StartSideEnum get startSide => _$this._startSide;
  set startSide(InlineObject135StartSideEnum startSide) =>
      _$this._startSide = startSide;

  int _inReplyTo;
  int get inReplyTo => _$this._inReplyTo;
  set inReplyTo(int inReplyTo) => _$this._inReplyTo = inReplyTo;

  InlineObject135Builder() {
    InlineObject135._initializeBuilder(this);
  }

  InlineObject135Builder get _$this {
    if (_$v != null) {
      _body = _$v.body;
      _commitId = _$v.commitId;
      _path = _$v.path;
      _position = _$v.position;
      _side = _$v.side;
      _line = _$v.line;
      _startLine = _$v.startLine;
      _startSide = _$v.startSide;
      _inReplyTo = _$v.inReplyTo;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(InlineObject135 other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$InlineObject135;
  }

  @override
  void update(void Function(InlineObject135Builder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$InlineObject135 build() {
    final _$result = _$v ??
        new _$InlineObject135._(
            body: body,
            commitId: commitId,
            path: path,
            position: position,
            side: side,
            line: line,
            startLine: startLine,
            startSide: startSide,
            inReplyTo: inReplyTo);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
