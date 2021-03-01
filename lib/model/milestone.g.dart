// GENERATED CODE - DO NOT MODIFY BY HAND
// @dart=2.6

part of 'milestone.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

const MilestoneStateEnum _$milestoneStateEnum_open =
    const MilestoneStateEnum._('open');
const MilestoneStateEnum _$milestoneStateEnum_closed =
    const MilestoneStateEnum._('closed');

MilestoneStateEnum _$milestoneStateEnumValueOf(String name) {
  switch (name) {
    case 'open':
      return _$milestoneStateEnum_open;
    case 'closed':
      return _$milestoneStateEnum_closed;
    default:
      throw new ArgumentError(name);
  }
}

final BuiltSet<MilestoneStateEnum> _$milestoneStateEnumValues =
    new BuiltSet<MilestoneStateEnum>(const <MilestoneStateEnum>[
  _$milestoneStateEnum_open,
  _$milestoneStateEnum_closed,
]);

Serializer<Milestone> _$milestoneSerializer = new _$MilestoneSerializer();
Serializer<MilestoneStateEnum> _$milestoneStateEnumSerializer =
    new _$MilestoneStateEnumSerializer();

class _$MilestoneSerializer implements StructuredSerializer<Milestone> {
  @override
  final Iterable<Type> types = const [Milestone, _$Milestone];
  @override
  final String wireName = 'Milestone';

  @override
  Iterable<Object> serialize(Serializers serializers, Milestone object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    if (object.url != null) {
      result
        ..add('url')
        ..add(serializers.serialize(object.url,
            specifiedType: const FullType(String)));
    }
    if (object.htmlUrl != null) {
      result
        ..add('html_url')
        ..add(serializers.serialize(object.htmlUrl,
            specifiedType: const FullType(String)));
    }
    if (object.labelsUrl != null) {
      result
        ..add('labels_url')
        ..add(serializers.serialize(object.labelsUrl,
            specifiedType: const FullType(String)));
    }
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
    if (object.number != null) {
      result
        ..add('number')
        ..add(serializers.serialize(object.number,
            specifiedType: const FullType(int)));
    }
    if (object.state != null) {
      result
        ..add('state')
        ..add(serializers.serialize(object.state,
            specifiedType: const FullType(MilestoneStateEnum)));
    }
    if (object.title != null) {
      result
        ..add('title')
        ..add(serializers.serialize(object.title,
            specifiedType: const FullType(String)));
    }
    if (object.description != null) {
      result
        ..add('description')
        ..add(serializers.serialize(object.description,
            specifiedType: const FullType(String)));
    }
    if (object.creator != null) {
      result
        ..add('creator')
        ..add(serializers.serialize(object.creator,
            specifiedType: const FullType(SimpleUser)));
    }
    if (object.openIssues != null) {
      result
        ..add('open_issues')
        ..add(serializers.serialize(object.openIssues,
            specifiedType: const FullType(int)));
    }
    if (object.closedIssues != null) {
      result
        ..add('closed_issues')
        ..add(serializers.serialize(object.closedIssues,
            specifiedType: const FullType(int)));
    }
    if (object.createdAt != null) {
      result
        ..add('created_at')
        ..add(serializers.serialize(object.createdAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.updatedAt != null) {
      result
        ..add('updated_at')
        ..add(serializers.serialize(object.updatedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.closedAt != null) {
      result
        ..add('closed_at')
        ..add(serializers.serialize(object.closedAt,
            specifiedType: const FullType(DateTime)));
    }
    if (object.dueOn != null) {
      result
        ..add('due_on')
        ..add(serializers.serialize(object.dueOn,
            specifiedType: const FullType(DateTime)));
    }
    return result;
  }

  @override
  Milestone deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new MilestoneBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final dynamic value = iterator.current;
      switch (key) {
        case 'url':
          result.url = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'html_url':
          result.htmlUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'labels_url':
          result.labelsUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'id':
          result.id = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'node_id':
          result.nodeId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'number':
          result.number = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'state':
          result.state = serializers.deserialize(value,
                  specifiedType: const FullType(MilestoneStateEnum))
              as MilestoneStateEnum;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'creator':
          result.creator.replace(serializers.deserialize(value,
              specifiedType: const FullType(SimpleUser)) as SimpleUser);
          break;
        case 'open_issues':
          result.openIssues = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'closed_issues':
          result.closedIssues = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int;
          break;
        case 'created_at':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'updated_at':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'closed_at':
          result.closedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'due_on':
          result.dueOn = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
      }
    }

    return result.build();
  }
}

class _$MilestoneStateEnumSerializer
    implements PrimitiveSerializer<MilestoneStateEnum> {
  static const Map<String, Object> _toWire = const <String, Object>{
    'open': 'open',
    'closed': 'closed',
  };
  static const Map<Object, String> _fromWire = const <Object, String>{
    'open': 'open',
    'closed': 'closed',
  };

  @override
  final Iterable<Type> types = const <Type>[MilestoneStateEnum];
  @override
  final String wireName = 'MilestoneStateEnum';

  @override
  Object serialize(Serializers serializers, MilestoneStateEnum object,
          {FullType specifiedType = FullType.unspecified}) =>
      _toWire[object.name] ?? object.name;

  @override
  MilestoneStateEnum deserialize(Serializers serializers, Object serialized,
          {FullType specifiedType = FullType.unspecified}) =>
      MilestoneStateEnum.valueOf(_fromWire[serialized] ?? serialized as String);
}

class _$Milestone extends Milestone {
  @override
  final String url;
  @override
  final String htmlUrl;
  @override
  final String labelsUrl;
  @override
  final int id;
  @override
  final String nodeId;
  @override
  final int number;
  @override
  final MilestoneStateEnum state;
  @override
  final String title;
  @override
  final String description;
  @override
  final SimpleUser creator;
  @override
  final int openIssues;
  @override
  final int closedIssues;
  @override
  final DateTime createdAt;
  @override
  final DateTime updatedAt;
  @override
  final DateTime closedAt;
  @override
  final DateTime dueOn;

  factory _$Milestone([void Function(MilestoneBuilder) updates]) =>
      (new MilestoneBuilder()..update(updates)).build();

  _$Milestone._(
      {this.url,
      this.htmlUrl,
      this.labelsUrl,
      this.id,
      this.nodeId,
      this.number,
      this.state,
      this.title,
      this.description,
      this.creator,
      this.openIssues,
      this.closedIssues,
      this.createdAt,
      this.updatedAt,
      this.closedAt,
      this.dueOn})
      : super._();

  @override
  Milestone rebuild(void Function(MilestoneBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  MilestoneBuilder toBuilder() => new MilestoneBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is Milestone &&
        url == other.url &&
        htmlUrl == other.htmlUrl &&
        labelsUrl == other.labelsUrl &&
        id == other.id &&
        nodeId == other.nodeId &&
        number == other.number &&
        state == other.state &&
        title == other.title &&
        description == other.description &&
        creator == other.creator &&
        openIssues == other.openIssues &&
        closedIssues == other.closedIssues &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        closedAt == other.closedAt &&
        dueOn == other.dueOn;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    url
                                                                        .hashCode),
                                                                htmlUrl
                                                                    .hashCode),
                                                            labelsUrl.hashCode),
                                                        id.hashCode),
                                                    nodeId.hashCode),
                                                number.hashCode),
                                            state.hashCode),
                                        title.hashCode),
                                    description.hashCode),
                                creator.hashCode),
                            openIssues.hashCode),
                        closedIssues.hashCode),
                    createdAt.hashCode),
                updatedAt.hashCode),
            closedAt.hashCode),
        dueOn.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('Milestone')
          ..add('url', url)
          ..add('htmlUrl', htmlUrl)
          ..add('labelsUrl', labelsUrl)
          ..add('id', id)
          ..add('nodeId', nodeId)
          ..add('number', number)
          ..add('state', state)
          ..add('title', title)
          ..add('description', description)
          ..add('creator', creator)
          ..add('openIssues', openIssues)
          ..add('closedIssues', closedIssues)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('closedAt', closedAt)
          ..add('dueOn', dueOn))
        .toString();
  }
}

class MilestoneBuilder implements Builder<Milestone, MilestoneBuilder> {
  _$Milestone _$v;

  String _url;
  String get url => _$this._url;
  set url(String url) => _$this._url = url;

  String _htmlUrl;
  String get htmlUrl => _$this._htmlUrl;
  set htmlUrl(String htmlUrl) => _$this._htmlUrl = htmlUrl;

  String _labelsUrl;
  String get labelsUrl => _$this._labelsUrl;
  set labelsUrl(String labelsUrl) => _$this._labelsUrl = labelsUrl;

  int _id;
  int get id => _$this._id;
  set id(int id) => _$this._id = id;

  String _nodeId;
  String get nodeId => _$this._nodeId;
  set nodeId(String nodeId) => _$this._nodeId = nodeId;

  int _number;
  int get number => _$this._number;
  set number(int number) => _$this._number = number;

  MilestoneStateEnum _state;
  MilestoneStateEnum get state => _$this._state;
  set state(MilestoneStateEnum state) => _$this._state = state;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  SimpleUserBuilder _creator;
  SimpleUserBuilder get creator => _$this._creator ??= new SimpleUserBuilder();
  set creator(SimpleUserBuilder creator) => _$this._creator = creator;

  int _openIssues;
  int get openIssues => _$this._openIssues;
  set openIssues(int openIssues) => _$this._openIssues = openIssues;

  int _closedIssues;
  int get closedIssues => _$this._closedIssues;
  set closedIssues(int closedIssues) => _$this._closedIssues = closedIssues;

  DateTime _createdAt;
  DateTime get createdAt => _$this._createdAt;
  set createdAt(DateTime createdAt) => _$this._createdAt = createdAt;

  DateTime _updatedAt;
  DateTime get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime updatedAt) => _$this._updatedAt = updatedAt;

  DateTime _closedAt;
  DateTime get closedAt => _$this._closedAt;
  set closedAt(DateTime closedAt) => _$this._closedAt = closedAt;

  DateTime _dueOn;
  DateTime get dueOn => _$this._dueOn;
  set dueOn(DateTime dueOn) => _$this._dueOn = dueOn;

  MilestoneBuilder() {
    Milestone._initializeBuilder(this);
  }

  MilestoneBuilder get _$this {
    if (_$v != null) {
      _url = _$v.url;
      _htmlUrl = _$v.htmlUrl;
      _labelsUrl = _$v.labelsUrl;
      _id = _$v.id;
      _nodeId = _$v.nodeId;
      _number = _$v.number;
      _state = _$v.state;
      _title = _$v.title;
      _description = _$v.description;
      _creator = _$v.creator?.toBuilder();
      _openIssues = _$v.openIssues;
      _closedIssues = _$v.closedIssues;
      _createdAt = _$v.createdAt;
      _updatedAt = _$v.updatedAt;
      _closedAt = _$v.closedAt;
      _dueOn = _$v.dueOn;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(Milestone other) {
    if (other == null) {
      throw new ArgumentError.notNull('other');
    }
    _$v = other as _$Milestone;
  }

  @override
  void update(void Function(MilestoneBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$Milestone build() {
    _$Milestone _$result;
    try {
      _$result = _$v ??
          new _$Milestone._(
              url: url,
              htmlUrl: htmlUrl,
              labelsUrl: labelsUrl,
              id: id,
              nodeId: nodeId,
              number: number,
              state: state,
              title: title,
              description: description,
              creator: _creator?.build(),
              openIssues: openIssues,
              closedIssues: closedIssues,
              createdAt: createdAt,
              updatedAt: updatedAt,
              closedAt: closedAt,
              dueOn: dueOn);
    } catch (_) {
      String _$failedField;
      try {
        _$failedField = 'creator';
        _creator?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            'Milestone', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
