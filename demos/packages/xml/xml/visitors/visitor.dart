part of xml;

/**
 * Abstract visitor over [XmlVisitable] nodes.
 */
abstract class XmlVisitor {

  /**
   * Helper to visit an [XmlVisitable] using this visitor by dispatching
   * through the provided [visitable].
   */
  visit(XmlVisitable visitable) => visitable.accept(this);

  /**
   * Helper to visit an [Iterable] of [XmlVisitable]s using this visitor
   * by dispatching through the provided [visitables].
   */
  visitAll(Iterable<XmlVisitable> visitables) => visitables.map(visit);

  /**
   * Visit an [XmlName].
   */
  visitName(XmlName name);

  /**
   * Visit an [XmlAttribute] node.
   */
  visitAttribute(XmlAttribute node);

  /**
   * Visit an [XmlDocument] node.
   */
  visitDocument(XmlDocument node);

  /**
   * Visit an [XmlElement] node.
   */
  visitElement(XmlElement node);

  /**
   * Visit an [XmlCDATA] node.
   */
  visitCDATA(XmlCDATA node);

  /**
   * Visit an [XmlComment] node.
   */
  visitComment(XmlComment node);

  /**
   * Visit an [XmlDoctype] node.
   */
  visitDoctype(XmlDoctype node);

  /**
   * Visit an [XmlProcessing] node.
   */
  visitProcessing(XmlProcessing node);

  /**
   * Visit an [XmlText] node.
   */
  visitText(XmlText node);
}
