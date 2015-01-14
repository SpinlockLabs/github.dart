part of github.markdown;

String heading(String text, {int level: 1}) {
  if (level < 1 || level > 6) {
    throw new RangeError.range(level, 1, 6);
  }
  return "${repeat("#", level)} ${text}";
}

String paragraph(String text) => "\n${text}\n";

String link(String name, String link) => "[${name}](${link})";

String bold(String text) => "**${text}**";

String italics(String text) => "*${text}*";

String strikethrough(String text) => "~~${text}~~";

String blockquote(String text) => "> ${text}";

String html(String code) => code;

String line() => "\n";

String rule() => "---";
