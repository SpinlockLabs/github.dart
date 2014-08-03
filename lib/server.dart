/**
 * HTTP Servers for Working with GitHub
 * 
 * Includes a Hook Server and will soon have a OAuth2 Redirection Server
 */
library github.server;

import "dart:async";
import "dart:io";
import "dart:convert";

part "src/server/hooks.dart";