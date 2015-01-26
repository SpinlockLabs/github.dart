part of xml;

/**
 * XML doctype node.
 */
class XmlDoctype extends XmlData {

  /**
   * Create a doctype section with `text`.
   */
  XmlDoctype(String text) : super(text);

  @override
  XmlNodeType get nodeType => XmlNodeType.DOCUMENT_TYPE;

  @override
  accept(XmlVisitor visitor) => visitor.visitDoctype(this);
}
