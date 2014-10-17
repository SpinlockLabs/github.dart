part of xml;

/**
 * XML grammar definition.
 */
class XmlGrammar extends CompositeParser {

  static const NAME_START_CHARS = ':A-Z_a-z\u00C0-\u00D6\u00D8-\u00F6\u00F8-\u02FF'
      '\u0370-\u037D\u037F-\u1FFF\u200C-\u200D\u2070-\u218F\u2C00-\u2FEF\u3001\uD7FF'
      '\uF900-\uFDCF\uFDF0-\uFFFD';
  static const NAME_CHARS = '-.0-9\u00B7\u0300-\u036F\u203F-\u2040$NAME_START_CHARS';

  static const DOUBLE_QUOTE = '"';
  static const SINGLE_QUOTE = "'";
  static const OPEN_COMMENT = '<!--';
  static const CLOSE_COMMENT = '-->';
  static const OPEN_CDATA = '<![CDATA[';
  static const CLOSE_CDATA = ']]>';
  static const OPEN_DOCTYPE = '<!DOCTYPE';
  static const CLOSE_DOCTYPE = '>';
  static const OPEN_PROCESSING = '<?';
  static const CLOSE_PROCESSING = '?>';

  @override
  void initialize() {
    def('start', ref('document').end());

    def('attribute', ref('qualified')
      .seq(ref('whitespace').optional())
      .seq(char('='))
      .seq(ref('whitespace').optional())
      .seq(ref('attributeValue'))
      .permute([0, 4]));
    def('attributeValue', ref('attributeValueDouble')
      .or(ref('attributeValueSingle'))
      .pick(1));
    def('attributeValueDouble', char(DOUBLE_QUOTE)
      .seq(any().starLazy(char(DOUBLE_QUOTE)).flatten().map(_decodeXml))
      .seq(char(DOUBLE_QUOTE)));
    def('attributeValueSingle', char(SINGLE_QUOTE)
      .seq(any().starLazy(char(SINGLE_QUOTE)).flatten().map(_decodeXml))
      .seq(char(SINGLE_QUOTE)));
    def('attributes', ref('whitespace')
      .seq(ref('attribute'))
      .pick(1)
      .star());
    def('comment', string(OPEN_COMMENT)
      .seq(any().starLazy(string(CLOSE_COMMENT)).flatten())
      .seq(string(CLOSE_COMMENT))
      .pick(1));
    def('cdata', string(OPEN_CDATA)
      .seq(any().starLazy(string(CLOSE_CDATA)).flatten())
      .seq(string(CLOSE_CDATA))
      .pick(1));
    def('content', ref('characterData')
      .or(ref('element'))
      .or(ref('processing'))
      .or(ref('comment'))
      .or(ref('cdata'))
      .star());
    def('doctype', string(OPEN_DOCTYPE)
      .seq(ref('whitespace'))
      .seq(ref('nameToken')
        .or(ref('attributeValue'))
        .or(char('[').neg().star()
          .seq(char('['))
          .seq(char(']').neg().star())
          .seq(char(']')))
        .separatedBy(ref('whitespace'))
        .flatten())
      .seq(ref('whitespace').optional())
      .seq(char(CLOSE_DOCTYPE))
      .pick(2));
    def('document', ref('processing').optional()
      .seq(ref('misc'))
      .seq(ref('doctype').optional())
      .seq(ref('misc'))
      .seq(ref('element'))
      .seq(ref('misc'))
      .permute([0, 2, 4])
      .map((list) => list.where((each) => each != null)));
    def('element', char('<')
      .seq(ref('qualified'))
      .seq(ref('attributes'))
      .seq(ref('whitespace').optional())
      .seq(string('/>')
        .or(char('>')
          .seq(ref('content'))
          .seq(string('</'))
          .seq(ref('qualified'))
          .seq(ref('whitespace').optional())
          .seq(char('>'))))
      .map((list) {
        if (list[4] == '/>') {
          return [list[1], list[2], []];
        } else {
          if (list[1] == list[4][3]) {
            return [list[1], list[2], list[4][1]];
          } else {
            throw new ArgumentError('Expected </${list[1]}>, but found </${list[4][3]}>');
          }
        }
      }));
    def('processing', string(OPEN_PROCESSING)
      .seq(ref('nameToken'))
      .seq(ref('whitespace')
        .seq(any().starLazy(string(CLOSE_PROCESSING)).flatten())
        .pick(1).optional(''))
      .seq(string(CLOSE_PROCESSING))
      .permute([1, 2]));
    def('qualified', ref('nameToken'));

    def('characterData', pattern('^<').plus().flatten().map(_decodeXml));
    def('misc', ref('whitespace')
      .or(ref('comment'))
      .or(ref('processing'))
      .star());
    def('whitespace', whitespace().plus());

    def('nameToken', ref('nameStartChar')
      .seq(ref('nameChar').star())
      .flatten());
    def('nameStartChar', pattern(NAME_START_CHARS, 'Expected name'));
    def('nameChar', pattern(NAME_CHARS));
  }

}
