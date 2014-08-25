part of xml;

/**
 * Abstract XML node with actual children.
 */
abstract class XmlBranch extends XmlNode {

  @override
  final List<XmlNode> children;

  /**
   * Create a node with a list of `children`.
   */
  XmlBranch(Iterable<XmlNode> children): children = children.toList(growable: false) {
    for (var child in children) {
      child._parent = this;
    }
  }

  /**
   * Return the _direct_ child elements with the given tag `name`.
   */
  Iterable<XmlElement> findElements(String name, {String namespace}) {
    return _filterElements(children, name, namespace);
  }

  /**
   * Return the _recursive_ child elements with the specified tag `name`.
   */
  Iterable<XmlElement> findAllElements(String name, {String namespace}) {
    return _filterElements(descendants, name, namespace);
  }

  Iterable<XmlElement> _filterElements(Iterable<XmlNode> iterable, String name, String namespace) {
    var matcher = _createMatcher(name, namespace);
    return iterable
        .where((node) => node is XmlElement && matcher(node))
        .map((node) => node as XmlElement);
  }

  @override
  void writeTo(StringBuffer buffer) {
    for (var node in children) {
      node.writeTo(buffer);
    }
  }

  @override
  void writePrettyTo(StringBuffer buffer, int level, String indent) {
    for (var node in children) {
      node.writePrettyTo(buffer, level, indent);
    }
  }

}
