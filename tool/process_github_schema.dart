import 'dart:convert';
import 'dart:io';

const int width = 72;

List<String> wordWrap(String body) {
  var result = <String>[];
  var start = 0;
  for (var index = 0; index < body.length; index += 1) {
    if ((index == body.length - 1) ||
        (body[index] == '\n') ||
        ((body[index] == ' ') && (index - start > width))) {
      result.add(body.substring(start, index + 1).trimRight());
      start = index + 1;
    }
  }
  assert(start == body.length);
  return result;
}

typedef GenTypeVisitor = void Function(GenType type);

abstract class GenType implements Comparable<GenType> {
  GenType();

  String get name;
  String get comment => '';

  String get signature;

  void cleanup() {}

  String generateDeclaration();

  void visit(GenTypeVisitor visitor) {
    visitor(this);
  }

  GenType mergeWith(GenType other, GenAbstractClass? superclass) {
    assert(signature == other.signature,
        'cannot merge types with different signatures');
    throw StateError(
        'not sure how to merge $runtimeType with ${other.runtimeType}');
  }

  @override
  int compareTo(GenType other) {
    return signature.compareTo(other.signature);
  }

  @override
  String toString() => '$runtimeType($name)';
}

class GenPrimitive extends GenType {
  GenPrimitive(this.type, this.comment);

  @override
  String get name => type.toString();

  @override
  String get signature => name;

  @override
  String generateDeclaration() => '';

  @override
  final String comment;

  final Type type;

  @override
  GenType mergeWith(GenType other, GenAbstractClass? superclass) {
    assert(superclass == null);
    if (other is GenPrimitive) {
      assert(type == other.type);
      if (comment != other.comment) {
        return GenPrimitive(
          type,
          '$comment\n\n${other.comment}',
        );
      }
      return this;
    }
    return super.mergeWith(other, superclass);
  }
}

class GenUnion extends GenType {
  GenUnion(this.subtypes);

  @override
  String get name => 'Object';

  @override
  String get comment {
    var result = StringBuffer();
    result.writeln('One of the following:');
    for (final subtype in subtypes) {
      if (subtype.comment.isNotEmpty) {
        result.writeln(
            ' * [${subtype.name}]: ${subtype.comment.split('\n').first}');
      } else {
        result.writeln(' * [${subtype.name}]');
      }
    }
    return result.toString();
  }

  @override
  String get signature {
    var subsignatures =
        subtypes.map<String>((GenType type) => type.signature).toList()
          ..sort()
          ..join(',');
    return 'Union<$subsignatures>';
  }

  final List<GenType> subtypes;

  @override
  String generateDeclaration() => '';

  @override
  void visit(GenTypeVisitor visitor) {
    super.visit(visitor);
    for (final subtype in subtypes) {
      subtype.visit(visitor);
    }
  }

  @override
  GenType mergeWith(GenType other, GenAbstractClass? superclass) {
    assert(superclass == null);
    if (other is GenUnion) {
      assert(subtypes.length == other.subtypes.length);
      var subtypesA = subtypes..sort();
      var subtypesB = other.subtypes..sort();
      var subtypesC = <GenType>[];
      for (var index = 0; index < subtypesA.length; index += 1) {
        subtypesC.add(subtypesA[index].mergeWith(subtypesB[index], null));
      }
      return GenUnion(subtypesC);
    }
    return super.mergeWith(other, superclass);
  }
}

class GenList extends GenType {
  GenList(this.members, this.comment);

  @override
  String get name => 'List<${members.name}>';

  @override
  final String comment;

  final GenType members;

  @override
  String get signature {
    return 'List<${members.signature}>';
  }

  @override
  String generateDeclaration() => '';

  @override
  void visit(GenTypeVisitor visitor) {
    super.visit(visitor);
    members.visit(visitor);
  }

  @override
  GenType mergeWith(GenType other, GenAbstractClass? superclass) {
    assert(superclass == null);
    if (other is GenList) {
      var newComment =
          comment != other.comment ? '$comment\n\n${other.comment}' : comment;
      var newMembers = members.mergeWith(other.members, null);
      return GenList(newMembers, newComment);
    }
    return super.mergeWith(other, superclass);
  }
}

class GenAbstractClass extends GenType {
  GenAbstractClass(this.name, this.comment, {Map<String, GenType>? properties})
      : properties = properties ?? <String, GenType>{};

  @override
  final String name;

  @override
  final String comment;

  final List<GenClass> subclasses = <GenClass>[];
  final Map<String, GenType> properties;

  @override
  String get signature {
    var propertySignatures = properties.keys
        .map<String>((String propertyName) =>
            '$propertyName:${properties[propertyName]!.signature}')
        .toList()
      ..sort()
      ..join(',');
    return 'abstract class $name { $propertySignatures }';
  }

  @override
  void cleanup() {
    if (subclasses.length > 1) {
      var names = subclasses.first.properties.keys.toSet();
      properties:
      for (final name in names) {
        var signature = subclasses.first.properties[name]!.signature;
        for (final subclass in subclasses.skip(1)) {
          if (!subclass.properties.containsKey(name) ||
              subclass.properties[name]!.signature != signature) {
            continue properties;
          }
        }
        var property = subclasses.first.properties[name]!;
        for (final subclass in subclasses.skip(1)) {
          property = property.mergeWith(subclass.properties[name]!, null);
        }
        properties[name] = property;
        for (final subclass in subclasses) {
          subclass.properties.remove(name);
        }
      }
    }
  }

  @override
  String generateDeclaration() {
    var output = StringBuffer();
    if (comment.isNotEmpty) {
      for (final line in wordWrap(comment)) {
        output.writeln('/// $line');
      }
    }
    output.writeln('@JsonSerializable()');
    output.writeln('abstract class $name {');
    output.write('  $name(');
    if (properties.isNotEmpty) {
      output.writeln('{');
      for (final propertyName in properties.keys.toList()..sort()) {
        output.writeln('    this.$propertyName,');
      }
      output.write('  }');
    }
    output.writeln(');');
    output.writeln('');
    var lastLineWasBlank = true;
    for (final propertyName in properties.keys.toList()..sort()) {
      if (properties[propertyName]!.comment.isNotEmpty) {
        if (!lastLineWasBlank) {
          output.writeln('');
          lastLineWasBlank = true;
        }
        for (final line in wordWrap(properties[propertyName]!.comment)) {
          output.writeln('  /// $line');
        }
      } else {
        lastLineWasBlank = false;
      }
      output.writeln('  ${properties[propertyName]!.name}? $propertyName;');
      if (lastLineWasBlank) {
        output.writeln('');
        lastLineWasBlank = true;
      }
    }
    output.writeln('}');
    return output.toString();
  }

  @override
  void visit(GenTypeVisitor visitor) {
    super.visit(visitor);
    for (final subclass in subclasses) {
      subclass.visit(visitor);
    }
  }

  @override
  GenType mergeWith(GenType other, GenAbstractClass? superclass) {
    assert(superclass == null);
    if (other is GenAbstractClass) {
      assert(name == other.name);
      assert(properties.length == other.properties.length);
      var newComment =
          comment != other.comment ? '$comment\n\n${other.comment}' : comment;
      var newProperties = <String, GenType>{};
      for (final propertyName in properties.keys) {
        newProperties[propertyName] = properties[propertyName]!
            .mergeWith(other.properties[propertyName]!, null);
      }
      var result =
          GenAbstractClass(name, newComment, properties: newProperties);
      var subclassesA = subclasses..sort();
      var subclassesB = other.subclasses..sort();
      for (var index = 0; index < subclassesA.length; index += 1) {
        subclassesA[index].mergeWith(subclassesB[index], result);
      }
      assert(result.subclasses.length == subclasses.length);
      assert(result.subclasses.length == other.subclasses.length);
      return result;
    }
    return super.mergeWith(other, superclass);
  }
}

class GenClass extends GenType {
  GenClass(this.name, this.comment, this.superclass, this.properties) {
    if (superclass != null) {
      superclass!.subclasses.add(this);
    }
  }

  @override
  final String name;

  @override
  final String comment;

  final GenAbstractClass? superclass;
  final Map<String, GenType> properties;

  @override
  String get signature {
    var propertySignatures = properties.keys
        .map<String>((String propertyName) =>
            '$propertyName:${properties[propertyName]!.signature}')
        .toList()
      ..sort()
      ..join(',');
    return 'class $name extends { ${superclass?.signature} } with { $propertySignatures }';
  }

  @override
  String generateDeclaration() {
    var output = StringBuffer();
    if (comment.isNotEmpty) {
      for (final line in wordWrap(comment)) {
        output.writeln('/// $line');
      }
    }
    output.writeln('@JsonSerializable()');
    output.write('class $name ');
    if (superclass != null) {
      output.write('extends ${superclass!.name} ');
    }
    output.writeln('{');
    output.writeln('  $name({');
    if (superclass != null) {
      for (final propertyName in superclass!.properties.keys.toList()..sort()) {
        output.writeln('    super.$propertyName,');
      }
    }
    for (final propertyName in properties.keys.toList()..sort()) {
      output.writeln('    this.$propertyName,');
    }
    output.writeln('  });');
    output.writeln('');
    var lastLineWasBlank = true;
    for (final propertyName in properties.keys.toList()..sort()) {
      if (properties[propertyName]!.comment.isNotEmpty) {
        if (!lastLineWasBlank) {
          output.writeln('');
          lastLineWasBlank = true;
        }
        for (final line in wordWrap(properties[propertyName]!.comment)) {
          output.writeln('  /// $line');
        }
      } else {
        lastLineWasBlank = false;
      }
      output.writeln('  ${properties[propertyName]!.name}? $propertyName;');
      if (lastLineWasBlank) {
        output.writeln('');
        lastLineWasBlank = true;
      }
    }
    if (!lastLineWasBlank) {
      output.writeln('');
    }
    output
        .writeln('  Map<String, dynamic> toJson() => _\$${name}ToJson(this);');
    output.writeln('');
    output.writeln('  factory $name.fromJson(Map<String, dynamic> input) =>');
    output.writeln('      _\$${name}FromJson(input);');
    output.writeln('}');
    return output.toString();
  }

  @override
  void visit(GenTypeVisitor visitor) {
    super.visit(visitor);
    for (final property in properties.values) {
      property.visit(visitor);
    }
  }

  @override
  GenType mergeWith(GenType other, GenAbstractClass? superclass) {
    assert((superclass == null) == (this.superclass == null));
    if (other is GenClass) {
      assert((other.superclass == null) == (this.superclass == null));
      assert(name == other.name);
      assert(properties.length == other.properties.length);
      var newComment =
          comment != other.comment ? '$comment\n\n${other.comment}' : comment;
      var newProperties = <String, GenType>{};
      for (final propertyName in properties.keys) {
        newProperties[propertyName] = properties[propertyName]!
            .mergeWith(other.properties[propertyName]!, null);
      }
      return GenClass(name, newComment, superclass, newProperties);
    }
    return super.mergeWith(other, superclass);
  }
}

void assure(bool condition, String Function() callback) {
  if (!condition) {
    print(callback());
    exit(1);
  }
}

String? camelCase(String? text, {bool uppercase = false}) {
  if (text == null) {
    return null;
  }
  var bits = text.split(RegExp('[- _]'));
  var result = StringBuffer();
  for (final bit in bits) {
    if (bit.isNotEmpty) {
      if (result.isNotEmpty || uppercase) {
        result.write(String.fromCharCode(bit.runes.first).toUpperCase());
        result.write(String.fromCharCodes(bit.runes.skip(1)));
      } else {
        result.write(bit);
      }
    }
  }
  return result.toString();
}

String buildComment(Map<String, Object?> schema) {
  var description = StringBuffer();
  if (schema['title'] != null) {
    description.writeln(schema['title']);
  }
  if (schema['description'] != null &&
      schema['description'] != schema['title']) {
    if (description.isNotEmpty) {
      description.writeln('');
    }
    description.writeln(schema['description']);
  }
  if (schema['format'] != null) {
    if (description.isNotEmpty) {
      description.writeln('');
    }
    description.write('Format: ');
    description.writeln(schema['format']);
  }
  if (schema['examples'] != null) {
    assure(schema['examples'] is List<Object?>,
        () => 'examples should be a list, not as in $schema');
    for (final example in schema['examples'] as List<Object?>) {
      if (description.isNotEmpty) {
        description.writeln('');
      }
      description.writeln('Example: `$example`');
    }
  }
  return description.toString().trimRight();
}

GenType process(Map<String, Object?> schema, {String? defaultName}) {
  final comment = buildComment(schema);
  String type;
  if (schema['type'] is List<Object?>) {
    var types = schema['type'] as List<Object?>;
    if (types.length == 2) {
      if (types[0] == 'null' && types[1] is String) {
        type = types[1] as String;
      } else if (types[1] == 'null' && types[0] is String) {
        type = types[0] as String;
      } else {
        print('Arbitrary union types not supported: $types');
        exit(1);
      }
    } else {
      print('Arbitrary union types not supported: $types');
      exit(1);
    }
  } else if (schema['type'] is String) {
    type = schema['type'] as String;
  } else {
    var anyOf = schema['anyOf'] ?? schema['oneOf'];
    if (anyOf != null) {
      assure(comment.isEmpty, () => 'lost comment to anyOf/oneOf: $comment');
      assure(
          anyOf is List<Object?>, () => 'anyOf/oneOf key is not a JSON list');
      var subtypes = <GenType>[];
      for (final subtype in anyOf as List<Object?>) {
        assure(subtype is Map<String, Object?>,
            () => 'type in anyOf/oneOf is not a JSON object');
        subtypes.add(process(subtype as Map<String, Object?>));
      }
      if (subtypes.length == 2) {
        if (subtypes[0] is GenPrimitive &&
            (subtypes[0] as GenPrimitive).type == Null) {
          return subtypes[1];
        }
        if (subtypes[1] is GenPrimitive &&
            (subtypes[1] as GenPrimitive).type == Null) {
          return subtypes[0];
        }
      }
      return GenUnion(subtypes);
    }
    if (schema['type'] == null) {
      print('missing type: $schema');
      exit(1);
    }
    print('unknown type ${schema['type']}');
    exit(1);
  }
  if (type == 'array') {
    assure(schema['items'] is Map<String, Object?>,
        () => 'array items are not a JSON object');
    return GenList(process(schema['items'] as Map<String, Object?>), comment);
  }
  if (type == 'object') {
    var anyOf = schema['anyOf'];
    if (anyOf != null) {
      assure(anyOf is List<Object?>, () => 'anyOf key is not a JSON list');
      var result = GenAbstractClass(
        camelCase(schema['title'] as String?) ?? '##unnamed##',
        comment,
      );
      for (final subschema in anyOf as List<Object?>) {
        assure(subschema is Map<String, Object?>,
            () => 'anyOf value is not a JSON object');
        var subclass = processObject(subschema as Map<String, Object?>,
            superclass: result);
        assert(result.subclasses.last == subclass);
      }
      return result;
    }
    return processObject(schema, defaultName: defaultName);
  }
  if (type == 'null') {
    return GenPrimitive(Null, comment);
  }
  if (type == 'boolean') {
    return GenPrimitive(bool, comment);
  }
  if (type == 'integer') {
    return GenPrimitive(int, comment);
  }
  if (type == 'string') {
    return GenPrimitive(String, comment);
  }
  print('unknown type $type');
  exit(1);
}

GenClass processObject(Map<String, Object?> schema,
    {GenAbstractClass? superclass, String? comment, String? defaultName}) {
  assert(schema['anyOf'] == null);
  comment ??= buildComment(schema);
  var properties = <String, GenType>{};
  var propertiesData = schema['properties'];
  assure(propertiesData is Map<String, Object?>,
      () => 'properties key is not a JSON map');
  for (final propertyName in (propertiesData as Map<String, Object?>).keys) {
    var propertyData = propertiesData[propertyName];
    assure(propertyData is Map<String, Object?>,
        () => 'property $propertyName is not a JSON object');
    properties[camelCase(propertyName)!] = process(
        propertyData as Map<String, Object?>,
        defaultName: camelCase(propertyName, uppercase: true));
  }
  return GenClass(
    camelCase(schema['title'] as String?) ?? defaultName ?? '##unnamed##',
    comment,
    superclass,
    properties,
  );
}

void main(List<String> arguments) {
  if (arguments.length != 1) {
    print(
        'Command must be run with one argument, the file name of the schema to process.');
    exit(1);
  }
  Object schema = json.decode(File(arguments.single).readAsStringSync());
  assure(schema is Map<String, Object?>, () => 'schema is not a JSON object');
  var rootType = process(schema as Map<String, Object?>);
  rootType.visit((GenType type) {
    type.cleanup();
  });
  var declarations = <String>{};
  rootType.visit((GenType type) {
    var declaration = type.generateDeclaration().trimRight();
    declarations.add(declaration);
  });
  for (final declaration in declarations) {
    print(declaration);
    print('');
  }
  print('// root type is: ${rootType.name}');
}
