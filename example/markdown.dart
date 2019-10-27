import 'common.dart';

Future<void> main() async {
  await initViewSourceButton('markdown.dart');
  renderMarkdown(github, '*[markdown]');
}
