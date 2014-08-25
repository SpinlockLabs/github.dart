part of xml;

/**
 * XML comment node.
 */
class XmlComment extends XmlData {

  /**
   * Create a comment section with `text`.
   */
  XmlComment(String text): super(text);

  @override
  XmlNodeType get nodeType => XmlNodeType.COMMENT;

  @override
  void writeTo(StringBuffer buffer) {
    buffer.write('<!--');
    buffer.write(text);
    buffer.write('-->');
  }

  @override
  void writePrettyTo(StringBuffer buffer, int level, String indent) {
    _writeIndentTo(buffer, level, indent);
    writeTo(buffer);
  }

}
