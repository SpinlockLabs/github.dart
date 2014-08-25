part of xml;

/**
 * XML doctype node.
 */
class XmlDoctype extends XmlData {

  /**
   * Create a doctype section with `text`.
   */
  XmlDoctype(String text): super(text);

  @override
  XmlNodeType get nodeType => XmlNodeType.DOCUMENT_TYPE;

  @override
  void writeTo(StringBuffer buffer) {
    buffer.write('<!DOCTYPE ');
    buffer.write(text);
    buffer.write('>');
  }

  @override
  void writePrettyTo(StringBuffer buffer, int level, String indent) {
    _writeIndentTo(buffer, level, indent);
    writeTo(buffer);
  }

}
