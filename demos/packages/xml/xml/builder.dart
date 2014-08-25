part of xml;

/**
 * A builder to programmatically create XML trees.
 */
class XmlBuilder {

  final List<_XmlNodeBuilder> _stack = new List.from([new _XmlDocumentBuilder()]);

  /**
   * Adds a [XmlText] node with the provided [text].
   *
   * For example, to generate the text _Hello World_ one would write:
   *
   *     builder.text('Hello World');
   *
   */
  void text(text) {
    var children = _stack.last.children;
    if (children.isNotEmpty && children.last is XmlText) {
      // merge consecutive text nodes into one
      var previous = children.removeLast();
      children.add(new XmlText(previous.text + text.toString()));
    } else {
      children.add(new XmlText(text.toString()));
    }
  }

  /**
   * Adds a [XmlCDATA] node with the provided [text].
   *
   * For example, to generate a CDATA element with the text _Hello World_
   * one would write:
   *
   *     builder.cdata('Hello World');
   *
   */
  void cdata(text) {
    _stack.last.children.add(new XmlCDATA(text.toString()));
  }

  /**
   * Adds a [XmlProcessing] node with the provided [target] and [text].
   *
   * For example, to generate a processing element with the _xml_ and the
   * attribute _version="1.0"_ one would write:
   *
   *     builder.processing('xml', 'version="1.0"');
   *
   */
  void processing(String target, text) {
    _stack.last.children.add(new XmlProcessing(target, text.toString()));
  }

  /**
   * Adds a [XmlComment] node with the provided [text].
   *
   * For example, to generate a comment with the text _Hello World_ one
   * would write:
   *
   *     builder.comment('Hello World');
   *
   */
  void comment(text) {
    _stack.last.children.add(new XmlComment(text.toString()));
  }

  /**
   * Adds a [XmlElement] node with the provided tag [name].
   *
   * If a [namespace] URI is provided, the prefix is looked up, verified and
   * combined with the given tag [name].
   *
   * If a map of [namespaces] is provided the uri-prefix pairs are added to the
   * element declaration, see also [XmlBuilder.namespace].
   *
   * If a map of [attributes] is provided the name-value pairs are added to the
   * element declaration, see also [XmlBuilder.attribute].
   *
   * Finally, [nest] is used to further customize the element and to add its
   * children. Typically this is a [Function] that defines elements using the
   * same builder object. For convenience `nest` can also be a string or another
   * common object that will be converted to a string and added as a text node.
   *
   * For example, to generate an element with the tag _message_ and the contained
   * text _Hello World_ one would write:
   *
   *     builder.element('message', nest: 'Hello World');
   *
   * To add multiple child elements one would use:
   *
   *     builder.element('message', nest: () {
   *       builder..text('Hello World')
   *              ..element('break');
   *     });
   *
   */
  void element(String name, {
      String namespace: null,
      Map<String, String> namespaces: const {},
      Map<String, String> attributes: const {},
      nest: null}) {
    var element = new _XmlElementBuilder();
    _stack.add(element);
    namespaces.forEach(this.namespace);
    attributes.forEach(this.attribute);
    if (nest != null) {
      _insert(nest);
    }
    element.name = _buildName(name, namespace);
    _stack.removeLast();
    _stack.last.children.add(element.build());
  }

  /**
   * Adds a [XmlAttribute] node with the provided [name] and [value].
   *
   * If a [namespace] URI is provided, the prefix is looked up, verified
   * and combined with the given attribute [name].
   *
   * To generate an element with the tag _message_ and the attribute _lang="en"_
   * one would write:
   *
   *     builder.element('message', nest: () {
   *        builder.attribute('lang', 'en');
   *     });
   *
   */
  void attribute(String name, value, {String namespace}) {
    _stack.last.attributes.add(new XmlAttribute(_buildName(name, namespace), value.toString()));
  }

  /**
   * Binds a namespace [prefix] to the provided [uri]. The [prefix] can be
   * omitted to declare a default namespace. Throws an [ArgumentError] if
   * the [prefix] is invalid or conflicts with an existing delcaration.
   */
  void namespace(String uri, [String prefix]) {
    if (prefix == _XMLNS || prefix == _XML) {
      throw new ArgumentError('The "$prefix" prefix cannot be bound.');
    }
    if (_stack.last.namespaces.containsValue(prefix)) {
      throw new ArgumentError('The "$prefix" prefix conflicts with existing binding.');
    }
    var name = prefix == null || prefix.isEmpty
        ? new XmlName(_XMLNS)
        : new XmlName(prefix, _XMLNS);
    _stack.last.attributes.add(new XmlAttribute(name, uri));
    _stack.last.namespaces[uri] = prefix;
  }

  /**
   * Returns the resulting [XmlNode].
   */
  XmlNode build() => _stack.last.build();

  // Internal method to build a name.
  XmlName _buildName(String name, String uri) {
    return uri == null || uri.isEmpty
        ? new XmlName.fromString(name)
        : new XmlName(name, _lookup(uri));
  }

  // Internal method to lookup an namespace prefix.
  String _lookup(String uri) {
    var builder = _stack.lastWhere(
      (builder) => builder.namespaces.containsKey(uri),
      orElse: () => throw new ArgumentError('Undefined namespace: $uri'));
    return builder.namespaces[uri];
  }

  // Internal method to add children to the current element.
  void _insert(Object value) {
    if (value is Function) {
      value();
    } else if (value is Iterable) {
      value.forEach(_insert);
    } else {
      text(value.toString());
    }
  }

}

abstract class _XmlNodeBuilder {
  Map<String, String> get namespaces;
  List<XmlAttribute> get attributes;
  List<XmlNode> get children;
  XmlNode build();
}

class _XmlDocumentBuilder extends _XmlNodeBuilder {

  @override
  final Map<String, String> namespaces = const { _XML_URI: _XML };

  @override
  List<XmlAttribute> get attributes {
    throw new ArgumentError('Unable to define attributes at the document level.');
  }

  @override
  final List<XmlNode> children = new List();

  @override
  XmlNode build() => new XmlDocument(children);

}

class _XmlElementBuilder extends _XmlNodeBuilder {

  @override
  final Map<String, String> namespaces = new Map();

  @override
  final List<XmlAttribute> attributes = new List();

  @override
  final List<XmlNode> children = new List();

  XmlName name;

  @override
  XmlNode build() => new XmlElement(name, attributes, children);

}
