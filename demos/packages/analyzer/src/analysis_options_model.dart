// Copyright (c) 2015, the Dart project authors.  Please see the AUTHORS file
// for details. All rights reserved. Use of this source code is governed by a
// BSD-style license that can be found in the LICENSE file.

library analyzer.src.analysis_options_model;
import 'package:analyzer/source/analysis_options_provider.dart';
import 'package:source_span/source_span.dart';
import 'package:yaml/yaml.dart';

//TODO:
// * what's the top-level container :: Document(source, List<Setting>?)?
// * visitor && pretty printing :)
// * lists
// * validators : isGlob <== NOTE: won't have completions in first cut
// * shorthand : list to boolean map conversion



//HERE:
//  remove visitor cruft
//  answer question: WHAT spans should be related to what? (proposals and validations?) <=== draw it out


class BooleanSetting extends ValueSetting<BooleanValue> {
  BooleanSetting(String name, {Map<bool, String> synonyms})
      : super(name, new BooleanValue(synonyms: synonyms));
}

class BooleanValue extends StringValue {
  BooleanValue({Map<bool, String> synonyms}) : super(['true', 'false']) {
    if (synonyms != null) {
      values.addAll(synonyms.values);
    }
  }
}

class Document {
  SettingList settings;
  Document(List<Setting> s) : settings = new SettingList(s);

  void resolveSpans(String source) {

    var options = loadYamlNode(source);

    if (options is! YamlMap) {
      // Invalid doc.
      return;
    }

    // Set initial span.
    settings.span = options.span;

    options.forEach((String name, YamlNode node) {
//      settings.accept(new SpanResolver(options));


      for (Setting setting in settings.values) {
        if (setting.name == name) {
          setting._resolve(node);
        }
      }
    });

//    settings.accept(new SpanResolver(options));


  }

}

class Group extends Setting<SettingList> {
  Group(String name, List<Setting> values) : super(name, new SettingList(values));

  List<Setting> get settings => value.values;

  @override
  void accept(NodeVisitor visitor) {
    visitor.visitGroup(this);
    visitChildren(visitor);
  }

  @override
  List<String> propose(String start) => value.propose(start);

  @override
  void visitChildren(NodeVisitor visitor) {
    value.accept(visitor);
  }

  void _resolve(YamlNode node) {
    print(node);
    span = node.span;
    //TODO: which one should have this span?
    value.span = node.span;
    if (node is YamlMap) {
      for (Setting setting in settings) {
        var entry = node.nodes[setting.name];
        if (entry is YamlNode) {
          setting._resolve(entry);
        }
      }
    }
  }
}

abstract class Node {
  SourceSpan span;
  void accept(NodeVisitor visitor);

  List<String> propose(String start);

  /// Use the given [visitor] to visit all of the children of this node.
  void visitChildren(NodeVisitor visitor);
}

abstract class NodeVisitor {
  void visitNode(Node n) {
    // No-op.
  }

  void visitGroup(Group group) {
    visitNode(group);
  }

  void visitValue(Value value) {
    visitNode(value);
  }

  void visitValueSetting(ValueSetting value) {
    visitNode(value);
  }

  void visitSettingList(SettingList list) {
    visitNode(list);
  }
}

/// Settings have a [name] and a [value].
abstract class Setting<V> implements Node {
  /// Setting name.
  String name;

  /// The type of accepted value.
  V value;

  /// Settings with [multipleValues] are lists.
  /// For example:
  ///    excludes:
  ///      - glob1
  ///      - glob2
  /// could be represented like this:
  /// new Setting<String>('exclude' ...) <= hmmm, need matchers
  bool multipleValues;

  SourceSpan span;

  /// Create a setting with the given [name] and legal [values].
  Setting(this.name, this.value, {this.multipleValues: false});

  @override
  void accept(NodeVisitor visitor) {
    visitor.visitNode(this);
  }

  @override
  String toString() => '$name : $value';

  void _resolve(YamlNode node) {
    span = node.span;
    print(node);
  }
}

class SettingList extends Value {

  List<Setting> values;
  SettingList(this.values);

  @override
  void accept(NodeVisitor visitor) {
    visitor.visitSettingList(this);
    visitChildren(visitor);
  }


  @override
  List<String> propose(String start) =>
    values.map((s) => s.name).where((v) => v.startsWith(start)).toList();

  @override
  void visitChildren(NodeVisitor visitor) {
    values.forEach((value) => value.accept(visitor));
  }

  void _resolve(YamlNode node) {
    print(node);
    span = node.span;
    if (node is YamlMap) {
      for (Setting setting in values) {
        var entry = node.nodes[setting.name];
        if (entry is YamlNode) {
          setting._resolve(entry);
        }
      }
    }
  }


}

class SpanResolver extends NodeVisitor {
  dynamic node;
  SpanResolver(this.node);

  @override
  visitValue(Value value) {
    visitNode(value);
  }

  @override
  visitSettingList(SettingList list) {
    if (node is Map) {
      for (Setting setting in list.values) {
        var entry = node[setting.name];
        if (entry != null) {
          setting.accept(new SpanResolver(entry));
        }
      }
    }
  }

  @override
  visitValueSetting(ValueSetting value) {
//    value.span = node.span;
    print(value);
  }

  @override
  visitGroup(Group group) {
    if (node is Map) {
      for (Setting setting in group.value.values) {
        var entry = node[setting.name];
        if (entry != null) {
          setting.accept(new SpanResolver(entry));
        }
      }
    }

    print(group);
  }


}

class StringValue extends Value {
  List<String> values;
  StringValue(this.values);
  @override
  List<String> propose(String start) =>
      values.where((v) => v.startsWith(start)).toList();
  @override
  String toString() => values?.toString();

}

abstract class Value implements Node {
  SourceSpan span;
  // Move to Node?
  @override
  void accept(NodeVisitor visitor) {
    visitor.visitValue(this);
  }

  @override
  void visitChildren(NodeVisitor visitor) {
    // Default is a no-op.
  }

  void _resolve(YamlNode node) {
    span = node.span;
  }

}

class ValueSetting<V extends Value> extends Setting<V> implements Node {
  ValueSetting(String name, V value) : super(name, value);
  @override
  List<String> propose(String start) => value.propose(start);

  @override
  void visitChildren(NodeVisitor visitor) {
    visitor.visitValue(value);
  }

  @override
  void accept(NodeVisitor visitor) {
    visitor.visitValueSetting(this);
  }

  void _resolve(YamlNode node) {
    span = node.span;
  }
}