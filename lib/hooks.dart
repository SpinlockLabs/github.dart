/// This entrypoint is here so that dartdoc will generate documentation for
/// files under lib/src/server. This is only necessary because conditional
/// import/export isn't well supported in the Dart ecosystem.
///
/// Add this import if you are in a non-web environment and writing something
/// that uses github hooks. For more information, see github hooks documentation
/// https://developer.github.com/v3/repos/hooks/
/// `import 'pacakge:github/hooks.dart';`
library hooks;

export 'src/server/xplat_server.dart';
