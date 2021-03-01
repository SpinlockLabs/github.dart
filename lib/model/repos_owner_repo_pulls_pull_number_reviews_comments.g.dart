// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'repos_owner_repo_pulls_pull_number_reviews_comments.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ReposOwnerRepoPullsPullNumberReviewsComments>
    _$reposOwnerRepoPullsPullNumberReviewsCommentsSerializer =
    new _$ReposOwnerRepoPullsPullNumberReviewsCommentsSerializer();

class _$ReposOwnerRepoPullsPullNumberReviewsCommentsSerializer
    implements
        StructuredSerializer<ReposOwnerRepoPullsPullNumberReviewsComments> {
  @override
  final Iterable<Type> types = const [
    ReposOwnerRepoPullsPullNumberReviewsComments,
    _$ReposOwnerRepoPullsPullNumberReviewsComments
  ];
  @override
  final String wireName = 'ReposOwnerRepoPullsPullNumberReviewsComments';

  @override
  Iterable<Object> serialize(Serializers serializers,
      ReposOwnerRepoPullsPullNumberReviewsComments object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
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
    if (object.body != null) {
      result
        ..add('body')
        ..add(serializers.serialize(object.body,
            specifiedType: const FullType(String)));
    }
    if (object.line != null) {
      result
        ..add('line')
        ..add(serializers.serialize(object.line,
            specifiedType: const FullType(int)));
    }
    if (object.side != null) {
      result
        ..add('side')
        ..add(serializers.serialize(object.side,
            specifiedType: const FullType(String)));
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
            specifiedType: const FullType(String)));
    }
    return result;
  }

  @override
  ReposOwnerRepoPullsPullNumberReviewsComments deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ReposOwnerRepoPullsPullNumberReviewsCommentsBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'path':
          result.path = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'position':
          result.position = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'body':
          result.body = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'line':
          result.line = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'side':
          result.side = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'start_line':
          result.startLine = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'start_side':
          result.startSide = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
      }
    }

    return result.build();
  }
}

class _$ReposOwnerRepoPullsPullNumberReviewsComments
    extends ReposOwnerRepoPullsPullNumberReviewsComments {
  @override
  final String path;
  @override
  final int position;
  @override
  final String body;
  @override
  final int line;
  @override
  final String side;
  @override
  final int startLine;
  @override
  final String startSide;

  factory _$ReposOwnerRepoPullsPullNumberReviewsComments(
          [void Function(ReposOwnerRepoPullsPullNumberReviewsCommentsBuilder)
              updates]) =>
      (new ReposOwnerRepoPullsPullNumberReviewsCommentsBuilder()
            ..update(updates))
          .build();

  _$ReposOwnerRepoPullsPullNumberReviewsComments._(
      {this.path,
      this.position,
      this.body,
      this.line,
      this.side,
      this.startLine,
      this.startSide})
      : super._();

  @override
  ReposOwnerRepoPullsPullNumberReviewsComments rebuild(
          void Function(ReposOwnerRepoPullsPullNumberReviewsCommentsBuilder)
              updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ReposOwnerRepoPullsPullNumberReviewsCommentsBuilder toBuilder() =>
      new ReposOwnerRepoPullsPullNumberReviewsCommentsBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ReposOwnerRepoPullsPullNumberReviewsComments &&
        path == other.path &&
        position == other.position &&
        body == other.body &&
        line == other.line &&
        side == other.side &&
        startLine == other.startLine &&
        startSide == other.startSide;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, path.hashCode), position.hashCode),
                        body.hashCode),
                    line.hashCode),
                side.hashCode),
            startLine.hashCode),
        startSide.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(
            'ReposOwnerRepoPullsPullNumberReviewsComments')
          ..add('path', path)
          ..add('position', position)
          ..add('body', body)
          ..add('line', line)
          ..add('side', side)
          ..add('startLine', startLine)
          ..add('startSide', startSide))
        .toString();
  }
}

class ReposOwnerRepoPullsPullNumberReviewsCommentsBuilder
    implements
        Builder<ReposOwnerRepoPullsPullNumberReviewsComments,
            ReposOwnerRepoPullsPullNumberReviewsCommentsBuilder> {
  _$ReposOwnerRepoPullsPullNumberReviewsComments _$v;

  String _path;
  String get path => _$this._path;
  set path(String path) => _$this._path = path;

  int _position;
  int get position => _$this._position;
  set position(int position) => _$this._position = position;

  String _body;
  String get body => _$this._body;
  set body(String body) => _$this._body = body;

  int _line;
  int get line => _$this._line;
  set line(int line) => _$this._line = line;

  String _side;
  String get side => _$this._side;
  set side(String side) => _$this._side = side;

  int _startLine;
  int get startLine => _$this._startLine;
  set startLine(int startLine) => _$this._startLine = startLine;

  String _startSide;
  String get startSide => _$this._startSide;
  set startSide(String startSide) => _$this._startSide = startSide;

  ReposOwnerRepoPullsPullNumberReviewsCommentsBuilder() {
    ReposOwnerRepoPullsPullNumberReviewsComments._initializeBuilder(this);
  }

  ReposOwnerRepoPullsPullNumberReviewsCommentsBuilder get _$this {
    if (_$v != null) {
      _path = _$v.path;
      _position = _$v.position;
      _body = _$v.body;
      _line = _$v.line;
      _side = _$v.side;
      _startLine = _$v.startLine;
      _startSide = _$v.startSide;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ReposOwnerRepoPullsPullNumberReviewsComments other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$ReposOwnerRepoPullsPullNumberReviewsComments;
  }

  @override
  void update(
      void Function(ReposOwnerRepoPullsPullNumberReviewsCommentsBuilder)
          updates) {
    if (updates != null) updates(this);
  }

  @override
  _$ReposOwnerRepoPullsPullNumberReviewsComments build() {
    final _$result = _$v ??
        new _$ReposOwnerRepoPullsPullNumberReviewsComments._(
            path: path,
            position: position,
            body: body,
            line: line,
            side: side,
            startLine: startLine,
            startSide: startSide);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
