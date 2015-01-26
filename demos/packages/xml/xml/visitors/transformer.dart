part of xml;

/**
 * Transformer that creates an identical copy of the visited nodes.
 *
 * Subclass and override one or more of the methods to modify the generated copy.
 */
class XmlTransformer extends XmlVisitor {
  @override
  visitAttribute(XmlAttribute node) =>
      new XmlAttribute(visit(node.name), node.value);

  @override
  visitCDATA(XmlCDATA node) => new XmlCDATA(node.text);

  @override
  visitComment(XmlComment node) => new XmlComment(node.text);

  @override
  visitDoctype(XmlDoctype node) => new XmlDoctype(node.text);

  @override
  visitDocument(XmlDocument node) => new XmlDocument(visitAll(node.children));

  @override
  visitElement(XmlElement node) => new XmlElement(
      visit(node.name), visitAll(node.attributes), visitAll(node.children));

  @override
  visitName(XmlName name) => new XmlName.fromString(name.qualified);

  @override
  visitProcessing(XmlProcessing node) =>
      new XmlProcessing(node.target, node.text);

  @override
  visitText(XmlText node) => new XmlText(node.text);
}
