/// The base Hop library.
///
/// Includes the set of features required to create custom tasks.
library hop.core;

import 'dart:async';
import 'dart:collection';
import 'package:args/args.dart';
import 'package:bot/bot.dart' hide DisposedError;
import 'package:logging/logging.dart';

import 'package:hop/src/shared.dart';

part 'src/hop_core/run_result.dart';
part 'src/hop_core/task.dart';
part 'src/hop_core/task_argument.dart';
part 'src/hop_core/task_context.dart';
part 'src/hop_core/task_logger.dart';
part 'src/hop_core/_task_context.dart';
