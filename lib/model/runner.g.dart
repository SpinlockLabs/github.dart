// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'runner.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<Runner> _$runnerSerializer = new _$RunnerSerializer();

class _$RunnerSerializer implements StructuredSerializer<Runner> {
  @override
  final Iterable<Type> types = const [Runner, _$Runner];
  @override
  final String wireName = 'Runner';

  @override
  Iterable<Object> serialize(Serializers serializers, Runner object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.id != null) {
      result
        ..add('id')
        ..add(serializers.serialize(object.id,
            specifiedType: const FullType(int)));
    }
    if (object.name != null) {
      result
        ..add('name')
        ..add(serializers.serialize(object.name,
            specifiedType: const FullType(String)));
    }
    if (object.os != null) {
      result
        ..add('os')
        ..add(serializers.serialize(object.os,
            specifiedType: const FullType(String)));
    }
    if (object.status != null) {
      result
        ..add('status')
        ..add(serializers.serialize(object.status,
            specifiedType: const FullType(String)));
    }
    if (object.busy != null) {
      result
        ..add('busy')
        ..add(serializers.serialize(object.busy,
            specifiedType: const FullType(bool)));
    }
    if (object.labels != null) {
      result
        ..add('labels')
        ..add(serializers.serialize(object.labels,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RunnerLabels)])));
    }
    return result;
  }

  @override
  Runner deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RunnerBuilder();

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
        case 'name':
          result.name = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'os':
          result.os = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'status':
          result.status = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'busy':
          result.busy = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool;
          break;
        case 'labels':
          result.labels.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RunnerLabels)]))
              as BuiltList<Object>);
          break;
      }
    }

    return result.build();
  }
}

class _$Runner extends Runner {
  @override
  final int id;
  @override
  final String name;
  @override
  final String os;
  @override
  final String status;
  @override
  final bool busy;
  @override
  final BuiltList<RunnerLabels> labels;

  factory _$Runner([void Function(RunnerBuilder) updates]) =>
      (new RunnerBuilder()..update(updates)).build();

  _$Runner._({this.id, this.name, this.os, this.status, this.busy, this.labels})
      : super._();

  @override
  Runner rebuild(void Function(RunnerBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RunnerBuilder toBuilder() => new RunnerBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Runner &&
        id == other.id &&
        name == other.name &&
        os == other.os &&
        status == other.status &&
        busy == other.busy &&
        labels == other.labels;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc($jc($jc($jc(0, id.hashCode), name.hashCode), os.hashCode),
                status.hashCode),
            busy.hashCode),
        labels.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Runner')
          ..add('id', id)
          ..add('name', name)
          ..add('os', os)
          ..add('status', status)
          ..add('busy', busy)
          ..add('labels', labels))
        .toString();
  }
}

class RunnerBuilder implements Builder<Runner, RunnerBuilder> {
  _$Runner _$v;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _name;
  String get name => _$this._name;
  set name(String name) => _$this._name = name;

  String _os;
  String get os => _$this._os;
  set os(String os) => _$this._os = os;

  String _status;
  String get status => _$this._status;
  set status(String status) => _$this._status = status;

  bool _busy;
  bool get busy => _$this._busy;
  set busy(bool busy) => _$this._busy = busy;

  ListBuilder<RunnerLabels> _labels;
  ListBuilder<RunnerLabels> get labels =>
      _$this._labels ??= new ListBuilder<RunnerLabels>();
  set labels(ListBuilder<RunnerLabels> labels) => _$this._labels = labels;

  RunnerBuilder() {
    Runner._initializeBuilder(this);
  }

  RunnerBuilder get _$this {
    if (_$v != null) {
      _id = _$v.id;
      _name = _$v.name;
      _os = _$v.os;
      _status = _$v.status;
      _busy = _$v.busy;
      _labels = _$v.labels?.toBuilder();
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Runner other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Runner;
  }

  @override
  void update(void Function(RunnerBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Runner build() {
    _$Runner _$result;
    try {
      _$result = _$v ??
          new _$Runner._(
              id: id,
              name: name,
              os: os,
              status: status,
              busy: busy,
              labels: _labels?.build());
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'labels';
        _labels?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Runner', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
