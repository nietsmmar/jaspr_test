// dart format off
// ignore_for_file: type=lint

// GENERATED FILE, DO NOT MODIFY
// Generated with jaspr_builder

import 'package:jaspr/server.dart';
import 'package:articlett_schule_webpage/components/counter.dart' as _counter;
import 'package:articlett_schule_webpage/components/header.dart' as _header;
import 'package:articlett_schule_webpage/pages/about.dart' as _about;
import 'package:articlett_schule_webpage/pages/home.dart' as _home;
import 'package:articlett_schule_webpage/pages/test.dart' as _test;
import 'package:articlett_schule_webpage/app.dart' as _app;

/// Default [ServerOptions] for use with your Jaspr project.
///
/// Use this to initialize Jaspr **before** calling [runApp].
///
/// Example:
/// ```dart
/// import 'main.server.options.dart';
///
/// void main() {
///   Jaspr.initializeApp(
///     options: defaultServerOptions,
///   );
///
///   runApp(...);
/// }
/// ```
ServerOptions get defaultServerOptions => ServerOptions(
  clientId: 'main.client.dart.js',
  clients: {
    _about.About: ClientTarget<_about.About>('about'),
    _home.Home: ClientTarget<_home.Home>('home'),
    _test.Test: ClientTarget<_test.Test>('test'),
  },
  styles: () => [
    ..._counter.CounterState.styles,
    ..._header.Header.styles,
    ..._about.About.styles,
    ..._app.App.styles,
  ],
);
