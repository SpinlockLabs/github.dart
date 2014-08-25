part of xml;

/**
 * XML attribute node.
 */
class XmlAttribute extends XmlNode implements XmlNamed {

  @override
  final XmlName name;

  /**
   * Return the value of the attribute.
   */
  final String value;

  /**
   * Create an attribute with `name` and `value`.
   */
  XmlAttribute(this.name, this.value) {
    name._parent = this;
  }

  @override
  XmlNodeType get nodeType => XmlNodeType.ATTRIBUTE;

  @override
  void writeTo(StringBuffer buffer) {
    name.writeTo(buffer);
    buffer.write('="');
    buffer.write(_encodeXmlAttributeValue(value));
    buffer.write('"');
  }

}
