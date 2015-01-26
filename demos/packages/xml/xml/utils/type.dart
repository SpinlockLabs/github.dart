part of xml;

/**
 * Enum of the different XML Node types.
 */
class XmlNodeType {
  static const ELEMENT = const XmlNodeType._('ELEMENT');
  static const ATTRIBUTE = const XmlNodeType._('ATTRIBUTE');
  static const TEXT = const XmlNodeType._('TEXT');
  static const CDATA = const XmlNodeType._('CDATA');
  static const PROCESSING = const XmlNodeType._('PROCESSING');
  static const COMMENT = const XmlNodeType._('COMMENT');
  static const DOCUMENT = const XmlNodeType._('DOCUMENT');
  static const DOCUMENT_TYPE = const XmlNodeType._('DOCUMENT_TYPE');

  final String _type;

  const XmlNodeType._(this._type);

  @override
  String toString() => 'XmlNodeType.$_type';
}
