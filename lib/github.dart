/// Do a conditional export of the right cross platform pieces depending on
/// if dart.html or dart.io is available.
export 'package:github/src/common/xplat_common.dart'
    if (dart.library.html) 'package:github/src/browser/xplat_browser.dart'
    if (dart.library.io) 'package:github/src/server/xplat_server.dart';

export 'package:github/src/common.dart';
