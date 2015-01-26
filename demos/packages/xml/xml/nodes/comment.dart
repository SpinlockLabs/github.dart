part of xml;

/**
 * XML comment node.
 */
class XmlComment extends XmlData {

  /**
   * Create a comment section with `text`.
   */
  XmlComment(String text) : super(text);

  @override
  XmlNodeType get nodeType => XmlNodeType.COMMENT;

  @override
  accept(XmlVisitor visitor) => visitor.visitComment(this);
}
